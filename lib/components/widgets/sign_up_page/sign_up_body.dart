import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/components/widgets/sign_up_page/sign_up_form.dart';
import 'package:flutter_e_commerce_app/components/widgets/social_cards_row.dart';

import '../../../config/app_size_config.dart';
import '../../../config/app_string.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppSizeConfig.getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: AppSizeConfig.screenHeight * 0.02,
                ),
                Text(
                  AppStrings.registerAccount,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
