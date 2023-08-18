import 'package:flutter/material.dart';

import '../components/widgets/complete_profile_page/complete_profile_body.dart';
import '../config/app_string.dart';

class CompleteProfilePage extends StatelessWidget {
  const CompleteProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.signUp),
      ),
      body: const CompleteProfileBody(),
    );
  }
}
