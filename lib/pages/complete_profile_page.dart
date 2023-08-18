import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/config/app_text_styles.dart';

import '../components/widgets/complete_profile_page/complete_profile_form.dart';
import '../config/app_size_config.dart';
import '../config/app_string.dart';

class CompleteProfilePage extends StatelessWidget {
  const CompleteProfilePage({super.key});

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
                    AppStrings.completeProfile,
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
                    height: AppSizeConfig.screenHeight * 0.05,
                  ),
                  const CompleteProfileForm(),
                  SizedBox(
                    height: AppSizeConfig.getProportionateScreenHeight(30),
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
      ),
    );
  }
}
