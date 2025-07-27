import 'package:flutter/material.dart';

import 'app_theme.dart';

extension AppColorScheme on AppTheme {

  ColorScheme get colorScheme {
    switch(this){
      case AppTheme.light:
        return _lightColorScheme;
      case AppTheme.dark:
        return _darkColorScheme;
    }
  }

  ColorScheme get _lightColorScheme => const ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xFF1C1C1E), // deep text/icon color
    onPrimary: Colors.white,
    secondary: Color(0xFFC8A96A), // gold for discount badge
    onSecondary: Colors.white,
    surface: Color(0xFFFAF6F2),
    onSurface: Color(0xFF1C1C1E),
    error: Colors.red,
    onError: Colors.white,
  );

  ColorScheme get _darkColorScheme => const ColorScheme(
    brightness: Brightness.dark,
    primary: Color(0xFFE5E5E5), // light text/icons on dark bg
    onPrimary: Colors.black,
    secondary: Color(0xFFC8A96A), // gold accent for highlights
    onSecondary: Colors.black,
    surface: Color(0xFF121212),
    onSurface: Color(0xFFE5E5E5),
    error: Colors.redAccent,
    onError: Colors.black,
  );

}