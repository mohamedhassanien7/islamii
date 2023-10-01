import 'package:flutter/material.dart';

class MyThemeData {
  // static bool isDarkEnabled = false;
  static const Color lightPrimary = Color(0xFFB7935F);
  static const Color darkPrimary = Color(0xFF141A2E);
  static const Color darksecondry = Color(0xFFFACC1D);

  static ThemeData lightTheme = ThemeData(
      textTheme: const TextTheme(
          headlineSmall: TextStyle(
              fontSize: 25, fontWeight: FontWeight.w600, color: Colors.black),
          titleMedium: TextStyle(
              fontSize: 25, fontWeight: FontWeight.w400, color: Colors.black),
          bodyMedium: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w400, color: Colors.black)),
      cardTheme: CardTheme(
          surfaceTintColor: Colors.white,
          // color: Colors.white,
          elevation: 18,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(18))),
      appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.transparent,
          centerTitle: true,
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 32,
            fontWeight: FontWeight.bold,
          )),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,
          selectedIconTheme: IconThemeData(
            size: 32,
          )),
      scaffoldBackgroundColor: Colors.transparent,
      colorScheme: ColorScheme.fromSeed(
        seedColor: Color(0xFFB7935F),
        primary: Color(0xFFB7935F),
        secondary: Color(0xFFB7935F),
        onPrimary: Colors.white,
        onSecondary: Colors.black,
        background: Colors.white,
      ),
      useMaterial3: true,
      dividerColor: lightPrimary,
      bottomSheetTheme:
          const BottomSheetThemeData(backgroundColor: Colors.white));
  static ThemeData darkTheme = ThemeData(
      textTheme: const TextTheme(
          headlineSmall: TextStyle(
              fontSize: 25, fontWeight: FontWeight.w600, color: Colors.white),
          titleMedium: TextStyle(
              fontSize: 25, fontWeight: FontWeight.w400, color: Colors.white),
          bodyMedium: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w400, color: Colors.white)),
      cardTheme: CardTheme(
          surfaceTintColor: Colors.transparent,
          color: darkPrimary,
          elevation: 18,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(18))),
      appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Colors.transparent,
          centerTitle: true,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.bold,
          )),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: darksecondry,
          unselectedItemColor: Colors.white,
          selectedIconTheme: IconThemeData(
            size: 32,
          )),
      scaffoldBackgroundColor: Colors.transparent,
      colorScheme: ColorScheme.fromSeed(
          seedColor: darkPrimary,
          primary: darkPrimary,
          secondary: darksecondry,
          onPrimary: Colors.white,
          onSecondary: Colors.white,
          background: darkPrimary),
      useMaterial3: true,
      dividerColor: darksecondry,
      bottomSheetTheme:
          const BottomSheetThemeData(backgroundColor: darkPrimary));
}
