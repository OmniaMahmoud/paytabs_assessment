import 'package:flutter/material.dart';
import 'package:paytabs_assessment/core/design_system/app_color_scheme.dart';

import 'app_theme.dart';

extension AppAppbarTheme on AppTheme {
  AppBarTheme appbarTheme(
      double screenWith) {
    return AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      iconTheme: IconThemeData(color: colorScheme.primary),
      titleTextStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: colorScheme.primary),
    );
  }
}
