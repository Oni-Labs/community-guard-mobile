import 'dart:io';

import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

import '../../features/create_post/bloc/create_post_bloc.dart';
import 'image_item.dart';
import 'image_picker_origin.dart';
import 'image_picker_origin_dialog.dart';
import 'material_error_text.dart';

class PostPicturesSlider extends StatefulWidget {
  const PostPicturesSlider({
    super.key,
    this.recordId,
    this.enabled = true,
  });

  final int? recordId;
  final bool enabled;

  @override
  PostPicturesSliderState createState() => PostPicturesSliderState();
}

class PostPicturesSliderState extends State<PostPicturesSlider> {
  final _picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreatePostBloc, CreatePostState>(
      builder: (context, state) {
        // final hasError = state is CreatePostErrorState;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // SingleChildScrollView(
            //   scrollDirection: Axis.horizontal,
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.start,
            //     crossAxisAlignment: CrossAxisAlignment.center,
            //     children: [
            //       for (final evidence in state.evidences)
            //         ImageItem(
            //           image: evidence,
            //           onTap: () {},
            //           onLongPress: () => _showRemoveAlert(evidence),
            //         ),
            //       if (widget.enabled) _buildAddButton(),
            //     ],
            //   ),
            // ),
            // _buildErrorText(hasError),
          ],
        );
      },
    );
  }

  Widget _buildAddButton() {
    return InkWell(
      onTap: _pickImages,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        margin: const EdgeInsets.only(right: 0.0),
        width: 90,
        height: 90,
        decoration: _getDecoration(),
        child: const Icon(
          Icons.add_rounded,
          size: 32,
        ),
      ),
    );
  }

  BoxDecoration _getDecoration() {
    return BoxDecoration(
      border: Border.all(
        color: Theme.of(context).colorScheme.outline,
      ),
      borderRadius: BorderRadius.circular(8),
    );
  }

  // Widget _buildErrorText(bool hasError) {
  //   if (!hasError) return const SizedBox();
  //
  //   return const Padding(
  //     padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 8.0),
  //     child: MaterialErrorText('Erro ao processar as imagens.'),
  //   );
  // }

  Future<void> _pickImages() async {
    final origin = await showDialog<ImagePickerOrigin>(
      context: context,
      builder: (context) => const ImagePickerOriginDialog(),
    );

    if (origin == null) return;

    List<XFile> pickedFiles = [];

    switch (origin) {
      case ImagePickerOrigin.files:
        final result = await FilePicker.platform.pickFiles(
          type: FileType.custom,
          allowedExtensions: ['jpg', 'png', 'heif', 'heic'],
        );
        if (result?.files.single.path != null) {
          pickedFiles = [XFile(result!.files.single.path!)];
        }
        break;
      case ImagePickerOrigin.camera:
        final image = await _picker.pickImage(source: ImageSource.camera);
        if (image != null) pickedFiles = [image];
        break;
      case ImagePickerOrigin.gallery:
        pickedFiles = await _picker.pickMultiImage();
        break;
    }

    if (pickedFiles.isNotEmpty) {
      final state = context.read<CreatePostBloc>().state;
      // (state.evidences).addAll(pickedFiles);
      context.read<CreatePostBloc>().add(
        CreatePostEvent.addedImage(
          pickedFiles.map((file) => File(file.path)).toList(),
        ),
      );
    }
  }

  Future<void> _showRemoveAlert(XFile image) async {
    final result = await showOkCancelAlertDialog(
      context: context,
      title: 'Apagar imagem',
      message: 'Deseja mesmo remover esta imagem?',
      cancelLabel: 'Cancelar',
      okLabel: 'Apagar',
    );

    if (result == OkCancelResult.ok) {
      await _removeImage(image);
    }
  }

  Future<void> _removeImage(XFile image) async {
    try {
      context.read<CreatePostBloc>().add(
        CreatePostEvent.removedImage(File(image.path)),
      );

      await File(image.path).delete();
    } catch (e) {
      debugPrint(e.toString());
    } finally {
      final state = context.read<CreatePostBloc>().state;
      (state.evidences).remove(image);
    }
  }
}
