import 'package:flutter/material.dart';

import '../../../config/app_colors.dart';
import '../../../config/app_string.dart';

class OTPCodeTimer extends StatelessWidget {
  const OTPCodeTimer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(AppStrings.codeExpires),
        TweenAnimationBuilder(
          tween: Tween(begin: 30.0, end: 0.0),
          duration: const Duration(seconds: 30),
          builder: (context, value, child) {
            return Text(
              "00:${value.toInt()}",
              style: const TextStyle(color: AppColors.kPrimaryColor),
            );
          },
          onEnd: () {},
        )
      ],
    );
  }
}
