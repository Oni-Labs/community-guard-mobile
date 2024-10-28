import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:community_guard_mobile/core/entity/post.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/api/api_util.dart';
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
      final client = ApiUtil.getRestClient();
      final response = await client.getPosts();

      if (response.response.statusCode == HttpStatus.ok) {
        emit(state.copyWith(posts: response.data.data));
      }
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
