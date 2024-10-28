import 'package:camera/camera.dart';
import 'package:community_guard_mobile/features/create_post/view/create_post_page.dart';
import 'package:community_guard_mobile/features/home/view/home_page.dart';
import 'package:community_guard_mobile/features/notification/view/notification_page.dart';
import 'package:community_guard_mobile/features/profile/view/profile_page.dart';
// import 'package:community_guard_mobile/features/search/view/search_page.dart';
import 'package:community_guard_mobile/features/service_map/view/service_map_page.dart';
import 'package:community_guard_mobile/features/settings/view/settings_page.dart';

import '../auth/view/login_page.dart';
import '../features/create_post/widgets/fullscreen_image_view.dart';
import '../features/feed/view/feed_page.dart';
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

CustomTransitionPage<void> customTransitionPageBuilder(
  BuildContext context,
  GoRouterState state,
  Widget child,
) {
  return CustomTransitionPage<void>(
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(1.0, 0.0);
      const end = Offset.zero;
      const curve = Curves.easeInOut;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
      var offsetAnimation = animation.drive(tween);

      return SlideTransition(
        position: offsetAnimation,
        child: child,
      );
    },
  );
}

@TypedGoRoute<StartupRoute>(path: '/')
class StartupRoute extends GoRouteData {
  const StartupRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return customTransitionPageBuilder(
      context,
      state,
      const StartupPage(),
    );
  }
}

@TypedShellRoute<HomeShellRoute>(
  routes: [
    TypedGoRoute<FeedRoute>(path: '/feed'),
    // TypedGoRoute<ExploreRoute>(path: '/explore'),
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
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return customTransitionPageBuilder(
      context,
      state,
      const FeedPage(),
    );
  }
}

// class ExploreRoute extends GoRouteData {
//   const ExploreRoute();
//
//   @override
//   Page<void> buildPage(BuildContext context, GoRouterState state) {
//     return customTransitionPageBuilder(
//       context,
//       state,
//       const SearchPage(),
//     );
//   }
// }

class CreatePostRoute extends GoRouteData {
  const CreatePostRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return customTransitionPageBuilder(
      context,
      state,
      const CreatePostPage(),
    );
  }
}

class ServiceMapRoute extends GoRouteData {
  const ServiceMapRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return customTransitionPageBuilder(
      context,
      state,
      const ServiceMapPage(),
    );
  }
}

class ProfileRoute extends GoRouteData {
  const ProfileRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return customTransitionPageBuilder(
      context,
      state,
      const ProfilePage(),
    );
  }
}

@TypedGoRoute<LoginRoute>(path: '/login')
class LoginRoute extends GoRouteData {
  const LoginRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return customTransitionPageBuilder(
      context,
      state,
      const LoginPage(),
    );
  }
}

@TypedGoRoute<SettingsRoute>(path: '/settings')
class SettingsRoute extends GoRouteData {
  const SettingsRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return customTransitionPageBuilder(
      context,
      state,
      const SettingsPage(),
    );
  }
}

@TypedGoRoute<NotificationRoute>(path: '/notification')
class NotificationRoute extends GoRouteData {
  const NotificationRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return customTransitionPageBuilder(
      context,
      state,
      const NotificationPage(),
    );
  }
}

@TypedGoRoute<ImageViewRoute>(path: '/images/view')
class ImageViewRoute extends GoRouteData {
  const ImageViewRoute({this.path});

  final String? path;

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      FullscreenImageView(image: path != null ? XFile(path!) : null);
}
