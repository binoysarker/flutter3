import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

CustomTheme currentTheme = CustomTheme();

class CustomTheme with ChangeNotifier {
  static bool _isDarkTheme = false;

  static TextStyle paragraphStyle = GoogleFonts.raleway(
    fontWeight: FontWeight.normal
  );
  static TextStyle headerStyle = GoogleFonts.raleway(
      fontWeight: FontWeight.bold,
      fontSize: 15
  );
  static TextStyle headerStyle4 = GoogleFonts.raleway(
      fontWeight: FontWeight.bold,
      fontSize: 15,
      color: Colors.red
  );
  static TextStyle headerStyle3 = GoogleFonts.raleway(
      fontWeight: FontWeight.bold,
      fontSize: 18
  );
  static TextStyle headerStyle2 = GoogleFonts.raleway(
      fontWeight: FontWeight.bold,
      fontSize: 18,
      color: Colors.white
  );
  static Color progressIndicatorColor = Colors.lightGreenAccent;

  ThemeMode get currentThemeMode =>
      _isDarkTheme ? ThemeMode.dark : ThemeMode.light;

  void toggleTheme() {
    _isDarkTheme = !_isDarkTheme;
    notifyListeners();
  }


  static get lightTheme {
    return ThemeData(
      primaryColor: Colors.green,
      textTheme: GoogleFonts.ralewayTextTheme(),
      buttonTheme: ButtonThemeData(buttonColor: Colors.lightGreen),
      colorScheme: ColorScheme.light(primary: Colors.lightGreen),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.green[200]),
          )
      ),
      backgroundColor: Colors.lightGreen,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.lightGreen,
        elevation: 0.0,
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: Colors.green[200]
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.white,
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
      textTheme: GoogleFonts.ralewayTextTheme(),
      buttonTheme: ButtonThemeData(buttonColor: Colors.lightGreen),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.green[200])
        )
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.green[200]
      ),
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
