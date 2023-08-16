import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppConstants {
  static RegExp emailValidatorRegExp = RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
  static const double defaultPadding = 20;
  static const Duration kAnimationDuration = Duration(milliseconds: 250);

  static final OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(28),
    borderSide: const BorderSide(color: AppColors.kTextColor),
    gapPadding: 10,
  );
}
