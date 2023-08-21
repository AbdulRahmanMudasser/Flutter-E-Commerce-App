import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/components/widgets/sign_up_page/validate_sign_up_form.dart';
import 'package:flutter_e_commerce_app/helper/keyboard_util.dart';

import '../../../config/app_size_config.dart';
import '../../../config/app_string.dart';
import '../reusable_button.dart';

class SignUpForm extends StatelessWidget {
  SignUpForm({super.key});

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          const ValidateSignUpForm(),
          SizedBox(
            height: AppSizeConfig.getProportionateScreenHeight(40),
          ),
          ReusableButton(
            text: AppStrings.continueText,
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();

                KeyboardUtil.hideKeyboard(context);

                // go to complete profile page
                Navigator.pushNamed(context, "/completeProfilePage");
              }
            },
          ),
        ],
      ),
    );
  }
}
