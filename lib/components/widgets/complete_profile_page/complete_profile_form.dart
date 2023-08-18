import 'package:flutter/material.dart';

import '../../../config/app_assets.dart';
import '../../../config/app_size_config.dart';
import '../../../config/app_string.dart';
import '../custom_suffix_icon.dart';
import '../reusable_button.dart';
import '../sign_in_page/form_error.dart';

class CompleteProfileForm extends StatefulWidget {
  const CompleteProfileForm({super.key});

  @override
  State<CompleteProfileForm> createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  final _formKey = GlobalKey<FormState>();

  List<String> errors = [];

  late String firstName;
  late String secondName;
  late String phoneNumber;
  late String address;

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
          buildFirstNameTextFormField(),
          SizedBox(
            height: AppSizeConfig.getProportionateScreenHeight(30),
          ),
          buildSecondNameTextFormField(),
          SizedBox(
            height: AppSizeConfig.getProportionateScreenHeight(30),
          ),
          buildPhoneNumberTextFormField(),
          SizedBox(
            height: AppSizeConfig.getProportionateScreenHeight(30),
          ),
          buildAddressTextFormField(),
          FormError(formErrors: errors),
          SizedBox(
            height: AppSizeConfig.getProportionateScreenHeight(40),
          ),
          ReusableButton(
            text: AppStrings.continueText,
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                // _formKey.currentState!.save();
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildFirstNameTextFormField() {
    return TextFormField(
      onSaved: (newValue) => firstName = newValue!,
      decoration: const InputDecoration(
        labelText: AppStrings.firstName,
        hintText: AppStrings.enterFirstName,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          icon: AppAssets.user,
        ),
      ),
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: AppStrings.kNameNullError);
        }

        return;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: AppStrings.kNameNullError);

          return "";
        }

        return null;
      },
    );
  }

  TextFormField buildSecondNameTextFormField() {
    return TextFormField(
      onSaved: (newValue) => secondName = newValue!,
      decoration: const InputDecoration(
        labelText: AppStrings.secondName,
        hintText: AppStrings.enterSecondName,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          icon: AppAssets.user,
        ),
      ),
    );
  }

  TextFormField buildPhoneNumberTextFormField() {
    return TextFormField(
      onSaved: (newValue) => phoneNumber = newValue!,
      decoration: const InputDecoration(
        labelText: AppStrings.phoneNumber,
        hintText: AppStrings.enterPhoneNumber,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          icon: AppAssets.phone,
        ),
      ),
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: AppStrings.kPhoneNumberNullError);
        }

        return;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: AppStrings.kPhoneNumberNullError);

          return "";
        }

        return null;
      },
    );
  }

  TextFormField buildAddressTextFormField() {
    return TextFormField(
      onSaved: (newValue) => address = newValue!,
      maxLines: 2,
      decoration: const InputDecoration(
        labelText: AppStrings.address,
        hintText: AppStrings.enterAddress,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          icon: AppAssets.location,
        ),
      ),
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: AppStrings.kPhoneNumberNullError);
        }

        return;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: AppStrings.kPhoneNumberNullError);

          return "";
        }

        return null;
      },
    );
  }
}
