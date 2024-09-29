import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/widgets/custom_card.dart';
import '../../../core/widgets/custom_grid_view.dart';
import '../../../core/widgets/input_form.dart';
import '../../../core/widgets/outlined_text_field.dart';
import '../../../gen/assets.gen.dart';
import '../search.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SearchBloc(),
      child: const SearchView(),
    );
  }
}

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  Widget _buildGridView() {
    return CustomGridView(
      itemCount: 20,
      crossAxisCount: 3, // Número de colunas
      itemBuilder: (context, index) {
        return CustomCard(
          imagePath: Assets.images.post.path, // O caminho da imagem
          onIconPressed: () {
            // Função que será executada ao pressionar o botão
            print('Icon pressed for item $index');
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBloc, SearchState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Pesquisar'),
          ),
          body: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      InputForm(
                        controller: TextEditingController(),
                        label: 'Pesquisar...',
                        prefixIcon: Icons.search,
                      ),
                      const SizedBox(height: 16),
                      _buildGridView(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
