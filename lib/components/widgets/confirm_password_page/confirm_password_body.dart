import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/components/widgets/no_account_text.dart';
import 'package:flutter_e_commerce_app/config/app_size_config.dart';

import '../../../config/app_string.dart';
import 'confirm_password_form.dart';

class ConfirmPasswordBody extends StatelessWidget {
  const ConfirmPasswordBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: AppSizeConfig.getProportionateScreenWidth(20)),
            child: Column(
              children: [
                SizedBox(
                  height: AppSizeConfig.screenHeight * 0.04,
                ),
                Text(
                  AppStrings.confirmPassword,
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
                  AppStrings.pleaseEnterNewPassword,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: AppSizeConfig.screenHeight * 0.1,
                ),
                const ConfirmPasswordForm(),
                SizedBox(
                  height: AppSizeConfig.screenHeight * 0.14,
                ),
                const NoAccountText(),
                SizedBox(
                  height: AppSizeConfig.getProportionateScreenHeight(20),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

