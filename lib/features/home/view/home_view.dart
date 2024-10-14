import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hive/hive.dart';

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
    } else if (route.uri.pathSegments.first == 'profile') {
      return 2;
    }

    return 1;
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
        unselectedIconTheme: const IconThemeData(color: Colors.black54),
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box_outlined),
            label: 'Post',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: 'Mapa',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Settings',
          ),
        ],
        currentIndex: _getCurrentIndex(context),
        onTap: (index) {
          switch (index) {
            case 0:
              const FeedRoute().go(context);
              break;
            case 1:
              const ExploreRoute().go(context);
              break;
            case 2:
              const CreatePostRoute().go(context);
              break;
            case 3:
              const ServiceMapRoute().go(context);
              break;
            case 4:
              const ProfileRoute().go(context);
              break;
          }
        },
      ),
    );
  }
}
