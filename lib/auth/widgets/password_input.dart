import 'package:flutter/material.dart';
import '../../core/widgets/input_form.dart';

class PasswordInput extends StatefulWidget {
  final TextEditingController controller;

  const PasswordInput({super.key, required this.controller});

  @override
  _PasswordInputState createState() => _PasswordInputState();
}

class _PasswordInputState extends State<PasswordInput> {
  bool _isPasswordVisible = true;

  @override
  Widget build(BuildContext context) {
    return InputForm(
      controller: widget.controller,
      label: 'Senha',
      prefixIcon: Icons.lock,
      prefixColor: const Color(0xFF972DA8),
      suffixIcon: _isPasswordVisible ? Icons.visibility_off : Icons.visibility,
      suffixColor: const Color(0xFF972DA8),
      suffixOnTap: () {
        setState(() {
          _isPasswordVisible = !_isPasswordVisible;
        });
      },
      obscureText: _isPasswordVisible,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Insira uma senha';
        }
        return null;
      },
    );
  }
}
