import 'package:flutter/material.dart';

import '../components/widgets/forgot_password_page/forgot_password_body.dart';
import '../config/app_string.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.forgotPassword),
      ),
      body: const ForgotPasswordBody(),
    );
  }
}
