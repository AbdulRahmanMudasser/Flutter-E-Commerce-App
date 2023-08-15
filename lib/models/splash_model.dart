import 'package:flutter_e_commerce_app/config/app_assets.dart';
import 'package:flutter_e_commerce_app/config/app_string.dart';

class SplashModel {
  final String subTitle;
  final String image;

  SplashModel({
    required this.subTitle,
    required this.image,
  });

  static List<SplashModel> splashData = [
    SplashModel(
      subTitle: AppStrings.splashSubTitle1,
      image: AppAssets.splash1,
    ),
    SplashModel(
      subTitle: AppStrings.splashSubTitle2,
      image: AppAssets.splash2,
    ),
    SplashModel(
      subTitle: AppStrings.splashSubTitle3,
      image: AppAssets.splash3,
    ),
  ];
}
