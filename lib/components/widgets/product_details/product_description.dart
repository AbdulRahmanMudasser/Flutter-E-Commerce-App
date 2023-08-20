import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../config/app_assets.dart';
import '../../../config/app_colors.dart';
import '../../../config/app_size_config.dart';
import '../../../config/app_string.dart';
import '../../../models/product_model.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({
    super.key,
    required this.product,
    required this.seeMoreDetails,
  });

  final ProductModel product;
  final GestureTapCallback seeMoreDetails;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: AppSizeConfig.getProportionateScreenWidth(20)),
          child: Text(
            product.title,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            padding: EdgeInsets.all(AppSizeConfig.getProportionateScreenWidth(20)),
            width: AppSizeConfig.getProportionateScreenWidth(64),
            decoration: BoxDecoration(
              color: product.isFavourite ? const Color(0xffFFE6E6) : const Color(0xffF5F6F9),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30),
                bottomLeft: Radius.circular(30),
              ),
            ),
            child: SvgPicture.asset(
              AppAssets.heart,
              colorFilter: ColorFilter.mode(
                product.isFavourite ? const Color(0xffFF4848) : const Color(0xffDBDEE4),
                BlendMode.srcIn,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Padding(
          padding: EdgeInsets.only(
            left: AppSizeConfig.getProportionateScreenWidth(20),
            right: AppSizeConfig.getProportionateScreenWidth(64),
          ),
          child: Text(
            product.description,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppSizeConfig.getProportionateScreenWidth(20),
            vertical: 10,
          ),
          child: GestureDetector(
            onTap: seeMoreDetails,
            child: const Row(
              children: [
                Text(
                  AppStrings.seeMoreDetail,
                  style: TextStyle(
                    color: AppColors.kPrimaryColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 12,
                  color: AppColors.kPrimaryColor,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
