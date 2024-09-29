import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'image_picker_origin.dart';

class ImagePickerOriginDialog extends StatefulWidget {
  const ImagePickerOriginDialog({super.key});

  @override
  State<ImagePickerOriginDialog> createState() =>
      _ImagePickerOriginDialogState();
}

class _ImagePickerOriginDialogState extends State<ImagePickerOriginDialog> {
  Widget _buildOption({
    required String title,
    required Color color,
    required Widget icon,
    void Function()? onTap,
  }) {
    return InkWell(
      onTap: () => onTap?.call(),
      highlightColor: Colors.transparent,
      borderRadius: const BorderRadius.all(Radius.circular(28.0)),
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        leading: Container(
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(50.0),
          ),
          child: icon,
        ),
        title: Text(title),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Abrir de...'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildOption(
            title: ImagePickerOrigin.camera.label,
            color: ImagePickerOrigin.camera.backgroundColor,
            icon: ImagePickerOrigin.camera.icon,
            onTap: () {
              context.pop(ImagePickerOrigin.camera);
            },
          ),
          _buildOption(
            title: ImagePickerOrigin.gallery.label,
            color: ImagePickerOrigin.gallery.backgroundColor,
            icon: ImagePickerOrigin.gallery.icon,
            onTap: () {
              context.pop(ImagePickerOrigin.gallery);
            },
          ),
          _buildOption(
              title: ImagePickerOrigin.files.label,
              color: ImagePickerOrigin.files.backgroundColor,
              icon: ImagePickerOrigin.files.icon,
              onTap: () {
                context.pop(ImagePickerOrigin.files);
              }),
        ],
      ),
    );
  }
}
