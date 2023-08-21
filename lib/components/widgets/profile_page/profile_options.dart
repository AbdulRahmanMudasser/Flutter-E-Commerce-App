import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/components/widgets/profile_page/profile_option_card.dart';

import '../../../config/app_assets.dart';
import '../../../config/app_string.dart';

class ProfileOptionsList extends StatelessWidget {
  const ProfileOptionsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfileOptionCard(
          icon: AppAssets.userIcon,
          text: AppStrings.myAccount,
          onPressed: () {},
        ),
        ProfileOptionCard(
          icon: AppAssets.bell,
          text: AppStrings.notifications,
          onPressed: () {},
        ),
        ProfileOptionCard(
          icon: AppAssets.settings,
          text: AppStrings.settings,
          onPressed: () {},
        ),
        ProfileOptionCard(
          icon: AppAssets.helpCenter,
          text: AppStrings.helpCenter,
          onPressed: () {},
        ),
        ProfileOptionCard(
          icon: AppAssets.logOut,
          text: AppStrings.logout,
          onPressed: () {},
        ),
      ],
    );
  }
}

