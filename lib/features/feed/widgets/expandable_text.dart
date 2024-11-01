import 'package:flutter/material.dart';

class ExpandableText extends StatefulWidget {
  final String text;
  final String user;
  final int maxLines;

  const ExpandableText({
    super.key,
    required this.text,
    required this.user,
    this.maxLines = 2,
  });

  @override
  // ignore: library_private_types_in_public_api
  _ExpandableTextState createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  bool isExpanded = false;

  void _toggleExpanded() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      color: Colors.black,
      fontSize: 12,
    );

    return LayoutBuilder(
      builder: (context, constraints) {
        final textSpan = TextSpan(text: widget.text, style: textStyle);
        final textPainter = TextPainter(
          text: textSpan,
          maxLines: widget.maxLines,
          textDirection: TextDirection.ltr,
        )..layout(maxWidth: constraints.maxWidth);

        final isOverflowing = textPainter.didExceedMaxLines;

        return Padding(
          padding: const EdgeInsets.only(
            top: 10,
            left: 10,
            right: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.user,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
              Text(
                widget.text,
                maxLines: isExpanded ? null : widget.maxLines,
                overflow:
                    isExpanded ? TextOverflow.visible : TextOverflow.ellipsis,
                style: textStyle,
              ),
              if (isOverflowing)
                GestureDetector(
                  onTap: _toggleExpanded,
                  child: Text(
                    isExpanded ? 'Ver menos' : 'Ver mais',
                    style: const TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
            ],
          ),
        );
      },
    );
  }
}
