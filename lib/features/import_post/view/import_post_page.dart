import 'package:community_guard_mobile/features/home/bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../home/view/home_view.dart';
import '../bloc/import_post_bloc.dart';
import 'import_post_view.dart';


class ImportPostPage extends StatelessWidget {
  const ImportPostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ImportPostBloc(),
      child: const ImportPostView(),
    );
  }
}
