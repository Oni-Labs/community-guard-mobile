import 'package:community_guard_mobile/core/widgets/input_form.dart';
import 'package:community_guard_mobile/core/widgets/outlined_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:latlong2/latlong.dart';

import '../../../core/widgets/map_preview.dart';
import '../../../core/widgets/picture_slider.dart';
import '../bloc/import_post_bloc.dart';

class ImportPostView extends StatefulWidget {
  const ImportPostView({
    super.key,
  });

  @override
  State<ImportPostView> createState() => _ImportPostViewState();
}

class _ImportPostViewState extends State<ImportPostView> {
  final _formKey = GlobalKey<FormState>();
  final _dateTimeController = TextEditingController();
  final _driverController = TextEditingController();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
    });
  }

  @override
  void dispose() {
    super.dispose();
    _dateTimeController.dispose();
    _driverController.dispose();
  }

  Widget _buildSaveButton() {
    final bottomPadding = MediaQuery.of(context).viewPadding.bottom;

    return Padding(
      padding: const EdgeInsets.all(16)
          .copyWith(bottom: bottomPadding > 0.0 ? bottomPadding : 32),
      child: FilledButton.icon(
        onPressed: () {},
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
    return BlocConsumer<ImportPostBloc, ImportPostState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state == 2) {
          return const Center(child: CircularProgressIndicator());
        } else {
          return CustomScrollView(
            slivers: [
              SliverAppBar(
                title: const Text('Publicar postagem'),
                backgroundColor: Colors.white,
                elevation: 0,
                centerTitle: true,
                leading: IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () => {},
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InputForm(controller: _dateTimeController, label: 'Titulo'),
                        OutlinedTextField(
                          label: 'Observação',
                          minLines: 3,
                          maxLines: 10,
                          controller: _driverController,
                          keyboardType: TextInputType.multiline,
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: VehicleInOutPicturesSlider(
                            enabled: true,
                            // key: _picturesSliderKey,
                            // recordId: state.record?.id,
                          ),
                        ),
                        const ServiceMapPreview(
                          location: LatLng(
                            15.8000,
                            -43.2500,
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
