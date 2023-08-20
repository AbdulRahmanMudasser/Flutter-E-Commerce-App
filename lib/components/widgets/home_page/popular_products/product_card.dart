import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../config/app_assets.dart';
import '../../../../config/app_colors.dart';
import '../../../../config/app_size_config.dart';
import '../../../../models/product_model.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    this.width = 140,
    this.aspectRatio = 1.02,
    required this.product,
    required this.onTap,
  });

  final double width;
  final double aspectRatio;
  final ProductModel product;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: AppSizeConfig.getProportionateScreenWidth(20)),
      child: GestureDetector(
        onTap: onTap,
        child: SizedBox(
          width: AppSizeConfig.getProportionateScreenWidth(width),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: aspectRatio,
                child: Container(
                  padding: EdgeInsets.all(AppSizeConfig.getProportionateScreenWidth(20)),
                  decoration: BoxDecoration(
                    color: AppColors.kSecondaryColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Image.asset(product.images[0]),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                product.title,
                style: const TextStyle(color: Colors.black),
                maxLines: 2,
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$${product.price}",
                    style: TextStyle(
                      color: AppColors.kPrimaryColor,
                      fontSize: AppSizeConfig.getProportionateScreenWidth(18),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(30),
                    child: Container(
                      padding: EdgeInsets.all(AppSizeConfig.getProportionateScreenWidth(8)),
                      width: AppSizeConfig.getProportionateScreenWidth(28),
                      height: AppSizeConfig.getProportionateScreenWidth(28),
                      decoration: BoxDecoration(
                        color: product.isFavourite ? AppColors.kPrimaryColor.withOpacity(0.15) : AppColors.kSecondaryColor.withOpacity(0.1),
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset(
                        AppAssets.heart,
                        colorFilter: ColorFilter.mode(
                          product.isFavourite ? const Color(0xffFF4848) : const Color(0xffD8DEE4),
                          BlendMode.srcIn,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
