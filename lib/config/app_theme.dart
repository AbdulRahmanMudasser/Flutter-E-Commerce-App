import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_e_commerce_app/config/app_constants.dart';

import 'app_colors.dart';

class AppTheme {
  static ThemeData theme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    fontFamily: "Muli",
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textTheme: textTheme,
    appBarTheme: appBarTheme,
    inputDecorationTheme: inputDecorationTheme,
  );

  static AppBarTheme appBarTheme = const AppBarTheme(
    color: Colors.white,
    elevation: 0,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarBrightness: Brightness.light,
    ),
    iconTheme: IconThemeData(color: Colors.black),
    centerTitle: true,
    titleTextStyle: TextStyle(
      color: Color(0xff888888),
      fontSize: 18,
    ),
  );

  static TextTheme textTheme = const TextTheme(
    bodyLarge: TextStyle(color: AppColors.kTextColor),
    bodyMedium: TextStyle(color: AppColors.kTextColor),
  );

  static InputDecorationTheme inputDecorationTheme = InputDecorationTheme(
    // floatingLabelBehavior: FloatingLabelBehavior.always,   // it will not work if written in theme
    contentPadding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
    enabledBorder: AppConstants.outlineInputBorder,
    focusedBorder: AppConstants.outlineInputBorder,
    errorBorder: AppConstants.outlineInputBorder,
    focusedErrorBorder: AppConstants.outlineInputBorder,

  );
}
