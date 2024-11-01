import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hive/hive.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

import '../../../core/router.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key, required this.navigator});

  final Widget navigator;

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final box = Hive.box('settings');

  int _getCurrentIndex(BuildContext context) {
    final route = GoRouterState.of(context);

    if (route.uri.pathSegments.first == 'feed') {
      return 0;
    } else if (route.uri.pathSegments.first == 'service-map') {
      return 1;
    } else if (route.uri.pathSegments.first == 'profile') {
      return 2;
    }
    return 0;
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.navigator,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.deepPurple,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedIconTheme: const IconThemeData(color: Colors.white),
        unselectedIconTheme: IconThemeData(color: Colors.grey[500]),
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              LucideIcons.house,
              size: 25,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              LucideIcons.map,
              size: 25,
            ),
            label: 'Mapa',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              LucideIcons.circleUserRound,
              size: 25,
            ),
            label: 'Perfil',
          ),
        ],
        currentIndex: _getCurrentIndex(context),
        onTap: (index) {
          switch (index) {
            case 0:
              const FeedRoute().go(context);
              break;
            case 1:
              const ServiceMapRoute().go(context);
              break;
            case 2:
              const ProfileRoute().go(context);
              break;
          }
        },
      ),
    );
  }
}
