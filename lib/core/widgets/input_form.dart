import 'package:flutter/material.dart';

class InputForm extends StatelessWidget {
  const InputForm({
    super.key,
    required this.controller,
    this.label,
    this.color,
    this.onChanged,
    this.obscureText = false,
    this.suffixIcon,
    this.prefixIcon,
    this.onObscureTap,
    this.validator,
    this.prefixColor,
    this.suffixColor,
    this.labelSize = 15,
    this.labelWeight = FontWeight.normal,
    this.suffixOnTap,
    this.borderColor,
    this.padding = const EdgeInsets.all(8.0),
  });

  final String? label;
  final Color? color;
  final TextEditingController controller;
  final bool obscureText;
  final IconData? suffixIcon;
  final IconData? prefixIcon;
  final Function(String)? onChanged;
  final VoidCallback? onObscureTap;
  final String? Function(String?)? validator;
  final Color? prefixColor;
  final Color? suffixColor;
  final double? labelSize;
  final FontWeight? labelWeight;
  final VoidCallback? suffixOnTap;
  final Color? borderColor;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding!,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: TextFormField(
          validator: validator,
          controller: controller,
          decoration: InputDecoration(
            floatingLabelBehavior: FloatingLabelBehavior.auto, // Ajustado para auto flutuar
            labelText: label, // Label real em vez de hintText
            labelStyle: TextStyle(
              color: color,
              fontSize: labelSize,
              fontWeight: labelWeight,
            ),
            prefixIcon: prefixIcon != null
                ? Icon(
              prefixIcon,
              color: prefixColor ?? Colors.grey,
            )
                : null,
            suffixIcon: suffixIcon != null
                ? GestureDetector(
              onTap: suffixOnTap,
              child: Icon(
                suffixIcon,
                color: suffixColor ?? Colors.grey,
              ),
            )
                : null,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: borderColor ?? Colors.grey),
            ),
            contentPadding: const EdgeInsets.symmetric(horizontal: 10),
          ),
          onChanged: onChanged,
          obscureText: obscureText,
        ),
      ),
    );
  }
}
