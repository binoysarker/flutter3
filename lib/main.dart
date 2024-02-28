import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:in_app_update/in_app_update.dart';
import 'package:recipe.app/api/firebase_api.dart';
import 'package:recipe.app/controllers/bottomNavigationController.dart';
import 'package:recipe.app/controllers/cartController.dart';
import 'package:recipe.app/controllers/collectionsController.dart';
import 'package:recipe.app/controllers/homePageController.dart';
import 'package:recipe.app/controllers/loginPageController.dart';
import 'package:recipe.app/controllers/orderController.dart';
import 'package:recipe.app/controllers/userController.dart';
import 'package:recipe.app/controllers/utilityController.dart';
import 'package:recipe.app/pages/login_page.dart';
import 'package:recipe.app/routes/allRoutes.dart';
import 'package:recipe.app/services/commonVariables.dart';
import 'package:recipe.app/services/graphql_service.dart';
import 'package:recipe.app/themes.dart';

import 'allGlobalKeys.dart';
import 'controllers/productsController.dart';
import 'controllers/tokenPageController.dart';
import 'firebase_options.dart';

bool shouldUseFirestoreEmulator = false;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await dotenv.load(fileName: ".env");

  
  Get.put(UtilityController());
  Get.put(UserController());
  Get.put(BottomNavigationController());
  Get.put(HomePageController());
  Get.put(OrderController());
  Get.put(LoginPageController());
  Get.put(TokenPageController());
  Get.put(CollectionsController());
  Get.put(ProductsController());
  Get.put(CartController());

  await Firebase.initializeApp(
      name: 'kaaikani App', options: DefaultFirebaseOptions.currentPlatform);
  await FirebaseApi().initNotification();
  if (shouldUseFirestoreEmulator) {
    FirebaseFirestore.instance.useFirestoreEmulator('localhost', 8080);
  }
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  UserController userController = Get.find<UserController>();
  LoginPageController loginPageController = Get.find<LoginPageController>();
  final _navigatorKey = GlobalKey<NavigatorState>();
  AppUpdateInfo? _updateInfo;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  // bool _flexibleUpdateAvailable = false;

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> checkForUpdate() async {
    InAppUpdate.checkForUpdate().then((info) {
      setState(() {
        _updateInfo = info;
      });
      if(_updateInfo?.updateAvailability == UpdateAvailability.updateAvailable){
        InAppUpdate.startFlexibleUpdate().then((_) {
          setState(() {
            // _flexibleUpdateAvailable = true;
          });
        }).catchError((e) {
          showSnack(e.toString());
        });
      }

    }).catchError((e) {
      showSnack(e.toString());
    });
  }

  void showSnack(String text) {
    if (_scaffoldKey.currentContext != null) {
      ScaffoldMessenger.of(_scaffoldKey.currentContext!)
          .showSnackBar(SnackBar(content: Text(text)));
    }
  }

  @override
  void initState() {
    super.initState();

    currentTheme.addListener(() {
      setState(() {});
    });
    checkForUpdate();
  }

  @override
  Widget build(BuildContext context) {
    GraphqlService graphqlService = GraphqlService();
    return GraphQLProvider(
      client: graphqlService.client,
      child: GetMaterialApp(
        title: dotenv.env['APP_NAME'].toString(),
        debugShowCheckedModeBanner: false,
        navigatorKey: _navigatorKey,
        theme: CustomTheme.lightTheme,
        darkTheme: CustomTheme.darkTheme,
        themeMode: currentTheme.currentThemeMode,
        getPages: RoutesClass.routes,
        home: FutureBuilder(
            future: authTokenStorage.ready,
            builder: (BuildContext context, snapshot) {
              // print('snapshot $snapshot');
              if (snapshot.hasData) {
                var authToken = authTokenStorage
                    .getItem(LocalStorageStrings.auth_token.name);
                print('token $authToken');
                if (authToken == null) {
                  return LoginPage();
                } else {
                  GraphqlService.currentAuthToken = authToken;
                  return LoginPage();
                }
              } else {
                return LoginPage();
              }
            }),
      ),
    );
  }
}
