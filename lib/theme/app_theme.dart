import 'package:flutter/material.dart';

class AppTheme {
  // Light Theme Colors
  static const Color lightPrimaryColor = Color(0xFF2196F3);
  static const Color lightScaffoldBackgroundColor = Color(0xFFFFFFFF);
  static const Color lightCardColor = Color(0xFFF5F5F5);
  static const Color lightTextColor = Color(0xFF212121);
  static const Color lightSubtextColor = Color(0xFF757575);
  static const Color lightDividerColor = Color(0xFFBDBDBD);

  // Dark Theme Colors
  static const Color darkPrimaryColor = Color(0xFF64B5F6);
  static const Color darkScaffoldBackgroundColor = Color(0xFF121212);
  static const Color darkCardColor = Color(0xFF1E1E1E);
  static const Color darkTextColor = Color(0xFFFFFFFF);
  static const Color darkSubtextColor = Color(0xFFB0B0B0);
  static const Color darkDividerColor = Color(0xFF424242);

  // Light Theme
  static ThemeData lightTheme = ThemeData(
    useMaterial3: false,
    brightness: Brightness.light,
    primaryColor: lightPrimaryColor,
    primarySwatch: Colors.blue,
    scaffoldBackgroundColor: lightScaffoldBackgroundColor,
    cardColor: lightCardColor,
    shadowColor: Colors.black.withValues(alpha: 0.1),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: lightTextColor),
      bodyMedium: TextStyle(color: lightTextColor),
      bodySmall: TextStyle(color: lightSubtextColor),
      titleLarge: TextStyle(
        color: lightTextColor,
        fontWeight: FontWeight.bold,
      ),
      labelLarge: TextStyle(color: lightTextColor),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: lightScaffoldBackgroundColor,
      elevation: 0,
      iconTheme: IconThemeData(color: lightTextColor),
      titleTextStyle: TextStyle(
        color: lightTextColor,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: lightPrimaryColor,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      ),
    ),
    cardTheme: CardThemeData(
      color: lightCardColor,
      elevation: 2,
      shadowColor: Colors.black.withValues(alpha: 0.1),
    ),
    dividerColor: lightDividerColor,
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: lightCardColor,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: lightDividerColor),
      ),
    ),
  );

  // Dark Theme
  static ThemeData darkTheme = ThemeData(
    useMaterial3: false,
    brightness: Brightness.dark,
    primaryColor: darkPrimaryColor,
    primarySwatch: Colors.blue,
    scaffoldBackgroundColor: darkScaffoldBackgroundColor,
    cardColor: darkCardColor,
    shadowColor: Colors.black.withValues(alpha: 0.5),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: darkTextColor),
      bodyMedium: TextStyle(color: darkTextColor),
      bodySmall: TextStyle(color: darkSubtextColor),
      titleLarge: TextStyle(
        color: darkTextColor,
        fontWeight: FontWeight.bold,
      ),
      labelLarge: TextStyle(color: darkTextColor),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: darkCardColor,
      elevation: 0,
      iconTheme: IconThemeData(color: darkTextColor),
      titleTextStyle: TextStyle(
        color: darkTextColor,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: darkPrimaryColor,
        foregroundColor: darkScaffoldBackgroundColor,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      ),
    ),
    cardTheme: CardThemeData(
      color: darkCardColor,
      elevation: 2,
      shadowColor: Colors.black.withValues(alpha: 0.5),
    ),
    dividerColor: darkDividerColor,
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: darkCardColor,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: darkDividerColor),
      ),
    ),
  );
}
