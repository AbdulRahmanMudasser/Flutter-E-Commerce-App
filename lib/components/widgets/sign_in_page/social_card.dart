import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../config/app_size_config.dart';

class SocialCard extends StatelessWidget {
  const SocialCard({
    super.key,
    required this.icon,
    required this.onTap,
  });

  final String icon;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(AppSizeConfig.getProportionateScreenWidth(12)),
        margin: EdgeInsets.symmetric(horizontal: AppSizeConfig.getProportionateScreenWidth(10)),
        height: AppSizeConfig.getProportionateScreenHeight(40),
        width: AppSizeConfig.getProportionateScreenWidth(40),
        decoration: const BoxDecoration(
          color: Color(0xffF5F6F9),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(icon),
      ),
    );
  }
}
