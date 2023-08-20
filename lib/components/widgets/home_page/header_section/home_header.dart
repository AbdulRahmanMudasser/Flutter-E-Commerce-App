import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/components/widgets/home_page/header_section/search_product.dart';

import '../../../../config/app_assets.dart';
import '../../../../config/app_size_config.dart';
import 'icon_button_with_counter.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppSizeConfig.getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SearchProduct(),
          IconButtonWithCounter(
            icon: AppAssets.cart,
            itemCount: 3,
            onTap: () => Navigator.pushNamed(context, "/cartPage"),
          ),
          IconButtonWithCounter(
            icon: AppAssets.bell,
            itemCount: 4,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
