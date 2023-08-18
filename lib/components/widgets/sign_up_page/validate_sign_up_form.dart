import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/components/widgets/sign_in_page/form_error.dart';
import 'package:flutter_e_commerce_app/config/app_size_config.dart';

import '../../../config/app_assets.dart';
import '../../../config/app_constants.dart';
import '../../../config/app_string.dart';
import '../custom_suffix_icon.dart';

class ValidateSignUpForm extends StatefulWidget {
  const ValidateSignUpForm({super.key});

  @override
  State<ValidateSignUpForm> createState() => _ValidateSignUpFormState();
}

class _ValidateSignUpFormState extends State<ValidateSignUpForm> {
  final List<String> errors = [];

  late String email;
  late String password;
  late String confirmPassword;

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
    return Column(
      children: [
        buildEmailTextFormField(),
        SizedBox(
          height: AppSizeConfig.getProportionateScreenHeight(30),
        ),
        buildPasswordTextFormField(),
        SizedBox(
          height: AppSizeConfig.getProportionateScreenHeight(30),
        ),
        buildConfirmPasswordTextFormField(),
        FormError(formErrors: errors),
      ],
    );
  }

  TextFormField buildEmailTextFormField() {
    return TextFormField(
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
        if (value.isNotEmpty) {
          removeError(error: AppStrings.kEmailNullError);
        } else if (AppConstants.emailValidatorRegExp.hasMatch(value)) {
          removeError(error: AppStrings.kInvalidEmailError);
        }

        return;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: AppStrings.kEmailNullError);

          return "";
        } else if (!AppConstants.emailValidatorRegExp.hasMatch(value)) {
          addError(error: AppStrings.kInvalidEmailError);

          return "";
        }

        return null;
      },
    );
  }

  TextFormField buildPasswordTextFormField() {
    return TextFormField(
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
        } else if (value.length >= 8) {
          removeError(error: AppStrings.kShortPassError);
        }

        password = value;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: AppStrings.kPassNullError);

          return "";
        } else if (value.length >= 8) {
          addError(error: AppStrings.kShortPassError);

          return "";
        }

        return null;
      },
    );
  }

  TextFormField buildConfirmPasswordTextFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => confirmPassword = newValue!,
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
        labelText: AppStrings.confirmPassword,
        hintText: AppStrings.reEnterPassword,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          icon: AppAssets.lock,
        ),
      ),
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: AppStrings.kPassNullError);
        } else if (value.isNotEmpty && password == confirmPassword) {
          removeError(error: AppStrings.kMissMatchPassError);
        }

        confirmPassword = value;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: AppStrings.kPassNullError);

          return "";
        } else if (password != value) {
          addError(error: AppStrings.kMissMatchPassError);

          return "";
        }

        return null;
      },
    );
  }
}
