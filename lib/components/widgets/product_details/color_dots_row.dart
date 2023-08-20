import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/components/widgets/product_details/rounded_icon_button.dart';

import '../../../config/app_size_config.dart';
import '../../../models/product_model.dart';
import 'color_dots.dart';

class ColorDotsRow extends StatelessWidget {
  const ColorDotsRow({
    super.key,
    required this.product,
  });

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    int selectedColor = 3;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppSizeConfig.getProportionateScreenWidth(20)),
      child: Row(
        children: [
          ...List.generate(
            product.colors.length,
            (index) => ColorDots(
              color: product.colors[index],
              isSelected: selectedColor == index,
            ),
          ),
          const Spacer(),
          RoundedIconButton(
            icon: Icons.remove,
            onPressed: () {},
          ),
          SizedBox(
            width: AppSizeConfig.getProportionateScreenWidth(30),
          ),
          RoundedIconButton(
            icon: Icons.add,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
