import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/config/app_size_config.dart';

import '../components/widgets/home_page/categories/categories.dart';
import '../components/widgets/home_page/discount_banner/discount_banner.dart';
import '../components/widgets/home_page/header_section/home_header.dart';
import '../components/widgets/home_page/popular_products/popular_products.dart';
import '../components/widgets/home_page/special_offers/special_offers.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: AppSizeConfig.getProportionateScreenHeight(20),
              ),
              const HomeHeader(),
              SizedBox(
                height: AppSizeConfig.getProportionateScreenHeight(30),
              ),
              const DiscountBanner(),
              SizedBox(
                height: AppSizeConfig.getProportionateScreenHeight(30),
              ),
              const Categories(),
              SizedBox(
                height: AppSizeConfig.getProportionateScreenHeight(30),
              ),
              const SpecialOffers(),
              SizedBox(
                height: AppSizeConfig.getProportionateScreenHeight(30),
              ),
              const PopularProducts(),
              SizedBox(
                height: AppSizeConfig.getProportionateScreenHeight(30),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

