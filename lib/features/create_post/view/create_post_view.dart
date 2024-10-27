import 'dart:io';

import 'package:community_guard_mobile/core/widgets/input_form.dart';
import 'package:community_guard_mobile/core/widgets/outlined_text_field.dart';
import 'package:community_guard_mobile/features/create_post/widgets/map_preview_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../widgets/map_preview.dart';
import '../widgets/picture_slider.dart';
import '../bloc/create_post_bloc.dart';

class CreatePostView extends StatefulWidget {
  const CreatePostView({
    super.key,
  });

  @override
  State<CreatePostView> createState() => _CreatePostViewState();
}

class _CreatePostViewState extends State<CreatePostView> {
  final _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();
  List<File> pickedFiles = [];

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {});
  }

  @override
  void dispose() {
    super.dispose();
    _titleController.dispose();
    _descriptionController.dispose();
  }

  Widget _buildSaveButton() {
    final bottomPadding = MediaQuery.of(context).viewPadding.bottom;

    return Padding(
      padding: const EdgeInsets.all(16)
          .copyWith(bottom: bottomPadding > 0.0 ? bottomPadding : 32),
      child: FilledButton.icon(
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            _formKey.currentState!.save();
            context.read<CreatePostBloc>().add(CreatePostEvent.submitted(
                  title: _titleController.text,
                  description: _descriptionController.text,
                  files: const [],
                  latitude: 0,
                  longitude: 0,
                ));
          }
        },
        icon: const Icon(Icons.save),
        label: const Text('Salvar'),
        style: FilledButton.styleFrom(
          minimumSize: const Size(double.infinity, 44),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CreatePostBloc, CreatePostState>(
      listener: (context, state) {},
      builder: (context, state) {
        return CustomScrollView(
          slivers: [
            const SliverAppBar(
              automaticallyImplyLeading: false,
              title: Text('Publicar postagem'),
              backgroundColor: Colors.white,
              elevation: 0,
              centerTitle: true,
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InputForm(
                        controller: _titleController,
                        validator: (value) => value == null || value.isEmpty
                            ? 'Insira um título'
                            : null,
                        label: 'Titulo',
                      ),
                      OutlinedTextField(
                        label: 'Descrição',
                        validator: (value) => value == null || value.isEmpty
                            ? 'Insira uma descrição'
                            : null,
                        minLines: 3,
                        maxLines: 10,
                        controller: _descriptionController,
                        keyboardType: TextInputType.multiline,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: BlocProvider.value(
                          value: context.read<CreatePostBloc>(),
                          child: PicturesSlider(
                            validator: (value) => value == null || value.isEmpty
                                ? 'Selecione uma foto'
                                : null,
                            title: 'Fotos',
                          ),
                        ),
                      ),
                      if (state.position != null &&
                          state.status is! GeoPointLoading)
                        ServiceMapPreview(
                          location: LatLng(
                            state.position!.latitude,
                            state.position!.longitude,
                          ),
                        )
                      else
                        const ServiceMapPreviewLoading(
                          padding: EdgeInsets.symmetric(
                            horizontal: 8.0,
                            vertical: 8.0,
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ),
            SliverFillRemaining(
              hasScrollBody: false,
              fillOverscroll: true,
              child: Container(
                alignment: Alignment.bottomCenter,
                child: _buildSaveButton(),
              ),
            ),
          ],
        );
      },
    );
  }
}
