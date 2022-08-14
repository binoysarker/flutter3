import 'dart:async';

import 'package:ecommerce_app/controllers/bottomNavigationController.dart';
import 'package:ecommerce_app/controllers/collectionsController.dart';
import 'package:ecommerce_app/controllers/homePageController.dart';
import 'package:ecommerce_app/controllers/loginPageController.dart';
import 'package:ecommerce_app/controllers/orderController.dart';
import 'package:ecommerce_app/controllers/userController.dart';
import 'package:ecommerce_app/controllers/utilityController.dart';
import 'package:ecommerce_app/routes/allRoutes.dart';
import 'package:ecommerce_app/services/graphql_service.dart';
import 'package:ecommerce_app/themes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

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
    GraphqlService graphqlService = GraphqlService();
    return GraphQLProvider(
      client: graphqlService.client,
      child: GetMaterialApp(
        title: 'Ecommerce App',
        debugShowCheckedModeBanner: false,
        navigatorKey: _navigatorKey,
        theme: CustomTheme.lightTheme,
        darkTheme: CustomTheme.darkTheme,
        themeMode: currentTheme.currentThemeMode,
        initialRoute: '/login',
        getPages: RoutesClass.routes,
      ),
    );
  }
}
