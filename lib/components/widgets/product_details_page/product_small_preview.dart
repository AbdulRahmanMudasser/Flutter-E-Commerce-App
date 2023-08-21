import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/config/app_constants.dart';

import '../../../config/app_colors.dart';
import '../../../config/app_size_config.dart';
import '../../../models/product_model.dart';

class ProductSmallPreview extends StatelessWidget {
  const ProductSmallPreview({
    super.key,
    required this.product,
    required this.index,
    required this.onTap,
    required this.selectedImage,
  });

  final ProductModel product;
  final int index;
  final GestureTapCallback onTap;
  final int selectedImage;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: AppConstants.kAnimationDuration,
        margin: EdgeInsets.only(right: AppSizeConfig.getProportionateScreenWidth(15)),
        padding: EdgeInsets.all(AppSizeConfig.getProportionateScreenHeight(8)),
        height: AppSizeConfig.getProportionateScreenWidth(48),
        width: AppSizeConfig.getProportionateScreenWidth(48),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: selectedImage == index ? AppColors.kPrimaryColor : Colors.transparent),
        ),
        child: Image.asset(product.images[index]),
      ),
    );
  }
}
