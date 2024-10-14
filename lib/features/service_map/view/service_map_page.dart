import 'package:community_guard_mobile/features/service_map/view/service_map_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/service_map_bloc.dart';

class ServiceMapPage extends StatelessWidget {
  const ServiceMapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ServiceMapBloc()..add(const ServiceMapEvent.started()),
      child: const ServiceMapView(),
    );
  }
}
