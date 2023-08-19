import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/components/widgets/home_page/special_offers/special_offer_card.dart';

import '../../../../config/app_assets.dart';
import '../../../../config/app_size_config.dart';
import '../../../../config/app_string.dart';
import '../section_title.dart';

class SpecialOffers extends StatelessWidget {
  const SpecialOffers({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          title: AppStrings.specialForYou,
          onTap: () {},
        ),
        SizedBox(
          height: AppSizeConfig.getProportionateScreenHeight(20),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SpecialOfferCard(
                category: AppStrings.smartPhone,
                image: AppAssets.banner1,
                brandCount: 18,
                onTap: () {},
              ),
              SpecialOfferCard(
                category: AppStrings.fashion,
                image: AppAssets.banner2,
                brandCount: 24,
                onTap: () {},
              ),
              SizedBox(
                width: AppSizeConfig.getProportionateScreenWidth(20),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
