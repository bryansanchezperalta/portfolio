import 'package:flutter/material.dart';
import 'package:portfolio/theme/app_colors.dart';

class AppTheme {
  // Colors are defined in AppColors

  // Light Theme
  static ThemeData lightTheme = ThemeData(
    useMaterial3: false,
    brightness: Brightness.light,
    primaryColor: AppColors.primaryLight,
    primarySwatch: Colors.blue,
    scaffoldBackgroundColor: AppColors.scaffoldLight,
    cardColor: AppColors.cardLight,
    shadowColor: Colors.black.withValues(alpha: 0.1),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: AppColors.textLight),
      bodyMedium: TextStyle(color: AppColors.textLight),
      bodySmall: TextStyle(color: AppColors.subtextLight),
      titleLarge: TextStyle(
        color: AppColors.textLight,
        fontWeight: FontWeight.bold,
      ),
      labelLarge: TextStyle(color: AppColors.textLight),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.scaffoldLight,
      elevation: 0,
      iconTheme: IconThemeData(color: AppColors.textLight),
      titleTextStyle: TextStyle(
        color: AppColors.textLight,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryLight,
        foregroundColor: AppColors.onPrimaryLight,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      ),
    ),
    cardTheme: CardThemeData(
      color: AppColors.cardLight,
      elevation: 2,
      shadowColor: Colors.black.withValues(alpha: 0.1),
    ),
    dividerColor: AppColors.dividerLight,
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.cardLight,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: AppColors.dividerLight),
      ),
    ),
  );

  // Dark Theme
  static ThemeData darkTheme = ThemeData(
    useMaterial3: false,
    brightness: Brightness.dark,
    primaryColor: AppColors.primaryDark,
    primarySwatch: Colors.blue,
    scaffoldBackgroundColor: AppColors.scaffoldDark,
    cardColor: AppColors.cardDark,
    shadowColor: Colors.black.withValues(alpha: 0.5),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: AppColors.textDark),
      bodyMedium: TextStyle(color: AppColors.textDark),
      bodySmall: TextStyle(color: AppColors.subtextDark),
      titleLarge: TextStyle(
        color: AppColors.textDark,
        fontWeight: FontWeight.bold,
      ),
      labelLarge: TextStyle(color: AppColors.textDark),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.cardDark,
      elevation: 0,
      iconTheme: IconThemeData(color: AppColors.textDark),
      titleTextStyle: TextStyle(
        color: AppColors.textDark,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryDark,
        foregroundColor: AppColors.onPrimaryDark,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      ),
    ),
    cardTheme: CardThemeData(
      color: AppColors.cardDark,
      elevation: 2,
      shadowColor: Colors.black.withValues(alpha: 0.5),
    ),
    dividerColor: AppColors.dividerDark,
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.cardDark,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: AppColors.dividerDark),
      ),
    ),
  );
}
