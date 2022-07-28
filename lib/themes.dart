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
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.lightGreen,
        elevation: 0.0,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.grey,
          selectedItemColor: Colors.lightGreen,
          selectedLabelStyle: TextStyle(color: Colors.lightGreen),
          showUnselectedLabels: true,
          unselectedItemColor: Colors.black26,
          unselectedLabelStyle: TextStyle(color: Colors.black26)),
      scaffoldBackgroundColor: Colors.lightGreen,
    );
  }

  static get darkTheme {
    return ThemeData(
      primaryColor: Colors.black,
      backgroundColor: Colors.grey,
      appBarTheme: AppBarTheme(backgroundColor: Colors.black),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.black,
          selectedItemColor: Colors.lightGreen,
          showUnselectedLabels: true,
          selectedLabelStyle: TextStyle(color: Colors.lightGreen),
          unselectedItemColor: Colors.grey,
          unselectedLabelStyle: TextStyle(color: Colors.grey)),
      scaffoldBackgroundColor: Colors.grey,
    );
  }
}
