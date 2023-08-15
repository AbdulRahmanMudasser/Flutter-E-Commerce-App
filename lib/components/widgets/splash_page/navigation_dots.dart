import 'package:flutter/material.dart';

import '../../../config/app_colors.dart';
import '../../../config/app_constants.dart';

class NavigationDots extends StatelessWidget {
  const NavigationDots({
    super.key,
    required this.currentPage,
    required this.index,
  });

  final int currentPage;
  final int index;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: AppConstants.kAnimationDuration,
      height: 6,
      width: currentPage == index ? 20 : 6,
      margin: const EdgeInsets.symmetric(horizontal: 2),
      decoration: BoxDecoration(
        color: currentPage == index ? AppColors.kPrimaryColor : const Color(0xffD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}