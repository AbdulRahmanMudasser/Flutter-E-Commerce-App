import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/models/sign_in_model.dart';

import 'form_error_text.dart';

class FormError extends StatelessWidget {
  const FormError({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        SignInModel.errors.length,
            (index) => FormErrorText(
          index: index,
        ),
      ),
    );
  }
}

