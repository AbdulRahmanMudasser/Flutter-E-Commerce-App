import 'package:flutter/material.dart';

import '../../../config/app_colors.dart';
import '../../../config/app_size_config.dart';

class ColorDots extends StatelessWidget {
  const ColorDots({
    super.key,
    required this.color,
    this.isSelected = false,
  });

  final Color color;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 2),
      padding: const EdgeInsets.all(8),
      height: AppSizeConfig.getProportionateScreenWidth(40),
      width: AppSizeConfig.getProportionateScreenWidth(40),
      decoration: BoxDecoration(
        // color: arguments.product.colors[0],
        shape: BoxShape.circle,
        border: Border.all(color: isSelected ? AppColors.kPrimaryColor : Colors.transparent),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
