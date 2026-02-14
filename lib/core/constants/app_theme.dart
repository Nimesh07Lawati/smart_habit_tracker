import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,

      colorScheme: ColorScheme.light(
        primary: AppColors.primary,
        secondary: AppColors.primaryLight,
        surface: AppColors.surface,
        error: AppColors.error,
      ),

      scaffoldBackgroundColor: AppColors.background,

      appBarTheme: const AppBarTheme(
        elevation: 0,
        centerTitle: true,
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
      ),

      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
      ),

      checkboxTheme: CheckboxThemeData(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        fillColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return AppColors.primary;
          }
          return Colors.grey;
        }),
      ),

      cardTheme: CardThemeData(
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        color: AppColors.surface,
      ),

      textTheme: const TextTheme(
        titleLarge: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: AppColors.textPrimary,
        ),
        bodyLarge: TextStyle(fontSize: 16, color: AppColors.textPrimary),
        bodyMedium: TextStyle(fontSize: 14, color: AppColors.textSecondary),
      ),
    );
  }
}
