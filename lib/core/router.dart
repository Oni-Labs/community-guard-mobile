import 'package:community_guard_mobile/features/profile/view/profile_page.dart';
import 'package:community_guard_mobile/features/settings/settings.dart';
import 'package:community_guard_mobile/features/startup/view/startup_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:talker_flutter/talker_flutter.dart';

import '../auth/bloc/login_bloc.dart';
import '../auth/view/login_page.dart';
import '../auth/widgets/create_account.dart';
import '../auth/widgets/forget_password_account.dart';
import '../features/home/view/home_page.dart';
import '../features/service_map/view/service_map_page.dart';
import '../helpers.dart';

final GoRouter router = GoRouter(
  observers: [TalkerRouteObserver(talker)],
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const StartupPage(),
      routes: [
        GoRoute(
          path: 'settings',
          builder: (context, state) => const SettingsPage(),
        ),
        GoRoute(
          path: 'notifications',
          builder: (context, state) => const ServiceMapPage(),
        ),
        GoRoute(
          path: 'profile',
          builder: (context, state) => const ProfilePage(),
        ),
        GoRoute(
          path: 'home',
          builder: (context, state) => const HomePage(),
        ),
      ],
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginPage(),
      routes: [
        GoRoute(
          path: 'create-account',
          builder: (context, state) => BlocProvider( create: (_) => LoginBloc(), child: const CreateAccount()),
        ),
        GoRoute(
          path: 'forget-password-account',
          builder: (context, state) => BlocProvider( create: (_) => LoginBloc(), child: const ForgetPasswordAccount()),
        ),
      ],
    ),
  ],
);
