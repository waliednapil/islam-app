import 'package:flutter/material.dart';

class MyThemeData {
  static Color lightPrimaryColor = Color(0xFFB7935F);
  static Color darkPrimaryColor = Color(0xFF141A2E);
  static bool isDarkSelected = true;

  static ThemeData lightTheme = ThemeData(
    dividerColor: lightPrimaryColor,
    primaryColor: lightPrimaryColor,
    textTheme: TextTheme(
        headlineLarge: TextStyle(
            fontSize: 25, fontWeight: FontWeight.w600, color: Colors.black),
        titleMedium: TextStyle(
            fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
        bodyMedium: TextStyle(
            fontSize: 20, fontWeight: FontWeight.normal, color: Colors.black)),
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(color: Colors.black),
      backgroundColor: Colors.transparent,
      centerTitle: true,
      elevation: 0,
    ),
    cardColor: lightPrimaryColor,
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      unselectedItemColor: Colors.white,
      selectedItemColor: Colors.black,
    ),
  );

  static ThemeData darkTheme = ThemeData(
    dividerColor: Colors.yellow,
    primaryColor: darkPrimaryColor,
    cardColor: darkPrimaryColor,
    textTheme: TextTheme(
        headlineLarge: TextStyle(
            fontSize: 25, fontWeight: FontWeight.w600, color: Colors.white),
        titleMedium: TextStyle(
            fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
        bodyMedium: TextStyle(
            fontSize: 20, fontWeight: FontWeight.normal, color: Colors.yellow)),
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(color: Colors.white),
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
    ),
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.yellow,
        selectedIconTheme: IconThemeData(size: 45)),
  );
}
