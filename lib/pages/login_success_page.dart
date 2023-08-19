import 'package:flutter/material.dart';

import '../components/widgets/reusable_button.dart';
import '../config/app_assets.dart';
import '../config/app_size_config.dart';
import '../config/app_string.dart';

class LoginSuccessPage extends StatelessWidget {
  const LoginSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox(),
        title: const Text(AppStrings.loginSuccess),
      ),
      body: Column(
        children: [
          SizedBox(
            height: AppSizeConfig.screenHeight * 0.04,
          ),
          Image.asset(
            AppAssets.loginSuccess,
            height: AppSizeConfig.screenHeight * 0.4,
          ),
          SizedBox(
            height: AppSizeConfig.screenHeight * 0.08,
          ),
          Text(
            AppStrings.loginSuccess,
            style: TextStyle(
              fontSize: AppSizeConfig.getProportionateScreenWidth(30),
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const Spacer(),
          SizedBox(
            width: AppSizeConfig.screenWidth * 0.6,
            child: ReusableButton(
              text: AppStrings.backToHome,
              onPressed: () => Navigator.pushNamed(context, "/homePage"),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
