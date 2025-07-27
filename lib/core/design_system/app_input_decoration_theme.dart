import 'package:flutter/material.dart';

import 'app_theme.dart';

extension AppInputDecorationTheme on AppTheme {
  InputDecorationTheme inputDecorationTheme(
      double screenWith) {
    return InputDecorationTheme(
      filled: true,
      fillColor: Colors.white,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none,
      ),
      prefixIconColor: Colors.grey,
      hintStyle: const TextStyle(color: Colors.grey),
    );
  }
}
