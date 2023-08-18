import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/config/app_size_config.dart';

import '../components/widgets/reusable_button.dart';
import '../components/widgets/splash_page/navigation_dots.dart';
import '../components/widgets/splash_page/splash_content.dart';
import '../config/app_string.dart';
import '../models/splash_model.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    AppSizeConfig().init(context);

    return Scaffold(
      body: SafeArea(
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
      )
    );
  }
}
