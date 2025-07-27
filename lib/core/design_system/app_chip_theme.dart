import 'package:flutter/material.dart';
import 'package:paytabs_assessment/core/design_system/app_color_scheme.dart';
import 'app_theme.dart';

extension AppChipTheme on AppTheme {
  ChipThemeData chipTheme(
      double screenWith) {
    return ChipThemeData(
      backgroundColor: Colors.white,
      selectedColor: colorScheme.primary,
      labelStyle: const TextStyle(color: Colors.black),
      secondaryLabelStyle: const TextStyle(color: Colors.white),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
    );
  }
}
