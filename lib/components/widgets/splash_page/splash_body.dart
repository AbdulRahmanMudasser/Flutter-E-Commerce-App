import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/components/widgets/splash_page/splash_content.dart';
import 'package:flutter_e_commerce_app/config/app_size_config.dart';
import 'package:flutter_e_commerce_app/config/app_string.dart';
import 'package:flutter_e_commerce_app/models/splash_model.dart';

import '../reusable_button.dart';
import 'navigation_dots.dart';

class SplashPageBody extends StatefulWidget {
  const SplashPageBody({super.key});

  @override
  State<SplashPageBody> createState() => _SplashPageBodyState();
}

class _SplashPageBodyState extends State<SplashPageBody> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: SplashModel.splashData.length,
                itemBuilder: (context, index) {
                  return SplashContent(
                    subTitle: SplashModel.splashData[index].subTitle,
                    image: SplashModel.splashData[index].image,
                  );
                },
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppSizeConfig.getProportionateScreenWidth(20),
                ),
                child: Column(
                  children: [
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        SplashModel.splashData.length,
                        (index) => NavigationDots(
                          currentPage: currentPage,
                          index: index,
                        ),
                      ),
                    ),
                    const Spacer(
                      flex: 3,
                    ),
                    ReusableButton(
                      text: AppStrings.continueText,
                      onPressed: () {
                        Navigator.pushNamed(context, "/signInPage");
                      },
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
