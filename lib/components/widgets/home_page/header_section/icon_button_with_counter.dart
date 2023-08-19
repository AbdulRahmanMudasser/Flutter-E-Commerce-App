import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../config/app_colors.dart';
import '../../../../config/app_size_config.dart';

class IconButtonWithCounter extends StatelessWidget {
  const IconButtonWithCounter({
    super.key,
    required this.icon,
    this.itemCount = 0,
    required this.onTap,
  });

  final String icon;
  final int itemCount;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      // highlightColor: Colors.transparent,
      // splashColor: Colors.transparent,
      borderRadius: BorderRadius.circular(50),
      onTap: onTap,
      child: Stack(
        clipBehavior: Clip.none, // previously as Overflow.visible
        children: [
          Container(
            padding: EdgeInsets.all(AppSizeConfig.getProportionateScreenWidth(12)),
            width: AppSizeConfig.getProportionateScreenWidth(46),
            height: AppSizeConfig.getProportionateScreenWidth(46),
            decoration: BoxDecoration(
              color: AppColors.kSecondaryColor.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(icon),
          ),
          if (itemCount != 0)
            Positioned(
              top: -3,
              right: 0,
              child: Container(
                width: AppSizeConfig.getProportionateScreenWidth(16),
                height: AppSizeConfig.getProportionateScreenWidth(16),
                decoration: BoxDecoration(
                  color: const Color(0xffdd4848),
                  shape: BoxShape.circle,
                  border: Border.all(
                    width: 1.5,
                    color: Colors.white,
                  ),
                ),
                child: Center(
                  child: Text(
                    itemCount.toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: AppSizeConfig.getProportionateScreenWidth(10),
                      height: 1,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
