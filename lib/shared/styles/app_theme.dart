import 'package:flutter/material.dart';
import 'package:pharmacy_project/shared/styles/colors.dart';

ThemeData themeData = ThemeData(
  primarySwatch: primarySwatch,
  textTheme: TextTheme(titleLarge: TextStyle(color: secondaryColor)),
  iconTheme: IconThemeData(color: secondaryColor),
  navigationRailTheme: NavigationRailThemeData(
      unselectedIconTheme: IconThemeData(color: thirdColor),
      unselectedLabelTextStyle: TextStyle(color: thirdColor),
      backgroundColor: mainColor,
  ),
// appBarTheme: const AppBarTheme(
//   color: Colors.white,
//   elevation: 0
// ),
// scaffoldBackgroundColor: Colors.white,
);
