import 'package:flutter/material.dart';

import '../components/widgets/login_success_page/login_success_body.dart';
import '../config/app_string.dart';

class LoginSuccessPage extends StatelessWidget {
  const LoginSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox(),
        title: const Text(AppStrings.loginSuccess),
      ),
      body: const LoginSuccessBody(),
    );
  }
}
