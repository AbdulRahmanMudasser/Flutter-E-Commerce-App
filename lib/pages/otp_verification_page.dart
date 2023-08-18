import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/config/app_size_config.dart';
import 'package:flutter_e_commerce_app/config/app_text_styles.dart';

import '../components/widgets/otp_verification_page/otp_code_timer.dart';
import '../components/widgets/otp_verification_page/otp_form.dart';
import '../config/app_string.dart';

class OTPVerificationPage extends StatelessWidget {
  const OTPVerificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.otpVerification),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: AppSizeConfig.getProportionateScreenWidth(20)),
            child: Column(
              children: [
                SizedBox(
                  height: AppSizeConfig.screenHeight * 0.05,
                ),
                Text(
                  AppStrings.otpVerification,
                  style: AppTextStyles.headingStyle,
                ),
                SizedBox(
                  height: AppSizeConfig.getProportionateScreenHeight(10),
                ),
                const Text(
                  AppStrings.weSentCode,
                  textAlign: TextAlign.center,
                ),
                const OTPCodeTimer(),
                SizedBox(
                  height: AppSizeConfig.screenHeight * 0.15,
                ),
                const OTPForm(),
                SizedBox(
                  height: AppSizeConfig.screenHeight * 0.1,
                ),
                GestureDetector(
                  onTap: () {},
                  child: const Text(
                    AppStrings.resendOTPCode,
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

