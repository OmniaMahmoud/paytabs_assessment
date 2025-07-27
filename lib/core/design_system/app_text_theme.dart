import 'package:flutter/material.dart';
import 'package:paytabs_assessment/core/design_system/app_color_scheme.dart';

import 'app_theme.dart';

extension AppTextTheme on AppTheme {
  TextTheme textTheme(
      double screenWith) {
    return TextTheme(
      titleLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: colorScheme.primary),
      bodyLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: colorScheme.primary),
      bodyMedium: TextStyle(fontSize: 14, color: colorScheme.primary),
      labelLarge: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.grey),
    );
  }
}
