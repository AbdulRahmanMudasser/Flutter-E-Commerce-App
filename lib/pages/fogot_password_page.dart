import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/config/app_text_styles.dart';

import '../components/widgets/forgot_password_page/forgot_password_form.dart';
import '../components/widgets/no_account_text.dart';
import '../config/app_size_config.dart';
import '../config/app_string.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.forgotPassword),
      ),
      body: SafeArea(
        child: SizedBox(
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
                    style: AppTextStyles.headingStyle,
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
      ),
    );
  }
}
