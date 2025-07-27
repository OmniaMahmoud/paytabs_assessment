import 'package:flutter/material.dart';
import 'package:paytabs_assessment/core/design_system/app_color_scheme.dart';

import 'app_theme.dart';

extension AppCardTheme on AppTheme {
  CardThemeData cardTheme(
      double screenWith) {
    return CardThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 4,
      color: Colors.white,
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
    );
  }
}
