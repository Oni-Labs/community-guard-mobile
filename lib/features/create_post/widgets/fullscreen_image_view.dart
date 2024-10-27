import 'dart:io';

import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class FullscreenImageView extends StatefulWidget {
  const FullscreenImageView({super.key, this.image});

  final XFile? image;

  @override
  State<FullscreenImageView> createState() => _FullscreenImageViewState();
}

class _FullscreenImageViewState extends State<FullscreenImageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Center(
          child: ExtendedImage.file(
            File(widget.image!.path),
            fit: BoxFit.contain,
            //enableLoadState: false,
            mode: ExtendedImageMode.gesture,
            initGestureConfigHandler: (state) {
              return GestureConfig(
                minScale: 0.9,
                animationMinScale: 0.7,
                maxScale: 3.0,
                animationMaxScale: 3.5,
                speed: 1.0,
                inertialSpeed: 100.0,
                initialScale: 1.0,
                inPageView: false,
                initialAlignment: InitialAlignment.center,
              );
            },
          ),
        ),
      ),
    );
  }
}
