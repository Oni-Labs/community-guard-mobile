part of 'create_post_bloc.dart';

@freezed
class CreatePostEvent with _$CreatePostEvent {
  const factory CreatePostEvent.started() = _Started;

  const factory CreatePostEvent.addedImage(List<File> files) = _AddedImage;
  const factory CreatePostEvent.removedImage(File file) = _RemovedImage;

  const factory CreatePostEvent.submitted({
    required String title,
    required String description,
    required List<File> files,
    required double latitude,
    required double longitude,
  }) = _Submitted;
}
