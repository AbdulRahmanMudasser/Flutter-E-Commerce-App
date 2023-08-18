import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/config/app_string.dart';
import 'package:flutter_e_commerce_app/config/app_text_styles.dart';

import '../components/widgets/no_account_text.dart';
import '../components/widgets/sign_in_page/sign_in_form.dart';
import '../components/widgets/social_cards_row.dart';
import '../config/app_size_config.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.signIn),
      ),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: AppSizeConfig.getProportionateScreenWidth(20)),
              child: Column(
                children: [
                  SizedBox(
                    height: AppSizeConfig.screenHeight * 0.02,
                  ),
                  Text(
                    AppStrings.welcomeBack,
                    style: AppTextStyles.headingStyle,
                  ),
                  SizedBox(
                    height: AppSizeConfig.getProportionateScreenHeight(10),
                  ),
                  const Text(
                    AppStrings.signInWithEmailPassword,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: AppSizeConfig.screenHeight * 0.08,
                  ),
                  const SignInForm(),
                  SizedBox(
                    height: AppSizeConfig.screenHeight * 0.08,
                  ),
                  const SocialCardsRow(),
                  SizedBox(
                    height: AppSizeConfig.getProportionateScreenHeight(20),
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
