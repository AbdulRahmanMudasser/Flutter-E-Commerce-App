import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/config/app_text_styles.dart';
import 'package:flutter_svg/svg.dart';

import '../components/widgets/confirm_password_page/confirm_password_form.dart';
import '../components/widgets/no_account_text.dart';
import '../components/widgets/product_details_page/rounded_icon_button.dart';
import '../config/app_assets.dart';
import '../config/app_size_config.dart';
import '../config/app_string.dart';

class ConfirmPasswordPage extends StatelessWidget {
  const ConfirmPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.confirmPassword),
        leading: RoundedIconButton(
          icon: SvgPicture.asset(AppAssets.backIcon),
          onPressed: () => Navigator.pop(context),
        ),
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
                    height: AppSizeConfig.screenHeight * 0.04,
                  ),
                  Text(
                    AppStrings.confirmPassword,
                    style: AppTextStyles.headingStyle,
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
      ),
    );
  }
}
