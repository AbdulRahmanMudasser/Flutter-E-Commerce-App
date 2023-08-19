import 'package:flutter_e_commerce_app/config/app_assets.dart';
import 'package:flutter_e_commerce_app/config/app_string.dart';

class CategoriesModel {
  final String icon;
  final String category;

  CategoriesModel({
    required this.icon,
    required this.category,
  });

  static List<CategoriesModel> categories = [
    CategoriesModel(
      icon: AppAssets.flash,
      category: AppStrings.flashDeal,
    ),
    CategoriesModel(
      icon: AppAssets.bill,
      category: AppStrings.bill,
    ),
    CategoriesModel(
      icon: AppAssets.game,
      category: AppStrings.game,
    ),
    CategoriesModel(
      icon: AppAssets.gift,
      category: AppStrings.dailyGift,
    ),
    CategoriesModel(
      icon: AppAssets.discover,
      category: AppStrings.more,
    ),
  ];
}
