import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:community_guard_mobile/core/entity/post.dart';
import 'package:community_guard_mobile/gen/assets.gen.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../helpers.dart';

part 'feed_event.dart';

part 'feed_state.dart';

part 'feed_bloc.freezed.dart';

class FeedBloc extends Bloc<FeedEvent, FeedState> {
  FeedBloc() : super(const FeedState.initial()) {
    on<_Started>(_onStarted, transformer: droppable());
  }

  Future<void> _onStarted(
    _Started event,
    Emitter<FeedState> emit,
  ) async {
    try {
      // final client = ApiUtil.getRestClient();
      // final response = await client.getPosts();

      // if (response.response.statusCode == HttpStatus.ok) {
      //   emit(state.copyWith(posts: response.data.data));
      // }
      emit(state.copyWith(posts: [
        Post(
          username: 'Gustavo',
          urlPhotoUser: Assets.icons.profile.path,
          title: 'Lorem ipsum dolor sit amet',
          description:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
          urlPhotosPost: [
            Assets.images.post.path,
            Assets.images.post.path,
            Assets.images.post.path,
          ],
          address: 'Avenida da República, 123',
        ),
        Post(
          username: 'Gustavo',
          urlPhotoUser: Assets.icons.profile.path,
          title: 'Lorem ipsum dolor sit amet',
          description:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
          urlPhotosPost: [
            Assets.images.post.path,
            Assets.images.post.path,
            Assets.images.post.path,
          ],
          address: 'Avenida da República, 123',
        ),
      ]));
    } on DioException catch (e, stack) {
      talker.handle(e, stack);
      emit(
        state.copyWith(
          status: const FeedStatus.failure("Erro ao carregar posts"),
        ),
      );
    }
  }
}
