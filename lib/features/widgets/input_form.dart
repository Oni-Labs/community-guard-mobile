import 'package:flutter/material.dart';

class InputForm extends StatelessWidget {
  const InputForm({
    super.key,
    required this.label,
    required this.isValid,
    required this.color,
    required this.controller,
    required this.onChanged,
  });

  final String label;
  final bool isValid;
  final Color color;
  final TextEditingController controller;
  final Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label),
        const SizedBox(height: 10),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: isValid
                ? Border.all(
                    width: 0.5,
                    color: color,
                  )
                : Border.all(width: 0.5, color: Colors.grey),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: TextField(
              controller: controller,
              decoration: const InputDecoration(border: InputBorder.none),
              onChanged: onChanged,
            ),
          ),
        ),
      ],
    );
  }
}
