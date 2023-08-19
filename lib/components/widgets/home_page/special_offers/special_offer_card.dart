import 'package:flutter/material.dart';

import '../../../../config/app_size_config.dart';
import '../../../../config/app_string.dart';

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({
    super.key,
    required this.category,
    required this.image,
    required this.brandCount,
    required this.onTap,
  });

  final String category;
  final String image;
  final int brandCount;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: AppSizeConfig.getProportionateScreenWidth(20)),
      child: SizedBox(
        width: AppSizeConfig.getProportionateScreenWidth(242),
        height: AppSizeConfig.getProportionateScreenWidth(100),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Stack(
            children: [
              Image.asset(
                image,
                fit: BoxFit.cover,
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      const Color(0xff343434).withOpacity(0.4),
                      const Color(0xff343434).withOpacity(0.15),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppSizeConfig.getProportionateScreenWidth(15),
                  vertical: AppSizeConfig.getProportionateScreenWidth(10),
                ),
                child: Text.rich(
                  TextSpan(
                    style: const TextStyle(color: Colors.white),
                    children: [
                      TextSpan(
                        text: category,
                        style: TextStyle(
                          fontSize: AppSizeConfig.getProportionateScreenWidth(18),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(text: "\n$brandCount ${AppStrings.brands}"),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
