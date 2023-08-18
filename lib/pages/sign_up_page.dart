import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/config/app_string.dart';
import 'package:flutter_e_commerce_app/config/app_text_styles.dart';

import '../components/widgets/sign_up_page/sign_up_form.dart';
import '../components/widgets/social_cards_row.dart';
import '../config/app_size_config.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.signUp),
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
                    AppStrings.registerAccount,
                    style: AppTextStyles.headingStyle,
                  ),
                  SizedBox(
                    height: AppSizeConfig.getProportionateScreenHeight(10),
                  ),
                  const Text(
                    AppStrings.completeYourDetails,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: AppSizeConfig.screenHeight * 0.07,
                  ),
                  SignUpForm(),
                  SizedBox(
                    height: AppSizeConfig.screenHeight * 0.07,
                  ),
                  const SocialCardsRow(),
                  SizedBox(
                    height: AppSizeConfig.getProportionateScreenHeight(20),
                  ),
                  const Text(
                    AppStrings.byContinuing,
                    textAlign: TextAlign.center,
                  ),
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
