import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:localstorage/localstorage.dart';
import 'package:recipe.app/controllers/bottomNavigationController.dart';
import 'package:recipe.app/controllers/cartController.dart';
import 'package:recipe.app/controllers/collectionsController.dart';
import 'package:recipe.app/controllers/homePageController.dart';
import 'package:recipe.app/controllers/loginPageController.dart';
import 'package:recipe.app/controllers/orderController.dart';
import 'package:recipe.app/controllers/userController.dart';
import 'package:recipe.app/controllers/utilityController.dart';
import 'package:recipe.app/pages/login_page.dart';
import 'package:recipe.app/pages/store_page.dart';
import 'package:recipe.app/routes/allRoutes.dart';
import 'package:recipe.app/services/commonVariables.dart';
import 'package:recipe.app/services/graphql_service.dart';
import 'package:recipe.app/themes.dart';

import 'controllers/productsController.dart';
import 'controllers/tokenPageController.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
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
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  late StreamSubscription<User?> _subscription;
  UserController userController = Get.find<UserController>();
  final _navigatorKey = new GlobalKey<NavigatorState>();

  @override
  void initState() {
    super.initState();

    currentTheme.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final LocalStorage storage =
        new LocalStorage(LocalStorageStrings.auth_token.name);
    GraphqlService graphqlService = GraphqlService();
    return GraphQLProvider(
      client: graphqlService.client,
      child: GetMaterialApp(
        title: dotenv.env['App_Name'].toString(),
        debugShowCheckedModeBanner: false,
        navigatorKey: _navigatorKey,
        theme: CustomTheme.lightTheme,
        darkTheme: CustomTheme.darkTheme,
        themeMode: currentTheme.currentThemeMode,
        getPages: RoutesClass.routes,
        home: FutureBuilder(
            future: storage.ready,
            builder: (BuildContext context, snapshot) {
              if (snapshot.hasData) {
                final authToken =
                    storage.getItem(LocalStorageStrings.auth_token.name);
                print('auth token $authToken');
                if (authToken == null) {
                  return LoginPage();
                } else {
                  GraphqlService.currentAuthToken = authToken;
                  // GraphqlService.setToken(authToken);
                  return StorePage();
                }
              } else {
                return LoginPage();
              }
            }),
      ),
    );
  }
}
