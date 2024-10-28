import 'dart:io';

import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../../core/router.dart';
import 'image_item.dart';
import '../../../core/widgets/image_picker_origin.dart';
import '../../../core/widgets/image_picker_origin_dialog.dart';
import '../../../core/widgets/material_error_text.dart';

class PicturesSlider extends StatefulWidget {
  const PicturesSlider({
    super.key,
    required this.title,
    this.validator,
  });

  final String title;
  final FormFieldValidator<List<XFile>>? validator;

  @override
  PicturesSliderState createState() => PicturesSliderState();
}

class PicturesSliderState extends State<PicturesSlider> {
  final _picker = ImagePicker();
  final List<XFile> _images = [];

  Future<void> _pickImages() async {
    final origin = await showDialog<ImagePickerOrigin>(
      context: context,
      builder: (context) => const ImagePickerOriginDialog(),
    );

    if (origin == ImagePickerOrigin.files) {
      final result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['jpg', 'png', 'heif', 'heic'],
      );

      if (result != null) {
        final file = XFile(result.files.single.path!);
        setState(() => _images.add(file));
      }
    } else if (origin == ImagePickerOrigin.camera) {
      final image = await _picker.pickImage(source: ImageSource.camera);

      if (image != null) {
        setState(() => _images.add(image));
      }
    } else if (origin == ImagePickerOrigin.gallery) {
      final images = await _picker.pickMultiImage();

      if (images.isNotEmpty) {
        setState(() => _images.addAll(images));
      }
    }
  }

  Future<void> _showRemoveAlert(XFile file) async {
    final result = await showOkCancelAlertDialog(
      context: context,
      title: 'Apagar imagem',
      message: 'Deseja mesmo remover esta imagem?',
      cancelLabel: 'Cancelar',
      okLabel: 'Apagar',
    );

    if (result == OkCancelResult.ok) {
      await _removeImage(file);
    }
  }

  Future<void> _removeImage(XFile image) async {
    try {
      await File(image.path).delete();
    } catch (e) {
      debugPrint(e.toString());
    } finally {
      setState(() => _images.remove(image));
    }
  }

  BoxDecoration _getDecoration(FormFieldState<List<XFile>> state) {
    final colorScheme = Theme.of(context).colorScheme;
    return BoxDecoration(
      border: Border.all(
          color: state.hasError ? colorScheme.error : colorScheme.outline),
      borderRadius: BorderRadius.circular(8),
    );
  }

  Widget _buildAddButton(FormFieldState<List<XFile>> state) {
    final colorScheme = Theme.of(context).colorScheme;
    return InkWell(
      onTap: _pickImages,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        margin: const EdgeInsets.only(right: 0.0),
        width: 90,
        height: 90,
        decoration: _getDecoration(state),
        child: Icon(
          Icons.add_rounded,
          size: 32,
          color: state.hasError ? colorScheme.error : colorScheme.outline,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return FormField<List<XFile>>(
      initialValue: _images,
      validator: widget.validator,
      builder: (state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text(
                widget.title,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  for (final image in state.value!)
                    ImageItem(
                      image: File(image.path),
                      onTap: () =>
                          ImageViewRoute(path: image.path).push(context),
                      onRemove: () => _showRemoveAlert(image),
                    ),
                  _buildAddButton(state),
                ],
              ),
            ),
            AnimatedCrossFade(
              duration: const Duration(milliseconds: 200),
              crossFadeState: state.hasError
                  ? CrossFadeState.showSecond
                  : CrossFadeState.showFirst,
              firstChild: const SizedBox(),
              secondChild: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 5.0, horizontal: 8.0),
                child: MaterialErrorText(state.errorText ?? ''),
              ),
            ),
          ],
        );
      },
    );
  }
}
