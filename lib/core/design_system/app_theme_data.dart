import 'package:flutter/material.dart';
import 'package:paytabs_assessment/core/design_system/app_appbar_theme.dart';
import 'package:paytabs_assessment/core/design_system/app_card_theme.dart';
import 'package:paytabs_assessment/core/design_system/app_chip_theme.dart';
import 'package:paytabs_assessment/core/design_system/app_color_scheme.dart';
import 'package:paytabs_assessment/core/design_system/app_input_decoration_theme.dart';
import 'package:paytabs_assessment/core/design_system/app_text_theme.dart';
import 'package:paytabs_assessment/gen/fonts.gen.dart';
import 'app_theme.dart';

extension AppThemeData on AppTheme {
  ThemeData themeData(
    double screenWidth) {
    return ThemeData(
      useMaterial3: true,
      fontFamily: FontFamily.lato,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: colorScheme.surface,
      inputDecorationTheme: inputDecorationTheme(screenWidth),
      textTheme: textTheme(screenWidth),
      appBarTheme: appbarTheme(screenWidth),
      chipTheme: chipTheme(screenWidth),
      cardTheme: cardTheme(screenWidth)
    );
  }

  T responsiveValue<T>(
      {required double screenWidth,
      required T mobile,
      required T tablet,
      required T desktop}) {
    if (screenWidth >= 0 && screenWidth < 600) {
      return mobile;
    } else if (screenWidth >= 600 && screenWidth < 1440) {
      return tablet;
    } else {
      return desktop;
    }
  }
}
