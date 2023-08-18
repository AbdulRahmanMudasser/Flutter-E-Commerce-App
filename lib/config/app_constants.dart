import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_size_config.dart';

class AppConstants {
  static RegExp emailValidatorRegExp = RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
  static const double defaultPadding = 20;
  static const Duration kAnimationDuration = Duration(milliseconds: 250);

  static final OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(28),
    borderSide: const BorderSide(color: AppColors.kTextColor),
    gapPadding: 10,
  );

  static final InputDecoration otpInputDecoration = InputDecoration(
    contentPadding: EdgeInsets.symmetric(vertical: AppSizeConfig.getProportionateScreenWidth(15)),
    enabledBorder: otpOutlineInputBorder,
    focusedErrorBorder: otpOutlineInputBorder,
    errorBorder: otpOutlineInputBorder,
    focusedBorder: otpOutlineInputBorder,
    border: otpOutlineInputBorder,
  );

  static final otpOutlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(15),
    borderSide: const BorderSide(color: AppColors.kTextColor),
  );
}
