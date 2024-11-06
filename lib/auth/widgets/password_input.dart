import 'package:flutter/material.dart';
import '../../core/widgets/input_form.dart';

class PasswordInput extends StatefulWidget {
  final TextEditingController controller;

  const PasswordInput({super.key, required this.controller});

  @override
  // ignore: library_private_types_in_public_api
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
      prefixColor: Colors.deepPurple,
      suffixIcon: _isPasswordVisible ? Icons.visibility_off : Icons.visibility,
      suffixColor: Colors.deepPurple,
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
