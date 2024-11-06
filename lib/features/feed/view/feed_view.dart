import 'package:community_guard_mobile/core/router.dart';
import 'package:community_guard_mobile/features/feed/widgets/feed_is_empty.dart';
import 'package:community_guard_mobile/features/feed/widgets/feed_loading_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

import '../../../gen/assets.gen.dart';
import '../bloc/feed_bloc.dart';
import '../widgets/post_item.dart';

class FeedView extends StatelessWidget {
  const FeedView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<FeedBloc, FeedState>(
      listener: (context, state) {
        // Verifique se o estado é FeedFailure
        state.status.maybeWhen(
          failure: (message) {
            // Exibe a mensagem de erro usando um Snackbar, por exemplo
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(message)),
            );
          },
          orElse: () {},
        );
      },
      child: BlocBuilder<FeedBloc, FeedState>(
        builder: (context, state) {
          return Scaffold(
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                const CreatePostRoute().go(context);
              },
              child: const Icon(LucideIcons.mapPinPlus),
            ),
            body: CustomScrollView(
              slivers: [
                SliverAppBar(
                  backgroundColor: Colors.white,
                  title: const Text('Publicações'),
                  actions: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: IconButton(
                        onPressed: () {
                          const NotificationRoute().push(context);
                        },
                        icon: const Icon(LucideIcons.bell),
                      ),
                    ),
                  ],
                  leading: GestureDetector(
                    onTap: () => const ProfileRoute().go(context),
                    child: Center(
                      child: ClipOval(
                        child: Image.asset(
                          Assets.icons.profile.path,
                          fit: BoxFit.cover,
                          width: 50,
                          height: 50,
                        ),
                      ),
                    ),
                  ),
                  toolbarHeight: 100,
                  leadingWidth: 80,
                ),
                switch (state.status) {
                  FeedLoading() => const FeedLoadingShimmer(),
                  FeedSuccess() => state.posts.isNotEmpty
                      ? SliverList(
                          delegate: SliverChildBuilderDelegate(
                            (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: PostItem(
                                  isCompleted: state.isCompleted,
                                  address: state.posts[index].address,
                                  description: state.posts[index].description,
                                  isSupport: state.isCompleted,
                                  title: state.posts[index].title,
                                  urlPhotoUser: state.posts[index].urlPhotoUser,
                                  urlPhotosPost:
                                      state.posts[index].urlPhotosPost,
                                  date: 'state.posts[index].d',
                                  username: state.posts[index].username,
                                ),
                              );
                            },
                            childCount: state.posts.length,
                          ),
                        )
                      : const FeedIsEmpty(),
                  FeedFailure() => const FeedIsEmpty(),
                  _ => const FeedIsEmpty(),
                },
              ],
            ),
          );
        },
      ),
    );
  }
}
