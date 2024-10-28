import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ImageItem extends StatefulWidget {
  const ImageItem({
    super.key,
    required this.image,
    this.onTap,
    this.onRemove,
  });

  final File image;
  final GestureTapCallback? onTap;
  final GestureTapCallback? onRemove;

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
    return Stack(
      alignment: Alignment.topRight,
      children: [
        SizedBox(
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
        ),
        Positioned(
          top: 1,
          right: 1,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            width: 30,
            height: 30,
            child: IconButton(
              padding: EdgeInsets.zero,
              onPressed: widget.onRemove,
              icon: const Icon(
                Icons.delete,
                size: 18,
              ),
              color: Colors.redAccent,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 16.0),
      child: GestureDetector(
        onTap: widget.onTap,
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
