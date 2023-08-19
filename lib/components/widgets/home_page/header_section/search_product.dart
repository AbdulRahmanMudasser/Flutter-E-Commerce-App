import 'package:flutter/material.dart';

import '../../../../config/app_colors.dart';
import '../../../../config/app_size_config.dart';
import '../../../../config/app_string.dart';

class SearchProduct extends StatelessWidget {
  const SearchProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppSizeConfig.screenWidth * 0.6,
      height: 50,
      decoration: BoxDecoration(
        color: AppColors.kSecondaryColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextField(
        onChanged: (value) {
          // search value
        },
        decoration: InputDecoration(
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          focusedErrorBorder: InputBorder.none,
          hintText: AppStrings.searchProduct,
          prefixIcon: const Icon(Icons.search),
          contentPadding: EdgeInsets.symmetric(
            horizontal: AppSizeConfig.getProportionateScreenWidth(20),
            vertical: AppSizeConfig.getProportionateScreenWidth(9),
          ),
        ),
      ),
    );
  }
}
