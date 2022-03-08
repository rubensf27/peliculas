import 'package:flutter/material.dart';

class AppTheme {
  static const Color colorPrimary = Color.fromRGBO(100, 190, 35, 1);

  static ThemeData light() {
    return ThemeData.light().copyWith(
      appBarTheme: const AppBarTheme(
        backgroundColor: colorPrimary,
      ),
    );
  }
}
