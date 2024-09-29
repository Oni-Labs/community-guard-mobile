import 'package:flutter/material.dart';

class DropdownField<T> extends StatelessWidget {
  const DropdownField({
    super.key,
    required this.title,
    required this.options,
    required this.display,
    required this.onChanged,
    this.value,
    this.enabled = true,
    this.validator,
    this.padding,
    this.showNoneOption = false,
  });

  final List<T> options;
  final String title;
  final String Function(T value) display;
  final ValueChanged<T?>? onChanged;
  final T? value;
  final bool enabled;
  final bool showNoneOption;
  final String? Function(T? value)? validator;
  final EdgeInsetsGeometry? padding;

  List<DropdownMenuItem<T>> _getItems(BuildContext context) {
    return [
      if (showNoneOption)
        DropdownMenuItem<T>(
          value: null,
          child: Text(
            'Selecione...',
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(color: Theme.of(context).hintColor),
          ),
        ),
      for (final option in options) _getItemWidget(option)
    ];
  }

  DropdownMenuItem<T> _getItemWidget(T value) {
    return DropdownMenuItem<T>(
      value: value,
      child: Text(
        display.call(value),
        overflow: TextOverflow.ellipsis,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.all(8),
      child: DropdownButtonFormField<T>(
        isExpanded: false,
        icon: const Icon(Icons.arrow_drop_down),
        iconSize: 24,
        elevation: 16,
        onChanged: enabled ? onChanged : null,
        value: value,
        items: _getItems(context),
        validator: validator,
        decoration: InputDecoration(
          enabled: enabled,
          labelText: title,
          hintText: 'Selecione...',
          border: const OutlineInputBorder(),
        ),
      ),
    );
  }
}
