import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ContainerSocialMedia extends StatelessWidget {
  const ContainerSocialMedia({
    super.key,
    this.icon,
    this.iconColor,
    required this.label,
    required this.textColor,
    required this.fontSize,
    this.borderColor,
    required this.backgroundColor,
    required this.padding,
    required this.imagePath,
  });

  final IconData? icon;
  final String label;
  final Color? iconColor;
  final Color textColor;
  final double fontSize;
  final Color? borderColor;
  final Color backgroundColor;
  final EdgeInsetsGeometry padding;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        border: Border.all(
          color: borderColor ?? Colors.transparent,
        ),
        borderRadius: BorderRadius.circular(10),
        color: backgroundColor,
      ),
      child: Row(
        children: [
          SvgPicture.asset(
            imagePath,
            semanticsLabel: 'Logo',
            height: 20,
            width: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              label,
              style: TextStyle(
                color: textColor,
                fontSize: fontSize,
              ),
            ),
          )
        ],
      ),
    );
  }
}
