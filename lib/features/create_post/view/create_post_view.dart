import 'package:community_guard_mobile/core/widgets/input_form.dart';
import 'package:community_guard_mobile/core/widgets/outlined_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../core/widgets/map_preview.dart';
import '../../../core/widgets/picture_slider.dart';
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
        if (state.status is GeoPointLoading) {
          return const Center(child: CircularProgressIndicator());
        } else {
          return CustomScrollView(
            slivers: [
              const SliverAppBar(
                automaticallyImplyLeading: false,
                // Remove o ícone de voltar
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
                          label: 'Titulo',
                        ),
                        OutlinedTextField(
                          label: 'Descrição',
                          minLines: 3,
                          maxLines: 10,
                          controller: _descriptionController,
                          keyboardType: TextInputType.multiline,
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: PostPicturesSlider(
                            enabled: true,
                            // key: _picturesSliderKey,
                            // recordId: state.record?.id,
                          ),
                        ),
                        if (state.position != null)
                          ServiceMapPreview(
                            location: LatLng(
                              state.position!.latitude,
                              state.position!.longitude,
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
        }
      },
    );
  }
}
