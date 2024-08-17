import 'package:community_surveillance/features/auth/view/auth_page.dart';
import 'package:community_surveillance/features/import_post/view/import_post_page.dart';
import 'package:community_surveillance/features/notifications/view/notifications_page.dart';
import 'package:community_surveillance/features/settings/settings.dart';
import 'package:community_surveillance/home.dart';
import 'package:go_router/go_router.dart';
import 'package:talker_flutter/talker_flutter.dart';

import 'features/feed/view/feed_page.dart';
import 'features/search/view/search_page.dart';
import 'helpers.dart';

final GoRouter router = GoRouter(
  observers: [TalkerRouteObserver(talker)],
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const AuthPage(),
      routes: [
        GoRoute(
          path: 'settings',
          builder: (context, state) => const SettingsPage(),
        ),
        GoRoute(
          path: 'profile',
          builder: (context, state) => const HomePage(),
        ),
        GoRoute(
          path: 'import-post',
          builder: (context, state) => const ImportPostPage(),
        ),
        GoRoute(
          path: 'feed',
          builder: (context, state) => const FeedPage(),
        ),
        GoRoute(
          path: 'settings',
          builder: (context, state) => const SettingsPage(),
        ),
        GoRoute(
          path: 'notifications',
          builder: (context, state) => const NotificationsPage(),
        ),
        GoRoute(
          path: 'search',
          builder: (context, state) => const SearchPage(),
        ),
      ],
    ),
    GoRoute(path: '/auth', builder: (context, state) => const AuthPage()),
  ],
);
