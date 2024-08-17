import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../import_post.dart';

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

class ImportPostView extends StatelessWidget {
  const ImportPostView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ImportPostBloc, ImportPostState>(
      builder: (context, state) {
        // TODO: return correct widget based on the state.
        return Scaffold(
          appBar: AppBar(
            title: Text('Import Post'),
          ),
          body: Container(
            child: Text('Import Post'),
          ),
        );
      },
    );
  }
}
