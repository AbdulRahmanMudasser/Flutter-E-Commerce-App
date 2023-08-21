import 'package:flutter/material.dart';

import '../../../config/app_size_config.dart';

class RoundedIconButton extends StatelessWidget {
  const RoundedIconButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  final Widget icon;
  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSizeConfig.getProportionateScreenHeight(40),
      width: AppSizeConfig.getProportionateScreenWidth(40),
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          // padding: const EdgeInsets.only(left: 7),
          iconColor: Colors.black,
        ),
        child: icon
      ),
    );
  }
}
