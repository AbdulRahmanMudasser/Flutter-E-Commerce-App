import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/config/app_enums.dart';
import 'package:flutter_e_commerce_app/config/app_string.dart';
import 'package:flutter_svg/svg.dart';

import '../components/widgets/custom_bottom_navigation_bar.dart';
import '../components/widgets/product_details_page/rounded_icon_button.dart';
import '../components/widgets/profile_page/profile_options.dart';
import '../components/widgets/profile_page/profile_picture.dart';
import '../config/app_assets.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.profile),
        leading: RoundedIconButton(
          icon: SvgPicture.asset(AppAssets.backIcon),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            ProfilePicture(),
            SizedBox(
              height: 20,
            ),
            ProfileOptionsList(),
          ],
        ),
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(selectedMenu: MenuState.profile),
    );
  }
}
