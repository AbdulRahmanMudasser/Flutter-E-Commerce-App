import 'package:flutter/material.dart';

import '../../../config/app_size_config.dart';
import '../../../config/app_string.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    super.key,
    required this.title,
    required this.onTap,
  });

  final String title;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppSizeConfig.getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: AppSizeConfig.getProportionateScreenWidth(18),
              color: Colors.black,
              fontWeight: FontWeight.w600,
              wordSpacing: 1.25
            ),
          ),
          GestureDetector(
            onTap: onTap,
            child: const Text(AppStrings.seeMore),
          ),
        ],
      ),
    );
  }
}
