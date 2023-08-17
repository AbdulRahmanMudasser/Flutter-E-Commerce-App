import 'package:flutter/material.dart';

import '../../../config/app_assets.dart';
import '../../../config/app_constants.dart';
import '../../../config/app_size_config.dart';
import '../../../config/app_string.dart';
import '../../../models/forgot_password_model.dart';
import '../reusable_button.dart';
import '../sign_in_page/custom_suffix_icon.dart';
import '../sign_in_page/form_error.dart';
import '../sign_in_page/no_account_text.dart';

class ForgotPasswordForm extends StatefulWidget {
  const ForgotPasswordForm({super.key});

  @override
  State<ForgotPasswordForm> createState() => _ForgotPasswordFormState();
}

class _ForgotPasswordFormState extends State<ForgotPasswordForm> {
  final _formKey = GlobalKey<FormState>();
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
              if (value.isNotEmpty && ForgotPasswordModel.errors.contains(AppStrings.kEmailNullError)) {
                setState(() {
                  ForgotPasswordModel.errors.remove(AppStrings.kEmailNullError);
                });
              } else if (AppConstants.emailValidatorRegExp.hasMatch(value) && ForgotPasswordModel.errors.contains(AppStrings.kInvalidEmailError)) {
                setState(() {
                  ForgotPasswordModel.errors.remove(AppStrings.kInvalidEmailError);
                });
              }
              return;
            },
            validator: (value) {
              if (value!.isEmpty && !ForgotPasswordModel.errors.contains(AppStrings.kEmailNullError)) {
                setState(() {
                  ForgotPasswordModel.errors.add(AppStrings.kEmailNullError);
                });
              } else if (!AppConstants.emailValidatorRegExp.hasMatch(value) && !ForgotPasswordModel.errors.contains(AppStrings.kInvalidEmailError)) {
                setState(() {
                  ForgotPasswordModel.errors.add(AppStrings.kInvalidEmailError);
                });
              }
              return null;
            },
          ),
          SizedBox(
            height: AppSizeConfig.getProportionateScreenHeight(30),
          ),
          FormError(
            formErrors: ForgotPasswordModel.errors,
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
