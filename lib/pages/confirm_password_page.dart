import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/components/widgets/confirm_password_page/confirm_password_body.dart';

import '../config/app_string.dart';

class ConfirmPasswordPage extends StatelessWidget {
  const ConfirmPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.confirmPassword),
      ),
      body: const ConfirmPasswordBody(),
    );
  }
}
