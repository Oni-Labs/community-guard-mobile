import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:community_guard_mobile/core/api/api_util.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/entity/post.dart';
import '../../../helpers.dart';

part 'profile_event.dart';

part 'profile_state.dart';

part 'profile_bloc.freezed.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc() : super(const ProfileState.initial()) {
    on<ProfileEvent>(_onStarted, transformer: droppable());
  }

  Future<void> _onStarted(
    ProfileEvent event,
    Emitter<ProfileState> emit,
  ) async {
    try {
      emit(state.copyWith(status: const ProfileStatus.loading()));
      final client = ApiUtil.getRestClient();
      final response = await client.getUserPosts();

      if (response.response.statusCode == HttpStatus.ok) {
        emit(
          state.copyWith(
            posts: response.data.data,
            status: const ProfileStatus.success(),
          ),
        );
      }
    } on DioException catch (e, stack) {
      talker.handle(e, stack);
      emit(state.copyWith(status: const ProfileStatus.failure()));
    }
  }
}
