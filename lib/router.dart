import 'package:community_surveillance/features/auth/view/auth_page.dart';
import 'package:community_surveillance/features/notifications/view/notifications_page.dart';
import 'package:community_surveillance/features/profile/view/profile_page.dart';
import 'package:community_surveillance/features/settings/settings.dart';
import 'package:go_router/go_router.dart';
import 'package:talker_flutter/talker_flutter.dart';

import 'features/home/view/home_page.dart';
import 'helpers.dart';

final GoRouter router = GoRouter(
  observers: [TalkerRouteObserver(talker)],
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomePage(),
      routes: [
        GoRoute(
          path: 'settings',
          builder: (context, state) => const SettingsPage(),
        ),
        GoRoute(
          path: 'notifications',
          builder: (context, state) => const NotificationsPage(),
        ),
        GoRoute(
          path: 'profile',
          builder: (context, state) => const ProfilePage(),
        ),
      ],
    ),
    GoRoute(path: '/auth', builder: (context, state) => const AuthPage()),
  ],
);
