import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/config/app_enums.dart';
import 'package:flutter_e_commerce_app/config/app_string.dart';

import '../components/widgets/custom_bottom_navigation_bar.dart';
import '../components/widgets/profile_page/profile_options.dart';
import '../components/widgets/profile_page/profile_picture.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.profile),
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

