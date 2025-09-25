
import 'package:flutter/material.dart';

class AppTheme {
  static final darkTheme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: const Color(0xFF0B1220),
    cardColor: const Color(0xFF0F1724),
    primaryColor: const Color(0xFF0EA5E9),
    colorScheme: const ColorScheme.dark(
      primary: Color(0xFF0EA5E9),
      secondary: Color(0xFF60A5FA),
    ),
    textTheme: ThemeData.dark().textTheme.apply(
          bodyColor: Colors.white70,
          displayColor: Colors.white,
        ),
  );
}