import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/config/app_size_config.dart';

import '../../../config/app_string.dart';
import 'complete_profile_form.dart';

class CompleteProfileBody extends StatelessWidget {
  const CompleteProfileBody({super.key});

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
                  height: AppSizeConfig.screenHeight * 0.02,
                ),
                Text(
                  AppStrings.completeProfile,
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
    );
  }
}

