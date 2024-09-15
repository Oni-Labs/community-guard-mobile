import 'package:flutter/material.dart';

class InputForm extends StatelessWidget {
  const InputForm({
    super.key,
    required this.label,
    this.isValid,
    required this.color,
    required this.controller,
    required this.onChanged,
    this.obscureText = false,
    this.icon,
    this.onObscureTap,
    this.validator,
  });

  final String label;
  final bool? isValid;
  final Color color;
  final TextEditingController controller;
  final bool obscureText;
  final IconData? icon;
  final Function(String) onChanged;
  final VoidCallback? onObscureTap;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label),
          const SizedBox(height: 10),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextFormField(
              validator: validator,
              controller: controller,
              decoration: InputDecoration(
                suffixIcon: IconButton(icon: Icon(icon), onPressed: onObscureTap),
                border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                contentPadding: const EdgeInsets.all(10),
              ),
              onChanged: onChanged,
              obscureText: obscureText,
            ),
          ),
        ],
      ),
    );
  }
}
