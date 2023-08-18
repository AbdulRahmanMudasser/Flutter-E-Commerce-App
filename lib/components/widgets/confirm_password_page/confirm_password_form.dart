import 'package:flutter/material.dart';

import '../../../config/app_assets.dart';
import '../../../config/app_size_config.dart';
import '../../../config/app_string.dart';
import '../custom_suffix_icon.dart';
import '../reusable_button.dart';
import '../sign_in_page/form_error.dart';

class ConfirmPasswordForm extends StatefulWidget {
  const ConfirmPasswordForm({super.key});

  @override
  State<ConfirmPasswordForm> createState() => _ConfirmPasswordFormState();
}

class _ConfirmPasswordFormState extends State<ConfirmPasswordForm> {
  final _formKey = GlobalKey<FormState>();

  List<String> errors = [];

  late String password;

  void addError({required String error}) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error);
      });
    }
  }

  void removeError({required String error}) {
    if (errors.contains(error)) {
      setState(() {
        errors.remove(error);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            obscureText: true,
            onSaved: (newValue) => password = newValue!,
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              labelText: AppStrings.password,
              hintText: AppStrings.enterPassword,
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: CustomSuffixIcon(
                icon: AppAssets.lock,
              ),
            ),
            onChanged: (value) {
              if (value.isNotEmpty) {
                removeError(error: AppStrings.kPassNullError);
              } else if (value.isNotEmpty && value.length >= 8) {
                removeError(error: AppStrings.kShortPassError);
              }

              password = value;
            },
            validator: (value) {
              if (value!.isEmpty) {
                addError(error: AppStrings.kPassNullError);

                return "";
              } else if (value.length < 8) {
                addError(error: AppStrings.kShortPassError);

                return "";
              }

              return null;
            },
          ),
          SizedBox(
            height: AppSizeConfig.getProportionateScreenHeight(30),
          ),
          FormError(formErrors: errors),
          SizedBox(
            height: AppSizeConfig.screenHeight * 0.1,
          ),
          ReusableButton(
            text: AppStrings.continueText,
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
              }
            },
          ),
        ],
      ),
    );
  }
}
