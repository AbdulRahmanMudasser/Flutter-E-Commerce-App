import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/components/widgets/home_page/popular_products/product_card.dart';

import '../../../../config/app_size_config.dart';
import '../../../../config/app_string.dart';
import '../../../../models/product_model.dart';
import '../../product_details/product_details_argument.dart';
import '../section_title.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          title: AppStrings.popularProducts,
          onTap: () {},
        ),
        SizedBox(
          height: AppSizeConfig.getProportionateScreenHeight(20),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...List.generate(
                ProductModel.products.length,
                (index) => ProductCard(
                  product: ProductModel.products[index],
                  onTap: () => Navigator.pushNamed(
                    context,
                    "/productDetailsPage",
                    arguments: ProductDetailsArgument(product: ProductModel.products[index]),
                  ),
                ),
              ),
              SizedBox(
                width: AppSizeConfig.getProportionateScreenWidth(28),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
