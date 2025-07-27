import 'package:flutter/material.dart';
import 'package:paytabs_assessment/core/design_system/app_theme_data.dart';

import 'core/design_system/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    var lightTheme = AppTheme.light.themeData(screenWidth);
    var darkTheme = AppTheme.dark.themeData(screenWidth);

    return MaterialApp(
      title: 'Beauty Store',
      theme: lightTheme,
      themeMode: ThemeMode.light,
      home: Container(),
    );
  }
}