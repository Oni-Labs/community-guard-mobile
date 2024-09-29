import 'dart:io';

import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'image_item.dart';
import 'image_picker_origin.dart';
import 'image_picker_origin_dialog.dart';
import 'material_error_text.dart';

class VehicleInOutPicturesSlider extends StatefulWidget {
  const VehicleInOutPicturesSlider({
    super.key,
    this.recordId,
    this.validator,
    this.enabled = true,
  });

  final int? recordId;
  final bool enabled;
  final FormFieldValidator<List<XFile>>? validator;

  @override
  VehicleInOutPicturesSliderState createState() =>
      VehicleInOutPicturesSliderState();
}

class VehicleInOutPicturesSliderState
    extends State<VehicleInOutPicturesSlider> {
  final _picker = ImagePicker();

  late FormFieldState<List<XFile>> _state;
  final List<XFile> _images = [];

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) async {});
  }

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
        _images.add(file);
        _state.didChange(_images);
      }
    } else if (origin == ImagePickerOrigin.camera) {
      final image = await _picker.pickImage(source: ImageSource.camera);

      if (image != null) {
        _images.add(image);
        _state.didChange(_images);
      }
    } else if (origin == ImagePickerOrigin.gallery) {
      final images = await _picker.pickMultiImage();

      if (images.isNotEmpty) {
        _images.addAll(images);
        _state.didChange(_images);
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
      _images.remove(image);
      _state.didChange(_images);
    }
  }

  BoxDecoration _getDecoration() {
    final colorScheme = Theme.of(context).colorScheme;
    return BoxDecoration(
      border: Border.all(
          color: _state.hasError ? colorScheme.error : colorScheme.outline),
      borderRadius: BorderRadius.circular(8),
    );
  }

  Widget _buildAddButton() {
    final colorScheme = Theme.of(context).colorScheme;
    return InkWell(
      onTap: () => _pickImages(),
      borderRadius: BorderRadius.circular(8),
      child: Container(
        margin: const EdgeInsets.only(right: 0.0),
        child: Container(
          width: 90,
          height: 90,
          decoration: _getDecoration(),
          child: Icon(
            Icons.add_rounded,
            size: 32,
            color: _state.hasError ? colorScheme.error : colorScheme.outline,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return FormField<List<XFile>>(
      initialValue: const [],
      validator: widget.validator,
      builder: (state) {
        _state = state;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  for (final image in _state.value!)
                    ImageItem(
                      image: image,
                      onTap: () => {},
                      onLongPress: () => _showRemoveAlert(image),
                    ),
                  if (widget.enabled) _buildAddButton(),
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
            )
          ],
        );
      },
    );
  }
}
