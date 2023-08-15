import 'package:flutter/material.dart';

class AppColors {
  static const Color kPrimaryColor = Color(0xFFFF7643);
  static const Color kPrimaryLightColor = Color(0xFFFFECDF);
  static const LinearGradient kPrimaryGradientColor = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color(0xFFFFA53E),
      Color(0xFFFF7643),
    ],
  );
  static const Color kSecondaryColor = Color(0xFF979797);
  static const Color kTextColor = Color(0xFF757575);
}
