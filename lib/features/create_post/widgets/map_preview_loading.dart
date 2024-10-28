import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ServiceMapPreviewLoading extends StatelessWidget {
  const ServiceMapPreviewLoading({super.key, this.padding});

  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.all(0.0),
      child: Shimmer.fromColors(
        baseColor: Colors.grey.withOpacity(0.6),
        highlightColor: Colors.grey.withOpacity(0.4),
        child: SizedBox(
          height: 150,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: Container(
              color: Colors.grey[300],
            ),
          ),
        ),
      ),
    );
  }
}
