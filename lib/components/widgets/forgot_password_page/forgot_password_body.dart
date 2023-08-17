import 'package:flutter/material.dart';

import '../../../config/app_size_config.dart';
import '../../../config/app_string.dart';
import 'forgot_password_form.dart';

class ForgotPasswordBody extends StatelessWidget {
  const ForgotPasswordBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppSizeConfig.getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: AppSizeConfig.screenHeight * 0.04,
              ),
              Text(
                AppStrings.forgotPassword,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: AppSizeConfig.getProportionateScreenWidth(28),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: AppSizeConfig.getProportionateScreenHeight(10),
              ),
              const Text(
                AppStrings.pleaseEnterEmailForLink,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: AppSizeConfig.screenHeight * 0.1,
              ),
              const ForgotPasswordForm(),
            ],
          ),
        ),
      ),
    );
  }
}

