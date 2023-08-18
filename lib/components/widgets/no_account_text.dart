import 'package:flutter/material.dart';

import '../../config/app_colors.dart';
import '../../config/app_size_config.dart';
import '../../config/app_string.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          AppStrings.doNotHaveAccount,
          style: TextStyle(
            fontSize: AppSizeConfig.getProportionateScreenWidth(16),
          ),
        ),
        const SizedBox(width: 5),
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, "/signUpPage"),
          child: Text(
            AppStrings.signUp,
            style: TextStyle(
              fontSize: AppSizeConfig.getProportionateScreenWidth(16),
              color: AppColors.kPrimaryColor,
            ),
          ),
        ),
      ],
    );
  }
}