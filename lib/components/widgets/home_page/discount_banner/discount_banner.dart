import 'package:flutter/material.dart';

import '../../../../config/app_size_config.dart';
import '../../../../config/app_string.dart';

class DiscountBanner extends StatelessWidget {
  const DiscountBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: AppSizeConfig.getProportionateScreenWidth(20)),
      padding: EdgeInsets.symmetric(
        horizontal: AppSizeConfig.getProportionateScreenWidth(20),
        vertical: AppSizeConfig.getProportionateScreenWidth(20),
      ),
      width: double.infinity,
      // height: 90,
      decoration: BoxDecoration(
        color: const Color(0xff4A3298),
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Text.rich(
        TextSpan(
          text: AppStrings.summerSurprise,
          style: TextStyle(color: Colors.white),
          children: [
            TextSpan(
              text: AppStrings.cashback,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
