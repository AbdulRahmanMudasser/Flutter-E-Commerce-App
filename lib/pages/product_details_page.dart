import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/components/widgets/reusable_button.dart';
import 'package:flutter_e_commerce_app/components/widgets/top_rounded_container.dart';
import 'package:flutter_e_commerce_app/config/app_size_config.dart';
import 'package:flutter_e_commerce_app/config/app_string.dart';

import '../components/widgets/product_details_page/color_dots_row.dart';
import '../components/widgets/product_details_page/custom_app_bar.dart';
import '../components/widgets/product_details_page/product_description.dart';
import '../components/widgets/product_details_page/product_details_argument.dart';
import '../components/widgets/product_details_page/product_images.dart';
class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ProductDetailsArgument arguments = ModalRoute.of(context)!.settings.arguments as ProductDetailsArgument;

    return Scaffold(
      backgroundColor: const Color(0xffF5F8F9),
      appBar: CustomAppBar(rating: arguments.product.rating),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProductImages(product: arguments.product),
            TopRoundedContainer(
              color: Colors.white,
              child: Column(
                children: [
                  ProductDescription(
                    product: arguments.product,
                    seeMoreDetails: () {},
                  ),
                  TopRoundedContainer(
                    color: const Color(0xffF6F7F9),
                    child: Column(
                      children: [
                        ColorDotsRow(product: arguments.product),
                        TopRoundedContainer(
                          color: Colors.white,
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(
                              AppSizeConfig.screenWidth * 0.15,
                              AppSizeConfig.getProportionateScreenWidth(20),
                              AppSizeConfig.screenWidth * 0.15,
                              AppSizeConfig.getProportionateScreenWidth(40),
                            ),
                            child: ReusableButton(
                              text: AppStrings.addToCart,
                              onPressed: () {},
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
