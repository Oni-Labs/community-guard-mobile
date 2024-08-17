import 'package:community_surveillance/features/home/widgets/item_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/home_bloc.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

Widget _buildHeader(BuildContext context) {
  return const Column(
    children: [
      Icon(Icons.people),
      Row(
        children: [
          Text('user'),
        ],
      ),
    ],
  );
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return Scaffold(
          bottomNavigationBar: AppBar(
            actions: const [
              Icon(Icons.home),
              Icon(Icons.search),
              Icon(Icons.add),
              Icon(Icons.movie),
              Icon(Icons.person),
            ],
          ),
          body: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) => [
              SliverToBoxAdapter(
                child: _buildHeader(context),
              ),
            ],
            body: ListView.separated(
              itemBuilder: (context, index) {
                const ItemCard();
                return null;
              },
              separatorBuilder: (_, __) => const SizedBox(height: 16),
              itemCount: 3,
            ),
          ),
        );
      },
    );
  }
}
