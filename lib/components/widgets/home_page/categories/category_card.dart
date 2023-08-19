import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../config/app_size_config.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.icon,
    required this.text,
    required this.onTap,
  });

  final String icon;
  final String text;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: AppSizeConfig.getProportionateScreenWidth(55),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Container(
                padding: EdgeInsets.all(AppSizeConfig.getProportionateScreenWidth(15)),
                decoration: BoxDecoration(
                  color: const Color(0xffFFECDF),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: SvgPicture.asset(icon),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              text,
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
