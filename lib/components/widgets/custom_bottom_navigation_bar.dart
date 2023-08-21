import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../config/app_assets.dart';
import '../../config/app_colors.dart';
import '../../config/app_enums.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    super.key,
    required this.selectedMenu,
  });

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    const Color inActiveIconColor = Color(0xffB6B6B6);

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -15),
            blurRadius: 20,
            color: const Color(0xffDADADA).withOpacity(0.15),
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(vertical: 14),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () => Navigator.pushNamed(context, "/homePage"),
              color: MenuState.home == selectedMenu ? AppColors.kPrimaryColor : inActiveIconColor,
              icon: SvgPicture.asset(AppAssets.shop),
            ),
            IconButton(
              onPressed: () {},
              color: MenuState.favourite == selectedMenu ? AppColors.kPrimaryColor : inActiveIconColor,
              icon: SvgPicture.asset(AppAssets.heartIcon),
            ),
            IconButton(
              onPressed: () {},
              color: MenuState.chat == selectedMenu ? AppColors.kPrimaryColor : inActiveIconColor,
              icon: SvgPicture.asset(AppAssets.chat),
            ),
            IconButton(
              onPressed: () => Navigator.pushNamed(context, "/profilePage"),
              color: MenuState.profile == selectedMenu ? AppColors.kPrimaryColor : inActiveIconColor,
              icon: SvgPicture.asset(AppAssets.userIcon),
            ),
          ],
        ),
      ),
    );
  }
}
