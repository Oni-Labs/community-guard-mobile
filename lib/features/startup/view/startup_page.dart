import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:community_guard_mobile/core/router.dart';
import 'package:community_guard_mobile/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../startup.dart';

class StartupPage extends StatelessWidget {
  const StartupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => StartupBloc()..add(const StartupEvent.started()),
      child: const StartupView(),
    );
  }
}

class StartupView extends StatelessWidget {
  const StartupView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<StartupBloc, StartupState>(
      listener: (context, state) {
        // if (state.status is StatusLogged) {
        //   const FeedRoute().go(context);
        // } else if (state.status is StatusGuest) {
        //   if (state.user?.isFirstAccess == true) {
        //     const OnBoardingSliderRoute().go(context);
        //   } else {
        //     const LoginRoute().go(context);
        //   }
        // }
      },
      child: BlocBuilder<StartupBloc, StartupState>(
        builder: (context, state) {
          return FlutterSplashScreen.gif(
            gifPath: Assets.images.startupAnimation.path,
            gifWidth: 3000,
            gifHeight: 4000,
          );
        },
      ),
    );
  }
}
