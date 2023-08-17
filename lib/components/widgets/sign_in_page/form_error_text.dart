import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../config/app_assets.dart';
import '../../../config/app_size_config.dart';

class FormErrorText extends StatelessWidget {
  const FormErrorText({
    super.key,
    required this.formErrors,
    required this.index,
  });

  final List<String> formErrors;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          AppAssets.error,
          height: AppSizeConfig.getProportionateScreenWidth(14),
          width: AppSizeConfig.getProportionateScreenWidth(14),
        ),
        SizedBox(
          width: AppSizeConfig.getProportionateScreenWidth(20),
        ),
        Text(formErrors[index]),
      ],
    );
  }
}
