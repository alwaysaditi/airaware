import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color(0xFF00695C);
  static const Color secondary = Color(0xFF26A69A);
  static const Color background = Color(0xFFF1F8E9);
  static const Color cardBackground = Color(0xFFFFFFFF);
  static const Color danger = Color(0xFFE53935);
  static const Color good = Color(0xFF43A047);
  static const Color moderate = Color(0xFFFFA000);

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: primary,
    scaffoldBackgroundColor: background,
    cardColor: cardBackground,
    textTheme: const TextTheme(
      headlineMedium: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      bodyLarge: TextStyle(fontSize: 18),
    ),
    fontFamily: 'Roboto',
  );
}
