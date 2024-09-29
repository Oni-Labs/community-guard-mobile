import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
import '../../core/widgets/input_form.dart';

class EmailInput extends StatelessWidget {
  final TextEditingController controller;

  const EmailInput({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return InputForm(
      controller: controller,
      label: 'Email',
      prefixIcon: Icons.email,
      prefixColor: const Color(0xFF972DA8),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Insira um email';
        }
        if (!EmailValidator.validate(value)) {
          return 'Insira um email válido';
        }
        return null;
      },
    );
  }
}
