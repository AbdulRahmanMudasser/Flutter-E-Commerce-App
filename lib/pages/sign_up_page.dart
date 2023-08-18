import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/components/widgets/sign_up_page/sign_up_body.dart';
import 'package:flutter_e_commerce_app/config/app_string.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.signUp),
      ),
      body: const SignUpBody(),
    );
  }
}
