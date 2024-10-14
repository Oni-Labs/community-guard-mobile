import 'package:community_guard_mobile/features/home/view/home_page.dart';
import 'package:community_guard_mobile/features/home/widgets/home_content_page.dart';
import 'package:community_guard_mobile/features/import_post/view/import_post_page.dart';
import 'package:community_guard_mobile/features/profile/view/profile_page.dart';
import 'package:community_guard_mobile/features/search/view/search_page.dart';
import 'package:community_guard_mobile/features/service_map/view/service_map_page.dart';

import '../auth/view/login_page.dart';
import '../features/startup/view/startup_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:talker_flutter/talker_flutter.dart';

import '../helpers.dart';

part 'router.g.dart';

final observer = TalkerRouteObserver(talker);
final rootNavigatorKey = GlobalKey<NavigatorState>();
final shellNavigatorKey = GlobalKey<NavigatorState>();

final GoRouter router = GoRouter(
  routes: $appRoutes,
  initialLocation: '/feed',
  observers: [TalkerRouteObserver(talker)],
);

@TypedGoRoute<StartupRoute>(path: '/')
class StartupRoute extends GoRouteData {
  const StartupRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const StartupPage();
}

@TypedShellRoute<HomeShellRoute>(
  routes: [
    TypedGoRoute<FeedRoute>(path: '/feed'),
    TypedGoRoute<ExploreRoute>(path: '/explore'),
    TypedGoRoute<CreatePostRoute>(path: '/create-post'),
    TypedGoRoute<ServiceMapRoute>(path: '/service-map'),
    TypedGoRoute<ProfileRoute>(path: '/profile'),
  ],
)
class HomeShellRoute extends ShellRouteData {
  const HomeShellRoute();

  static final GlobalKey<NavigatorState> $navigatorKey = shellNavigatorKey;
  static final GlobalKey<NavigatorState> $rootNavigatorKey = rootNavigatorKey;

  @override
  Widget builder(BuildContext context, GoRouterState state, Widget navigator) {
    return HomePage(child: navigator);
  }
}

class FeedRoute extends GoRouteData {
  const FeedRoute();
  @override
  Widget build(BuildContext context, GoRouterState state) => const FeedPage();
}

class ExploreRoute extends GoRouteData {
  const ExploreRoute();
  @override
  Widget build(BuildContext context, GoRouterState state) => const SearchPage();
}

class CreatePostRoute extends GoRouteData {
  const CreatePostRoute();
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const ImportPostPage();
}

class ServiceMapRoute extends GoRouteData {
  const ServiceMapRoute();
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const ServiceMapPage();
}

class ProfileRoute extends GoRouteData {
  const ProfileRoute();
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const ProfilePage();
}

@TypedGoRoute<LoginRoute>(path: '/login')
class LoginRoute extends GoRouteData {
  const LoginRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const LoginPage();
}
