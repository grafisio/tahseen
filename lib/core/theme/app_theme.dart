import 'package:flutter/material.dart';

class AppTheme {
  const AppTheme();

  ThemeData light() {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
      useMaterial3: true,
      fontFamily: 'SF Pro',
    );
  }
}


