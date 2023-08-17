import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/components/widgets/reusable_button.dart';
import 'package:flutter_e_commerce_app/config/app_assets.dart';
import 'package:flutter_e_commerce_app/config/app_size_config.dart';

import '../../../config/app_string.dart';

class LoginSuccessBody extends StatelessWidget {
  const LoginSuccessBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: AppSizeConfig.screenHeight * 0.04,
        ),
        Image.asset(
          AppAssets.loginSuccess,
          height: AppSizeConfig.screenHeight * 0.4,
        ),
        SizedBox(
          height: AppSizeConfig.screenHeight * 0.08,
        ),
        Text(
          AppStrings.loginSuccess,
          style: TextStyle(
            fontSize: AppSizeConfig.getProportionateScreenWidth(30),
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        const Spacer(),
        SizedBox(
          width: AppSizeConfig.screenWidth * 0.6,
          child: ReusableButton(
            text: AppStrings.backToHome,
            onPressed: () {},
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
