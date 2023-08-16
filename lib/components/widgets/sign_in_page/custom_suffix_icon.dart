import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../config/app_size_config.dart';

class CustomSuffixIcon extends StatelessWidget {
  const CustomSuffixIcon({
    super.key,
    required this.icon,
  });

  final String icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: AppSizeConfig.getProportionateScreenWidth(20),
        right: AppSizeConfig.getProportionateScreenWidth(20),
        bottom: AppSizeConfig.getProportionateScreenWidth(20),
      ),
      child: SvgPicture.asset(
        icon,
        height: AppSizeConfig.getProportionateScreenWidth(18),
      ),
    );
  }
}
