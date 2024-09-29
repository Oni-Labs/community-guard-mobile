import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OutlinedTextField extends StatelessWidget {
  const OutlinedTextField({
    super.key,
    this.label,
    this.initialValue,
    this.controller,
    this.validator,
    this.keyboardType,
    this.inputFormatters,
    this.autofillHints,
    this.padding,
    this.onChanged,
    this.onFieldSubmitted,
    this.onEditingComplete,
    this.onSaved,
    this.onTapOutside,
    this.helperText,
    this.hintText,
    this.errorText,
    this.prefixIcon,
    this.suffixIcon,
    this.suffixIconOnTap,
    this.enabled = true,
    this.obscureText = false,
    this.readOnly = false,
    this.onTap,
    this.minLines,
    this.maxLines = 1,
    this.focusNode,
  });

  final String? label;
  final String? hintText;
  final String? helperText;
  final String? errorText;
  final String? initialValue;
  final Iterable<String>? autofillHints;
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final bool enabled;
  final bool obscureText;
  final bool readOnly;
  final EdgeInsetsGeometry? padding;
  final IconData? suffixIcon;
  final void Function()? suffixIconOnTap;
  final IconData? prefixIcon;
  final GestureTapCallback? onTap;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onFieldSubmitted;
  final ValueChanged<String?>? onSaved;
  final TapRegionCallback? onTapOutside;
  final VoidCallback? onEditingComplete;
  final int? minLines;
  final int? maxLines;
  final FocusNode? focusNode;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.all(8),
      child: TextFormField(
        autofillHints: autofillHints,
        initialValue: initialValue,
        obscureText: obscureText,
        controller: controller,
        validator: validator,
        onChanged: onChanged,
        focusNode: focusNode,
        onFieldSubmitted: onFieldSubmitted,
        onTapOutside: onTapOutside,
        onEditingComplete: onEditingComplete,
        onSaved: onSaved,
        readOnly: readOnly,
        enabled: enabled,
        onTap: onTap,
        minLines: minLines,
        maxLines: maxLines,
        keyboardType: keyboardType ?? TextInputType.text,
        inputFormatters: inputFormatters,
        decoration: InputDecoration(
          suffixIcon: suffixIcon != null
              ? GestureDetector(onTap: suffixIconOnTap, child: Icon(suffixIcon))
              : null,
          prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
          labelText: label,
          hintText: hintText,
          helperText: helperText,
          errorText: errorText,
          helperMaxLines: 3,
          alignLabelWithHint: true,
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
        ),
      ),
    );
  }
}
