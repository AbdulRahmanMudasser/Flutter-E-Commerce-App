import 'package:flutter/material.dart';

import '../../../config/app_assets.dart';
import '../../../config/app_constants.dart';
import '../../../config/app_size_config.dart';
import '../../../config/app_string.dart';
import '../reusable_button.dart';
import '../custom_suffix_icon.dart';
import '../sign_in_page/form_error.dart';
import '../no_account_text.dart';

class ForgotPasswordForm extends StatefulWidget {
  const ForgotPasswordForm({super.key});

  @override
  State<ForgotPasswordForm> createState() => _ForgotPasswordFormState();
}

class _ForgotPasswordFormState extends State<ForgotPasswordForm> {
  final _formKey = GlobalKey<FormState>();
  static List<String> errors = [];
  late String email;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            onSaved: (newValue) => email = newValue!,
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              labelText: AppStrings.email,
              hintText: AppStrings.enterEmail,
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: CustomSuffixIcon(
                icon: AppAssets.mail,
              ),
            ),
            onChanged: (value) {
              if (value.isNotEmpty && errors.contains(AppStrings.kEmailNullError)) {
                setState(() {
                  errors.remove(AppStrings.kEmailNullError);
                });
              } else if (AppConstants.emailValidatorRegExp.hasMatch(value) && errors.contains(AppStrings.kInvalidEmailError)) {
                setState(() {
                  errors.remove(AppStrings.kInvalidEmailError);
                });
              }
              return;
            },
            validator: (value) {
              if (value!.isEmpty && !errors.contains(AppStrings.kEmailNullError)) {
                setState(() {
                  errors.add(AppStrings.kEmailNullError);
                });
              } else if (!AppConstants.emailValidatorRegExp.hasMatch(value) && !errors.contains(AppStrings.kInvalidEmailError)) {
                setState(() {
                  errors.add(AppStrings.kInvalidEmailError);
                });
              }
              return null;
            },
          ),
          SizedBox(
            height: AppSizeConfig.getProportionateScreenHeight(30),
          ),
          FormError(
            formErrors: errors,
          ),
          SizedBox(
            height: AppSizeConfig.screenHeight * 0.1,
          ),
          ReusableButton(
            text: AppStrings.continueText,
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                // do whatever you want
              }
            },
          ),
          SizedBox(
            height: AppSizeConfig.screenHeight * 0.1,
          ),
          const NoAccountText(),
        ],
      ),
    );
  }
}
