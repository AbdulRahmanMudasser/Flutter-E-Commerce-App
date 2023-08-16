import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/components/widgets/sign_in_page/sign_in_body.dart';
import 'package:flutter_e_commerce_app/config/app_string.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.signIn),
      ),
      body: const SignInPageBody(),
    );
  }
}
