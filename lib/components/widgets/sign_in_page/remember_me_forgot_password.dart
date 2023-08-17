import 'package:flutter/material.dart';

import '../../../config/app_colors.dart';
import '../../../config/app_string.dart';

class RememberMeForgotPassword extends StatefulWidget {
  const RememberMeForgotPassword({super.key});

  @override
  State<RememberMeForgotPassword> createState() => _RememberMeForgotPasswordState();
}

class _RememberMeForgotPasswordState extends State<RememberMeForgotPassword> {
  bool remember = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          activeColor: AppColors.kPrimaryColor,
          value: remember,
          onChanged: (value) {
            setState(() {
              remember = value!;
            });
          },
        ),
        const Text(AppStrings.rememberMe),
        const Spacer(),
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, "/forgotPasswordPage"),
          child: const Text(
            AppStrings.forgotPassword,
            style: TextStyle(decoration: TextDecoration.underline),
          ),
        ),
      ],
    );
  }
}
