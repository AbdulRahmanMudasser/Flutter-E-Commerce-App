import 'package:flutter/material.dart';

import 'form_error_text.dart';

class FormError extends StatelessWidget {
  const FormError({
    super.key,
    required this.formErrors,
  });

  final List<String> formErrors;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        formErrors.length,
        (index) => FormErrorText(
          formErrors: formErrors,
          index: index,
        ),
      ),
    );
  }
}
