import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final double height;
  final double width;
  final String imagePath;
  final VoidCallback onIconPressed;

  const CustomCard({
    super.key,
    this.height = 150.0,
    this.width = 150.0,
    required this.imagePath,
    required this.onIconPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: SizedBox(
              height: height,
              width: width,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          IconButton(
            icon: const Icon(
              Icons.layers,
              color: Colors.white,
            ),
            onPressed: onIconPressed,
          ),
        ],
      ),
    );
  }
}
