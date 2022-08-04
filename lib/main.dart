import 'dart:async';

import 'package:ecommerce_app/providers/bottomNavigationProvider.dart';
import 'package:ecommerce_app/providers/loginPageProvider.dart';
import 'package:ecommerce_app/providers/tokenPageProvider.dart';
import 'package:ecommerce_app/providers/utilityProvider.dart';
import 'package:ecommerce_app/routes/routeDefinations.dart';
import 'package:ecommerce_app/services/commonVariables.dart';
import 'package:ecommerce_app/services/graphql_service.dart';
import 'package:ecommerce_app/themes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:provider/provider.dart';

import 'firebase_options.dart';

late GraphQlService graphQlService;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  graphQlService = GraphQlService();
  await graphQlService.initializeGraphQl();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<BottomNavigationProvider>(
            create: (_) => BottomNavigationProvider()),
        ChangeNotifierProvider<UtilityProvider>(
            create: (_) => UtilityProvider()),
        ChangeNotifierProxyProvider<UtilityProvider, LoginPageProvider>(
            create: (_) => LoginPageProvider(null),
            update: (_, utilityProvider, __) =>
                LoginPageProvider(utilityProvider)),
        ChangeNotifierProxyProvider<UtilityProvider, TokenPageProvider>(
            create: (_) => TokenPageProvider(null),
            update: (_, utilityProvider, __) =>
                TokenPageProvider(utilityProvider)),
      ],
      child: MyApp(),
    ),
  );
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
    return GraphQLProvider(
      client: graphQlService.client,
      child: MaterialApp(
        title: 'Ecommerce App',
        debugShowCheckedModeBanner: false,
        navigatorKey: _navigatorKey,
        theme: CustomTheme.lightTheme,
        darkTheme: CustomTheme.darkTheme,
        themeMode: currentTheme.currentThemeMode,
        initialRoute: '/${PageRouteNames.home.name}',
        onGenerateRoute: (settings) {
          return generatedRoute(settings);
        },
      ),
    );
  }
}
