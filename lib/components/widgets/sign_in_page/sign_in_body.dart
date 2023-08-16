import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/components/widgets/reusable_button.dart';
import 'package:flutter_e_commerce_app/config/app_assets.dart';
import 'package:flutter_e_commerce_app/config/app_constants.dart';
import 'package:flutter_e_commerce_app/config/app_size_config.dart';
import 'package:flutter_e_commerce_app/config/app_string.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'custom_suffix_icon.dart';

class SignInPageBody extends StatelessWidget {
  const SignInPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppSizeConfig.getProportionateScreenWidth(20),
          ),
          child: Column(
            children: [
              Text(
                AppStrings.welcomeBack,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: AppSizeConfig.getProportionateScreenWidth(28),
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                AppStrings.signInWithEmailPassword,
                textAlign: TextAlign.center,
              ),
              const SignInForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class SignInForm extends StatefulWidget {
  const SignInForm({super.key});

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];

  String email;
  String password;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          // CustomTextFormField(
          //   labelText: AppStrings.email,
          //   hintText: AppStrings.enterEmail,
          //   icon: AppAssets.mail,
          //   errors: errors,
          // ),
          buildEmailTextFormField(),
          SizedBox(
            height: AppSizeConfig.getProportionateScreenHeight(20),
          ),
          buildPasswordTextFormField(),
          // CustomTextFormField(
          //   labelText: AppStrings.password,
          //   hintText: AppStrings.enterPassword,
          //   icon: AppAssets.lock,
          //   obscureText: true,
          //   errors: errors,
          // ),
          SizedBox(
            height: AppSizeConfig.getProportionateScreenHeight(20),
          ),
          FormError(errors: errors),
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
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
        labelText: AppStrings.password,
        hintText: AppStrings.enterPassword,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          icon: AppAssets.lock,
        ),
      ),
    );
  }

  TextFormField buildEmailTextFormField() {
    return TextFormField(
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
        } else if (AppConstants.emailValidatorRegExp.hasMatch(value) && errors.contains(AppStrings.kEmailNullError)) {
          setState(() {
            errors.remove(AppStrings.kInvalidEmailNullError);
          });
        }
        return;
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(AppStrings.kEmailNullError)) {
          setState(() {
            errors.add(AppStrings.kEmailNullError);
          });
        } else if (!AppConstants.emailValidatorRegExp.hasMatch(value) && !errors.contains(AppStrings.kEmailNullError)) {
          setState(() {
            errors.add(AppStrings.kInvalidEmailNullError);
          });
        }
        return null;
      },
    );
  }
}

class FormError extends StatelessWidget {
  const FormError({
    super.key,
    required this.errors,
  });

  final List<String> errors;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        errors.length,
        (index) => FormErrorText(
          errors: errors,
          index: index,
        ),
      ),
    );
  }
}

class FormErrorText extends StatelessWidget {
  const FormErrorText({
    super.key,
    required this.errors,
    required this.index,
  });

  final List<String> errors;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          AppAssets.error,
          height: AppSizeConfig.getProportionateScreenWidth(14),
          width: AppSizeConfig.getProportionateScreenWidth(14),
        ),
        SizedBox(
          width: AppSizeConfig.getProportionateScreenWidth(20),
        ),
        Text(errors[index]),
      ],
    );
  }
}

// class CustomTextFormField extends StatefulWidget {
//   const CustomTextFormField({
//     super.key,
//     required this.labelText,
//     required this.hintText,
//     required this.icon,
//     this.obscureText = false,
//     required this.errors,
//   });
//
//   final String labelText;
//   final String hintText;
//   final String icon;
//   final bool obscureText;
//   final List<String> errors;
//
//   @override
//   State<CustomTextFormField> createState() => _CustomTextFormFieldState();
// }
//
// class _CustomTextFormFieldState extends State<CustomTextFormField> {
//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       obscureText: widget.obscureText,
//       keyboardType: TextInputType.emailAddress,
//       decoration: InputDecoration(
//         labelText: widget.labelText,
//         hintText: widget.labelText,
//         floatingLabelBehavior: FloatingLabelBehavior.always,
//         suffixIcon: CustomSuffixIcon(
//           icon: widget.icon,
//         ),
//       ),
//       validator: (value) {
//         if (value!.isEmpty && !widget.errors.contains(AppStrings.kEmailNullError)) {
//           setState(() {
//             widget.errors.add(AppStrings.kEmailNullError);
//           });
//         } else if (!AppConstants.emailValidatorRegExp.hasMatch(value) && !widget.errors.contains(AppStrings.kEmailNullError)) {
//           setState(() {
//             widget.errors.add(AppStrings.kInvalidEmailNullError);
//           });
//         }
//         return null;
//       },
//     );
//   }
// }
