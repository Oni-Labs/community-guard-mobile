import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

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
        if (state.status is StatusLogged) {
          context.go('/home');
        } else if (state.status is StatusGuest) {
          context.go('/home');
        }
      },
      child: BlocBuilder<StartupBloc, StartupState>(
        builder: (context, state) {
          if (state.status == const StartupStatus.guest()) {
            return FlutterSplashScreen.gif(
              backgroundColor: const Color(0xFFEBBCF8),
              useImmersiveMode: true,
              gifPath: 'assets/images/splash.gif',
              gifWidth: MediaQuery.of(context).size.width,
              gifHeight: MediaQuery.of(context).size.height,
              duration: const Duration(milliseconds: 3515),
            );
          }
          return Container();
        },
      ),
    );
  }
}
