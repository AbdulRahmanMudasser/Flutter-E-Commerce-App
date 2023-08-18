import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/components/widgets/social_card.dart';

import '../../config/app_assets.dart';

class SocialCardsRow extends StatelessWidget {
  const SocialCardsRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SocialCard(
          icon: AppAssets.google,
          onTap: () {},
        ),
        SocialCard(
          icon: AppAssets.facebook,
          onTap: () {},
        ),
        SocialCard(
          icon: AppAssets.twitter,
          onTap: () {},
        ),
      ],
    );
  }
}
