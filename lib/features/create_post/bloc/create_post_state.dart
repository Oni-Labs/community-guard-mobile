part of 'create_post_bloc.dart';

@freezed
class CreatePostState with _$CreatePostState {
  const factory CreatePostState.initial({
    Position? position,
    @Default([]) List<File> evidences,
    @Default(GeoPointStatus.initial()) GeoPointStatus status,
  }) = _Initial;
}

@freezed
class GeoPointStatus with _$GeoPointStatus {
  const factory GeoPointStatus.initial() = GeoPointInitial;
  const factory GeoPointStatus.loading() = GeoPointLoading;
  const factory GeoPointStatus.success(Position position) = GeoPointSuccess;
  const factory GeoPointStatus.failure(String error) = GeoPointFailure;
}

@freezed
class CreatePostStatus with _$CreatePostStatus {
  const factory CreatePostStatus.initial() = CreatePostInitial;
  const factory CreatePostStatus.loading() = CreatePostLoading;
  const factory CreatePostStatus.success() = CreatePostSuccess;
  const factory CreatePostStatus.failure(String error) = CreatePostError;
}