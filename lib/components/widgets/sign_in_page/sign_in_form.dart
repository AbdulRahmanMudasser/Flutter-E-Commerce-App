import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/components/widgets/sign_in_page/remember_me_forgot_password.dart';
import 'package:flutter_e_commerce_app/models/sign_in_model.dart';

import '../../../config/app_assets.dart';
import '../../../config/app_constants.dart';
import '../../../config/app_size_config.dart';
import '../../../config/app_string.dart';
import '../reusable_button.dart';
import 'custom_suffix_icon.dart';
import 'form_error.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({super.key});

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final _formKey = GlobalKey<FormState>();

  late String email;
  late String password;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailTextFormField(),
          SizedBox(
            height: AppSizeConfig.getProportionateScreenHeight(20),
          ),
          buildPasswordTextFormField(),
          SizedBox(
            height: AppSizeConfig.getProportionateScreenHeight(20),
          ),
          const RememberMeForgotPassword(),
          const FormError(),
          SizedBox(
            height: AppSizeConfig.getProportionateScreenHeight(20),
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
        if (value.isNotEmpty && SignInModel.errors.contains(AppStrings.kPassNullError)) {
          setState(() {
            SignInModel.errors.remove(AppStrings.kPassNullError);
          });
        } else if (value.length >= 8 && SignInModel.errors.contains(AppStrings.kShortPassError)) {
          setState(() {
            SignInModel.errors.remove(AppStrings.kShortPassError);
          });
        }
        return;
      },
      validator: (value) {
        if (value!.isEmpty && !SignInModel.errors.contains(AppStrings.kPassNullError)) {
          setState(() {
            SignInModel.errors.add(AppStrings.kPassNullError);
          });
        } else if (value.length < 8 && !SignInModel.errors.contains(AppStrings.kShortPassError)) {
          setState(() {
            SignInModel.errors.add(AppStrings.kShortPassError);
          });
        }
        return null;
      },
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
        if (value.isNotEmpty && SignInModel.errors.contains(AppStrings.kEmailNullError)) {
          setState(() {
            SignInModel.errors.remove(AppStrings.kEmailNullError);
          });
        } else if (AppConstants.emailValidatorRegExp.hasMatch(value) && SignInModel.errors.contains(AppStrings.kInvalidEmailError)) {
          setState(() {
            SignInModel.errors.remove(AppStrings.kInvalidEmailError);
          });
        }
        return;
      },
      validator: (value) {
        if (value!.isEmpty && !SignInModel.errors.contains(AppStrings.kEmailNullError)) {
          setState(() {
            SignInModel.errors.add(AppStrings.kEmailNullError);
          });
        } else if (!AppConstants.emailValidatorRegExp.hasMatch(value) && !SignInModel.errors.contains(AppStrings.kInvalidEmailError)) {
          setState(() {
            SignInModel.errors.add(AppStrings.kInvalidEmailError);
          });
        }
        return null;
      },
    );
  }
}

