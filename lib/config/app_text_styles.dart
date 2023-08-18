import 'package:flutter/material.dart';

import 'app_size_config.dart';

class AppTextStyles {
  static final TextStyle headingStyle = TextStyle(
    fontSize: AppSizeConfig.getProportionateScreenWidth(28),
    fontWeight: FontWeight.bold,
    color: Colors.black,
    height: 1.5,
  );
}