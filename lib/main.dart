import 'dart:async';

import 'package:ecommerce_app/pages/login_page.dart';
import 'package:ecommerce_app/pages/my_account_page.dart';
import 'package:ecommerce_app/pages/orders_page.dart';
import 'package:ecommerce_app/pages/page_not_found.dart';
import 'package:ecommerce_app/pages/rewards_page.dart';
import 'package:ecommerce_app/pages/store_page.dart';
import 'package:ecommerce_app/services/commonVariables.dart';
import 'package:ecommerce_app/services/graphql_service.dart';
import 'package:ecommerce_app/themes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import 'firebase_options.dart';

late GraphQlService graphQlService;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  graphQlService = GraphQlService();
  graphQlService.client = await graphQlService.initializeGraphqlService();
  runApp(const MyApp());
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

    _subscription = FirebaseAuth.instance.userChanges().listen((event) {
      _navigatorKey.currentState!.pushReplacementNamed(
        event != null ? 'home' : 'login',
      );
    });
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
    return GraphQLProvider(
      client: graphQlService.client,
      child: MaterialApp(
        title: 'Ecommerce App',
        debugShowCheckedModeBanner: false,
        navigatorKey: _navigatorKey,
        theme: CustomTheme.lightTheme,
        darkTheme: CustomTheme.darkTheme,
        themeMode: currentTheme.currentThemeMode,
        initialRoute: FirebaseAuth.instance.currentUser == null
            ? '/${PageRouteNames.login.name}'
            : '/${PageRouteNames.home.name}',
        onGenerateRoute: (settings) {
          print('settings name ${settings.name}');

          switch (settings.name) {
            case '/':
              return MaterialPageRoute(
                settings: settings,
                builder: (context) => StorePage(),
              );
            case '/home':
              return MaterialPageRoute(
                settings: settings,
                builder: (context) => StorePage(),
              );
            case 'home':
              return MaterialPageRoute(
                settings: settings,
                builder: (context) => StorePage(),
              );
            case '/orders':
              return MaterialPageRoute(
                settings: settings,
                builder: (context) => OrdersPage(),
              );
            case '/rewards':
              return MaterialPageRoute(
                settings: settings,
                builder: (context) => RewardsPage(),
              );
            case '/my-account':
              return MaterialPageRoute(
                settings: settings,
                builder: (context) => MyAccountPage(),
              );
            case '/login':
              return MaterialPageRoute(
                  settings: settings, builder: (context) => LoginPage());
            default:
              return MaterialPageRoute(
                  settings: settings, builder: (context) => PageNotFound());
          }
        },
      ),
    );
  }
}
