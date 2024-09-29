import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImageItem extends StatefulWidget {
  const ImageItem({
    super.key,
    required this.image,
    this.onTap,
    this.onLongPress,
  });

  final XFile image;
  final GestureTapCallback? onTap;
  final GestureLongPressCallback? onLongPress;

  @override
  State<ImageItem> createState() => _ImageItemState();
}

class _ImageItemState extends State<ImageItem> {
  BoxDecoration _getDecoration() {
    return BoxDecoration(
      border: Border.all(color: Theme.of(context).colorScheme.outline),
      borderRadius: BorderRadius.circular(8),
    );
  }

  Widget _buildThumbnail() {
    return SizedBox(
      width: 90,
      height: 90,
      child: widget.image.path.isPDFFileName
          ? const Center(
        child: Icon(Icons.picture_as_pdf),
      )
          : Image.file(
        File(widget.image.path),
        fit: BoxFit.cover,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 16.0),
      child: GestureDetector(
        // borderRadius: BorderRadius.circular(8.0),
        onTap: widget.onTap,
        onLongPress: widget.onLongPress,
        child: Container(
          width: 90,
          height: 90,
          decoration: _getDecoration(),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: _buildThumbnail(),
            // child: Image.file(File(widget.image.path)),
          ),
        ),
      ),
    );
  }
}
