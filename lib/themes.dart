import 'package:flutter/material.dart';

CustomTheme currentTheme = CustomTheme();

class CustomTheme with ChangeNotifier {
  static bool _isDarkTheme = false;

  ThemeMode get currentThemeMode =>
      _isDarkTheme ? ThemeMode.dark : ThemeMode.light;

  void toggleTheme() {
    _isDarkTheme = !_isDarkTheme;
    notifyListeners();
  }

  static get lightTheme {
    return ThemeData(
        primaryColor: Colors.green,
        backgroundColor: Colors.lightGreen,
        appBarTheme: AppBarTheme(backgroundColor: Colors.green),
        scaffoldBackgroundColor: Colors.lightGreen,
        textTheme: TextTheme(
          headline1: TextStyle(color: Colors.black),
          headline2: TextStyle(color: Colors.black),
          bodyText1: TextStyle(color: Colors.black),
          bodyText2: TextStyle(color: Colors.black),
        ));
  }

  static get darkTheme {
    return ThemeData(
        primaryColor: Colors.black,
        backgroundColor: Colors.grey,
        appBarTheme: AppBarTheme(backgroundColor: Colors.black),
        scaffoldBackgroundColor: Colors.grey,
        textTheme: TextTheme(
          headline1: TextStyle(color: Colors.white),
          headline2: TextStyle(color: Colors.white),
          bodyText1: TextStyle(color: Colors.white),
          bodyText2: TextStyle(color: Colors.white),
        ));
  }
}
