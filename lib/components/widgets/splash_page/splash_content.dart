import 'package:flutter/material.dart';

import '../../../config/app_colors.dart';
import '../../../config/app_size_config.dart';
import '../../../config/app_string.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    super.key,
    required this.subTitle,
    required this.image,
  });

  final String subTitle;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Text(
          AppStrings.tokoto,
          style: TextStyle(
            fontSize: AppSizeConfig.getProportionateScreenWidth(36),
            color: AppColors.kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          subTitle,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
        const Spacer(
          flex: 2,
        ),
        Image.asset(
          image,
          height: AppSizeConfig.getProportionateScreenHeight(265),
          width: AppSizeConfig.getProportionateScreenHeight(235),
        ),
      ],
    );
  }
}
