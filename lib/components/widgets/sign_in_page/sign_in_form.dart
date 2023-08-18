import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/components/widgets/sign_in_page/remember_me_forgot_password.dart';

import '../../../config/app_assets.dart';
import '../../../config/app_constants.dart';
import '../../../config/app_size_config.dart';
import '../../../config/app_string.dart';
import '../reusable_button.dart';
import '../custom_suffix_icon.dart';
import 'form_error.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({super.key});

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final _formKey = GlobalKey<FormState>();

  static List<String> errors = [];
  late String email;
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
          buildEmailTextFormField(),
          SizedBox(
            height: AppSizeConfig.getProportionateScreenHeight(30),
          ),
          buildPasswordTextFormField(),
          SizedBox(
            height: AppSizeConfig.getProportionateScreenHeight(20),
          ),
          const RememberMeForgotPassword(),
          SizedBox(
            height: AppSizeConfig.getProportionateScreenHeight(30),
          ),
          FormError(
            formErrors: errors,
          ),
          SizedBox(
            height: AppSizeConfig.getProportionateScreenHeight(20),
          ),
          ReusableButton(
            text: AppStrings.continueText,
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();

                // if all are valid then go to success page
                Navigator.pushNamed(context, "/loginSuccessPage");
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
        // if (value.isNotEmpty && errors.contains(AppStrings.kPassNullError)) {
        //   setState(() {
        //     errors.remove(AppStrings.kPassNullError);
        //   });
        //
        //   return;
        // } else if (value.length >= 8 && errors.contains(AppStrings.kShortPassError)) {
        //   setState(() {
        //     errors.remove(AppStrings.kShortPassError);
        //   });
        //
        //   return;
        // }

        if(value.isNotEmpty) {
          removeError(error: AppStrings.kPassNullError);
        } else if(value.length >= 8) {
          removeError(error: AppStrings.kShortPassError);
        }

        return;
      },
      validator: (value) {
        // if (value!.isEmpty && !errors.contains(AppStrings.kPassNullError)) {
        //   setState(() {
        //     errors.add(AppStrings.kPassNullError);
        //   });
        //
        //   return "";
        // } else if (value.length < 8 && !errors.contains(AppStrings.kShortPassError)) {
        //   setState(() {
        //     errors.add(AppStrings.kShortPassError);
        //   });
        //
        //   return "";
        // }

        if(value!.isEmpty) {
          addError(error: AppStrings.kPassNullError);

          return "";
        } else if(value.length < 8) {
          addError(error: AppStrings.kShortPassError);

          return "";
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
        // if (value.isNotEmpty && errors.contains(AppStrings.kEmailNullError)) {
        //   setState(() {
        //     errors.remove(AppStrings.kEmailNullError);
        //   });
        // } else if (AppConstants.emailValidatorRegExp.hasMatch(value) && errors.contains(AppStrings.kInvalidEmailError)) {
        //   setState(() {
        //     errors.remove(AppStrings.kInvalidEmailError);
        //   });
        // }

        if (value.isNotEmpty) {
          removeError(error: AppStrings.kEmailNullError);
        } else if (AppConstants.emailValidatorRegExp.hasMatch(value)) {
          removeError(error: AppStrings.kInvalidEmailError);
        }

        return;
      },
      validator: (value) {
        // if (value!.isEmpty && !errors.contains(AppStrings.kEmailNullError)) {
        //   setState(() {
        //     errors.add(AppStrings.kEmailNullError);
        //   });
        //
        //   return "";
        // } else if (!AppConstants.emailValidatorRegExp.hasMatch(value) && !errors.contains(AppStrings.kInvalidEmailError)) {
        //   setState(() {
        //     errors.add(AppStrings.kInvalidEmailError);
        //   });
        //
        //   return "";
        // }

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
}
