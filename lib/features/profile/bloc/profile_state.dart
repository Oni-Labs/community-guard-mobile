part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial({
    @Default([]) List<Post> posts,
    @Default(ProfileStatus.initial()) ProfileStatus status,
  }) = _Initial;
}

@freezed
class ProfileStatus with _$ProfileStatus {
  const factory ProfileStatus.initial() = StatusInitial;
  const factory ProfileStatus.loading() = StatusLoading;
  const factory ProfileStatus.success() = StatusSuccess;
  const factory ProfileStatus.failure() = StatusFailure;
}