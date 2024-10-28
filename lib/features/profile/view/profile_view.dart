import 'package:community_guard_mobile/core/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

import '../../../core/widgets/custom_card.dart';
import '../../../gen/assets.gen.dart';
import '../../../helpers.dart';
import '../bloc/profile_bloc.dart';
import '../widgets/custom_grid_loading.dart';
import '../widgets/custom_grid_view.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        return Scaffold(
          body: CustomScrollView(
            slivers: [
              _buildAppBar(),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      _buildProfileHeader(),
                      const SizedBox(height: 16),
                      _buildProfileActions(),
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: TabBar(
                  controller: _tabController,
                  tabs: const [
                    Tab(icon: Icon(LucideIcons.grid3x3)),
                    Tab(icon: Icon(LucideIcons.video)),
                  ],
                ),
              ),
              SliverFillRemaining(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    switch (state.status) {
                      StatusLoading() => const CustomGridLoading(itemCount: 12),
                      StatusSuccess() => _buildGridView(state.posts.length),
                      StatusFailure() => const SizedBox(),
                      _ => const SizedBox(),
                    }
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  SliverAppBar _buildAppBar() {
    return SliverAppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      pinned: true,
      floating: true,
      forceElevated: true,
      title: const Text(
        'gustaf_avf',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: false,
      actions: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: IconButton(
            onPressed: () {
              const SettingsRoute().push(context);
            },
            icon: const Icon(LucideIcons.settings),
          ),
        ),
      ],
    );
  }

  Widget _buildProfileHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            ClipOval(
              child: Image.asset(
                Assets.icons.profile.path,
                height: 50,
                width: 50,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Gustavo',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        _buildProfileStats(),
      ],
    );
  }

  Widget _buildProfileStats() {
    return const Row(
      children: [
        _ProfileStat(title: '6', subtitle: 'publicações'),
        SizedBox(width: 16),
        // _ProfileStat(title: '332', subtitle: 'seguidores'),
        // SizedBox(width: 16),
        // _ProfileStat(title: '533', subtitle: 'seguindo'),
      ],
    );
  }

  Widget _buildProfileActions() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        FilledButton(
          onPressed: () {},
          child: const Text('Editar perfil'),
        ),
        FilledButton(
          onPressed: () {},
          child: const Text('Compartilhar perfil'),
        ),
        // const Icon(LucideIcons.userPlus),
      ],
    );
  }

  Widget _buildGridView(int postsCount) {
    return CustomGridView(
      itemCount: postsCount,
      crossAxisCount: 3, // Número de colunas
      itemBuilder: (context, index) {
        return CustomCard(
          imagePath: Assets.images.post.path, // O caminho da imagem
          onIconPressed: () {
            // Função que será executada ao pressionar o botão
            talker.info('Icon pressed for item $index');
          },
        );
      },
    );
  }
}

class _ProfileStat extends StatelessWidget {
  final String title;
  final String subtitle;

  const _ProfileStat({required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(subtitle),
      ],
    );
  }
}