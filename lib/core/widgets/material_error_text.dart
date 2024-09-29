import 'package:flutter/material.dart';

class MaterialErrorText extends StatelessWidget {
  const MaterialErrorText(this.errorText, {super.key});

  final String errorText;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Text(
      errorText,
      style:
      theme.textTheme.bodySmall!.copyWith(color: theme.colorScheme.error),
      textAlign: TextAlign.start,
      overflow: TextOverflow.ellipsis,
      maxLines: 2,
    );
  }
}
