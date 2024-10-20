// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_post_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CreatePostEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(List<File> files) addedImage,
    required TResult Function(File file) removedImage,
    required TResult Function(String title, String description,
            List<File> files, double latitude, double longitude)
        submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(List<File> files)? addedImage,
    TResult? Function(File file)? removedImage,
    TResult? Function(String title, String description, List<File> files,
            double latitude, double longitude)?
        submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<File> files)? addedImage,
    TResult Function(File file)? removedImage,
    TResult Function(String title, String description, List<File> files,
            double latitude, double longitude)?
        submitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddedImage value) addedImage,
    required TResult Function(_RemovedImage value) removedImage,
    required TResult Function(_Submitted value) submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddedImage value)? addedImage,
    TResult? Function(_RemovedImage value)? removedImage,
    TResult? Function(_Submitted value)? submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddedImage value)? addedImage,
    TResult Function(_RemovedImage value)? removedImage,
    TResult Function(_Submitted value)? submitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatePostEventCopyWith<$Res> {
  factory $CreatePostEventCopyWith(
          CreatePostEvent value, $Res Function(CreatePostEvent) then) =
      _$CreatePostEventCopyWithImpl<$Res, CreatePostEvent>;
}

/// @nodoc
class _$CreatePostEventCopyWithImpl<$Res, $Val extends CreatePostEvent>
    implements $CreatePostEventCopyWith<$Res> {
  _$CreatePostEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreatePostEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$CreatePostEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreatePostEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'CreatePostEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(List<File> files) addedImage,
    required TResult Function(File file) removedImage,
    required TResult Function(String title, String description,
            List<File> files, double latitude, double longitude)
        submitted,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(List<File> files)? addedImage,
    TResult? Function(File file)? removedImage,
    TResult? Function(String title, String description, List<File> files,
            double latitude, double longitude)?
        submitted,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<File> files)? addedImage,
    TResult Function(File file)? removedImage,
    TResult Function(String title, String description, List<File> files,
            double latitude, double longitude)?
        submitted,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddedImage value) addedImage,
    required TResult Function(_RemovedImage value) removedImage,
    required TResult Function(_Submitted value) submitted,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddedImage value)? addedImage,
    TResult? Function(_RemovedImage value)? removedImage,
    TResult? Function(_Submitted value)? submitted,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddedImage value)? addedImage,
    TResult Function(_RemovedImage value)? removedImage,
    TResult Function(_Submitted value)? submitted,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CreatePostEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$AddedImageImplCopyWith<$Res> {
  factory _$$AddedImageImplCopyWith(
          _$AddedImageImpl value, $Res Function(_$AddedImageImpl) then) =
      __$$AddedImageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<File> files});
}

/// @nodoc
class __$$AddedImageImplCopyWithImpl<$Res>
    extends _$CreatePostEventCopyWithImpl<$Res, _$AddedImageImpl>
    implements _$$AddedImageImplCopyWith<$Res> {
  __$$AddedImageImplCopyWithImpl(
      _$AddedImageImpl _value, $Res Function(_$AddedImageImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreatePostEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? files = null,
  }) {
    return _then(_$AddedImageImpl(
      null == files
          ? _value._files
          : files // ignore: cast_nullable_to_non_nullable
              as List<File>,
    ));
  }
}

/// @nodoc

class _$AddedImageImpl implements _AddedImage {
  const _$AddedImageImpl(final List<File> files) : _files = files;

  final List<File> _files;
  @override
  List<File> get files {
    if (_files is EqualUnmodifiableListView) return _files;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_files);
  }

  @override
  String toString() {
    return 'CreatePostEvent.addedImage(files: $files)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddedImageImpl &&
            const DeepCollectionEquality().equals(other._files, _files));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_files));

  /// Create a copy of CreatePostEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddedImageImplCopyWith<_$AddedImageImpl> get copyWith =>
      __$$AddedImageImplCopyWithImpl<_$AddedImageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(List<File> files) addedImage,
    required TResult Function(File file) removedImage,
    required TResult Function(String title, String description,
            List<File> files, double latitude, double longitude)
        submitted,
  }) {
    return addedImage(files);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(List<File> files)? addedImage,
    TResult? Function(File file)? removedImage,
    TResult? Function(String title, String description, List<File> files,
            double latitude, double longitude)?
        submitted,
  }) {
    return addedImage?.call(files);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<File> files)? addedImage,
    TResult Function(File file)? removedImage,
    TResult Function(String title, String description, List<File> files,
            double latitude, double longitude)?
        submitted,
    required TResult orElse(),
  }) {
    if (addedImage != null) {
      return addedImage(files);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddedImage value) addedImage,
    required TResult Function(_RemovedImage value) removedImage,
    required TResult Function(_Submitted value) submitted,
  }) {
    return addedImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddedImage value)? addedImage,
    TResult? Function(_RemovedImage value)? removedImage,
    TResult? Function(_Submitted value)? submitted,
  }) {
    return addedImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddedImage value)? addedImage,
    TResult Function(_RemovedImage value)? removedImage,
    TResult Function(_Submitted value)? submitted,
    required TResult orElse(),
  }) {
    if (addedImage != null) {
      return addedImage(this);
    }
    return orElse();
  }
}

abstract class _AddedImage implements CreatePostEvent {
  const factory _AddedImage(final List<File> files) = _$AddedImageImpl;

  List<File> get files;

  /// Create a copy of CreatePostEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddedImageImplCopyWith<_$AddedImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemovedImageImplCopyWith<$Res> {
  factory _$$RemovedImageImplCopyWith(
          _$RemovedImageImpl value, $Res Function(_$RemovedImageImpl) then) =
      __$$RemovedImageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({File file});
}

/// @nodoc
class __$$RemovedImageImplCopyWithImpl<$Res>
    extends _$CreatePostEventCopyWithImpl<$Res, _$RemovedImageImpl>
    implements _$$RemovedImageImplCopyWith<$Res> {
  __$$RemovedImageImplCopyWithImpl(
      _$RemovedImageImpl _value, $Res Function(_$RemovedImageImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreatePostEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = null,
  }) {
    return _then(_$RemovedImageImpl(
      null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

class _$RemovedImageImpl implements _RemovedImage {
  const _$RemovedImageImpl(this.file);

  @override
  final File file;

  @override
  String toString() {
    return 'CreatePostEvent.removedImage(file: $file)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemovedImageImpl &&
            (identical(other.file, file) || other.file == file));
  }

  @override
  int get hashCode => Object.hash(runtimeType, file);

  /// Create a copy of CreatePostEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemovedImageImplCopyWith<_$RemovedImageImpl> get copyWith =>
      __$$RemovedImageImplCopyWithImpl<_$RemovedImageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(List<File> files) addedImage,
    required TResult Function(File file) removedImage,
    required TResult Function(String title, String description,
            List<File> files, double latitude, double longitude)
        submitted,
  }) {
    return removedImage(file);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(List<File> files)? addedImage,
    TResult? Function(File file)? removedImage,
    TResult? Function(String title, String description, List<File> files,
            double latitude, double longitude)?
        submitted,
  }) {
    return removedImage?.call(file);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<File> files)? addedImage,
    TResult Function(File file)? removedImage,
    TResult Function(String title, String description, List<File> files,
            double latitude, double longitude)?
        submitted,
    required TResult orElse(),
  }) {
    if (removedImage != null) {
      return removedImage(file);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddedImage value) addedImage,
    required TResult Function(_RemovedImage value) removedImage,
    required TResult Function(_Submitted value) submitted,
  }) {
    return removedImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddedImage value)? addedImage,
    TResult? Function(_RemovedImage value)? removedImage,
    TResult? Function(_Submitted value)? submitted,
  }) {
    return removedImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddedImage value)? addedImage,
    TResult Function(_RemovedImage value)? removedImage,
    TResult Function(_Submitted value)? submitted,
    required TResult orElse(),
  }) {
    if (removedImage != null) {
      return removedImage(this);
    }
    return orElse();
  }
}

abstract class _RemovedImage implements CreatePostEvent {
  const factory _RemovedImage(final File file) = _$RemovedImageImpl;

  File get file;

  /// Create a copy of CreatePostEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemovedImageImplCopyWith<_$RemovedImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubmittedImplCopyWith<$Res> {
  factory _$$SubmittedImplCopyWith(
          _$SubmittedImpl value, $Res Function(_$SubmittedImpl) then) =
      __$$SubmittedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String title,
      String description,
      List<File> files,
      double latitude,
      double longitude});
}

/// @nodoc
class __$$SubmittedImplCopyWithImpl<$Res>
    extends _$CreatePostEventCopyWithImpl<$Res, _$SubmittedImpl>
    implements _$$SubmittedImplCopyWith<$Res> {
  __$$SubmittedImplCopyWithImpl(
      _$SubmittedImpl _value, $Res Function(_$SubmittedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreatePostEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? files = null,
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_$SubmittedImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      files: null == files
          ? _value._files
          : files // ignore: cast_nullable_to_non_nullable
              as List<File>,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$SubmittedImpl implements _Submitted {
  const _$SubmittedImpl(
      {required this.title,
      required this.description,
      required final List<File> files,
      required this.latitude,
      required this.longitude})
      : _files = files;

  @override
  final String title;
  @override
  final String description;
  final List<File> _files;
  @override
  List<File> get files {
    if (_files is EqualUnmodifiableListView) return _files;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_files);
  }

  @override
  final double latitude;
  @override
  final double longitude;

  @override
  String toString() {
    return 'CreatePostEvent.submitted(title: $title, description: $description, files: $files, latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmittedImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._files, _files) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, description,
      const DeepCollectionEquality().hash(_files), latitude, longitude);

  /// Create a copy of CreatePostEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmittedImplCopyWith<_$SubmittedImpl> get copyWith =>
      __$$SubmittedImplCopyWithImpl<_$SubmittedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(List<File> files) addedImage,
    required TResult Function(File file) removedImage,
    required TResult Function(String title, String description,
            List<File> files, double latitude, double longitude)
        submitted,
  }) {
    return submitted(title, description, files, latitude, longitude);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(List<File> files)? addedImage,
    TResult? Function(File file)? removedImage,
    TResult? Function(String title, String description, List<File> files,
            double latitude, double longitude)?
        submitted,
  }) {
    return submitted?.call(title, description, files, latitude, longitude);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<File> files)? addedImage,
    TResult Function(File file)? removedImage,
    TResult Function(String title, String description, List<File> files,
            double latitude, double longitude)?
        submitted,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted(title, description, files, latitude, longitude);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddedImage value) addedImage,
    required TResult Function(_RemovedImage value) removedImage,
    required TResult Function(_Submitted value) submitted,
  }) {
    return submitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddedImage value)? addedImage,
    TResult? Function(_RemovedImage value)? removedImage,
    TResult? Function(_Submitted value)? submitted,
  }) {
    return submitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddedImage value)? addedImage,
    TResult Function(_RemovedImage value)? removedImage,
    TResult Function(_Submitted value)? submitted,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted(this);
    }
    return orElse();
  }
}

abstract class _Submitted implements CreatePostEvent {
  const factory _Submitted(
      {required final String title,
      required final String description,
      required final List<File> files,
      required final double latitude,
      required final double longitude}) = _$SubmittedImpl;

  String get title;
  String get description;
  List<File> get files;
  double get latitude;
  double get longitude;

  /// Create a copy of CreatePostEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubmittedImplCopyWith<_$SubmittedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CreatePostState {
  Position? get position => throw _privateConstructorUsedError;
  List<File> get evidences => throw _privateConstructorUsedError;
  GeoPointStatus get status => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Position? position, List<File> evidences, GeoPointStatus status)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Position? position, List<File> evidences, GeoPointStatus status)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Position? position, List<File> evidences, GeoPointStatus status)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of CreatePostState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreatePostStateCopyWith<CreatePostState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatePostStateCopyWith<$Res> {
  factory $CreatePostStateCopyWith(
          CreatePostState value, $Res Function(CreatePostState) then) =
      _$CreatePostStateCopyWithImpl<$Res, CreatePostState>;
  @useResult
  $Res call({Position? position, List<File> evidences, GeoPointStatus status});

  $GeoPointStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$CreatePostStateCopyWithImpl<$Res, $Val extends CreatePostState>
    implements $CreatePostStateCopyWith<$Res> {
  _$CreatePostStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreatePostState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = freezed,
    Object? evidences = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Position?,
      evidences: null == evidences
          ? _value.evidences
          : evidences // ignore: cast_nullable_to_non_nullable
              as List<File>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as GeoPointStatus,
    ) as $Val);
  }

  /// Create a copy of CreatePostState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GeoPointStatusCopyWith<$Res> get status {
    return $GeoPointStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $CreatePostStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Position? position, List<File> evidences, GeoPointStatus status});

  @override
  $GeoPointStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CreatePostStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreatePostState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = freezed,
    Object? evidences = null,
    Object? status = null,
  }) {
    return _then(_$InitialImpl(
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Position?,
      evidences: null == evidences
          ? _value._evidences
          : evidences // ignore: cast_nullable_to_non_nullable
              as List<File>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as GeoPointStatus,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.position,
      final List<File> evidences = const [],
      this.status = const GeoPointStatus.initial()})
      : _evidences = evidences;

  @override
  final Position? position;
  final List<File> _evidences;
  @override
  @JsonKey()
  List<File> get evidences {
    if (_evidences is EqualUnmodifiableListView) return _evidences;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_evidences);
  }

  @override
  @JsonKey()
  final GeoPointStatus status;

  @override
  String toString() {
    return 'CreatePostState.initial(position: $position, evidences: $evidences, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.position, position) ||
                other.position == position) &&
            const DeepCollectionEquality()
                .equals(other._evidences, _evidences) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, position,
      const DeepCollectionEquality().hash(_evidences), status);

  /// Create a copy of CreatePostState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Position? position, List<File> evidences, GeoPointStatus status)
        initial,
  }) {
    return initial(position, evidences, status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Position? position, List<File> evidences, GeoPointStatus status)?
        initial,
  }) {
    return initial?.call(position, evidences, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Position? position, List<File> evidences, GeoPointStatus status)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(position, evidences, status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CreatePostState {
  const factory _Initial(
      {final Position? position,
      final List<File> evidences,
      final GeoPointStatus status}) = _$InitialImpl;

  @override
  Position? get position;
  @override
  List<File> get evidences;
  @override
  GeoPointStatus get status;

  /// Create a copy of CreatePostState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GeoPointStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Position position) success,
    required TResult Function(String error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Position position)? success,
    TResult? Function(String error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Position position)? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GeoPointInitial value) initial,
    required TResult Function(GeoPointLoading value) loading,
    required TResult Function(GeoPointSuccess value) success,
    required TResult Function(GeoPointFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GeoPointInitial value)? initial,
    TResult? Function(GeoPointLoading value)? loading,
    TResult? Function(GeoPointSuccess value)? success,
    TResult? Function(GeoPointFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GeoPointInitial value)? initial,
    TResult Function(GeoPointLoading value)? loading,
    TResult Function(GeoPointSuccess value)? success,
    TResult Function(GeoPointFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeoPointStatusCopyWith<$Res> {
  factory $GeoPointStatusCopyWith(
          GeoPointStatus value, $Res Function(GeoPointStatus) then) =
      _$GeoPointStatusCopyWithImpl<$Res, GeoPointStatus>;
}

/// @nodoc
class _$GeoPointStatusCopyWithImpl<$Res, $Val extends GeoPointStatus>
    implements $GeoPointStatusCopyWith<$Res> {
  _$GeoPointStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GeoPointStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GeoPointInitialImplCopyWith<$Res> {
  factory _$$GeoPointInitialImplCopyWith(_$GeoPointInitialImpl value,
          $Res Function(_$GeoPointInitialImpl) then) =
      __$$GeoPointInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GeoPointInitialImplCopyWithImpl<$Res>
    extends _$GeoPointStatusCopyWithImpl<$Res, _$GeoPointInitialImpl>
    implements _$$GeoPointInitialImplCopyWith<$Res> {
  __$$GeoPointInitialImplCopyWithImpl(
      _$GeoPointInitialImpl _value, $Res Function(_$GeoPointInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of GeoPointStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GeoPointInitialImpl implements GeoPointInitial {
  const _$GeoPointInitialImpl();

  @override
  String toString() {
    return 'GeoPointStatus.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GeoPointInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Position position) success,
    required TResult Function(String error) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Position position)? success,
    TResult? Function(String error)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Position position)? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GeoPointInitial value) initial,
    required TResult Function(GeoPointLoading value) loading,
    required TResult Function(GeoPointSuccess value) success,
    required TResult Function(GeoPointFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GeoPointInitial value)? initial,
    TResult? Function(GeoPointLoading value)? loading,
    TResult? Function(GeoPointSuccess value)? success,
    TResult? Function(GeoPointFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GeoPointInitial value)? initial,
    TResult Function(GeoPointLoading value)? loading,
    TResult Function(GeoPointSuccess value)? success,
    TResult Function(GeoPointFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class GeoPointInitial implements GeoPointStatus {
  const factory GeoPointInitial() = _$GeoPointInitialImpl;
}

/// @nodoc
abstract class _$$GeoPointLoadingImplCopyWith<$Res> {
  factory _$$GeoPointLoadingImplCopyWith(_$GeoPointLoadingImpl value,
          $Res Function(_$GeoPointLoadingImpl) then) =
      __$$GeoPointLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GeoPointLoadingImplCopyWithImpl<$Res>
    extends _$GeoPointStatusCopyWithImpl<$Res, _$GeoPointLoadingImpl>
    implements _$$GeoPointLoadingImplCopyWith<$Res> {
  __$$GeoPointLoadingImplCopyWithImpl(
      _$GeoPointLoadingImpl _value, $Res Function(_$GeoPointLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of GeoPointStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GeoPointLoadingImpl implements GeoPointLoading {
  const _$GeoPointLoadingImpl();

  @override
  String toString() {
    return 'GeoPointStatus.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GeoPointLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Position position) success,
    required TResult Function(String error) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Position position)? success,
    TResult? Function(String error)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Position position)? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GeoPointInitial value) initial,
    required TResult Function(GeoPointLoading value) loading,
    required TResult Function(GeoPointSuccess value) success,
    required TResult Function(GeoPointFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GeoPointInitial value)? initial,
    TResult? Function(GeoPointLoading value)? loading,
    TResult? Function(GeoPointSuccess value)? success,
    TResult? Function(GeoPointFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GeoPointInitial value)? initial,
    TResult Function(GeoPointLoading value)? loading,
    TResult Function(GeoPointSuccess value)? success,
    TResult Function(GeoPointFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class GeoPointLoading implements GeoPointStatus {
  const factory GeoPointLoading() = _$GeoPointLoadingImpl;
}

/// @nodoc
abstract class _$$GeoPointSuccessImplCopyWith<$Res> {
  factory _$$GeoPointSuccessImplCopyWith(_$GeoPointSuccessImpl value,
          $Res Function(_$GeoPointSuccessImpl) then) =
      __$$GeoPointSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Position position});
}

/// @nodoc
class __$$GeoPointSuccessImplCopyWithImpl<$Res>
    extends _$GeoPointStatusCopyWithImpl<$Res, _$GeoPointSuccessImpl>
    implements _$$GeoPointSuccessImplCopyWith<$Res> {
  __$$GeoPointSuccessImplCopyWithImpl(
      _$GeoPointSuccessImpl _value, $Res Function(_$GeoPointSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of GeoPointStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
  }) {
    return _then(_$GeoPointSuccessImpl(
      null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Position,
    ));
  }
}

/// @nodoc

class _$GeoPointSuccessImpl implements GeoPointSuccess {
  const _$GeoPointSuccessImpl(this.position);

  @override
  final Position position;

  @override
  String toString() {
    return 'GeoPointStatus.success(position: $position)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeoPointSuccessImpl &&
            (identical(other.position, position) ||
                other.position == position));
  }

  @override
  int get hashCode => Object.hash(runtimeType, position);

  /// Create a copy of GeoPointStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GeoPointSuccessImplCopyWith<_$GeoPointSuccessImpl> get copyWith =>
      __$$GeoPointSuccessImplCopyWithImpl<_$GeoPointSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Position position) success,
    required TResult Function(String error) failure,
  }) {
    return success(position);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Position position)? success,
    TResult? Function(String error)? failure,
  }) {
    return success?.call(position);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Position position)? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(position);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GeoPointInitial value) initial,
    required TResult Function(GeoPointLoading value) loading,
    required TResult Function(GeoPointSuccess value) success,
    required TResult Function(GeoPointFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GeoPointInitial value)? initial,
    TResult? Function(GeoPointLoading value)? loading,
    TResult? Function(GeoPointSuccess value)? success,
    TResult? Function(GeoPointFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GeoPointInitial value)? initial,
    TResult Function(GeoPointLoading value)? loading,
    TResult Function(GeoPointSuccess value)? success,
    TResult Function(GeoPointFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class GeoPointSuccess implements GeoPointStatus {
  const factory GeoPointSuccess(final Position position) =
      _$GeoPointSuccessImpl;

  Position get position;

  /// Create a copy of GeoPointStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GeoPointSuccessImplCopyWith<_$GeoPointSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GeoPointFailureImplCopyWith<$Res> {
  factory _$$GeoPointFailureImplCopyWith(_$GeoPointFailureImpl value,
          $Res Function(_$GeoPointFailureImpl) then) =
      __$$GeoPointFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$GeoPointFailureImplCopyWithImpl<$Res>
    extends _$GeoPointStatusCopyWithImpl<$Res, _$GeoPointFailureImpl>
    implements _$$GeoPointFailureImplCopyWith<$Res> {
  __$$GeoPointFailureImplCopyWithImpl(
      _$GeoPointFailureImpl _value, $Res Function(_$GeoPointFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of GeoPointStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$GeoPointFailureImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GeoPointFailureImpl implements GeoPointFailure {
  const _$GeoPointFailureImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'GeoPointStatus.failure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeoPointFailureImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of GeoPointStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GeoPointFailureImplCopyWith<_$GeoPointFailureImpl> get copyWith =>
      __$$GeoPointFailureImplCopyWithImpl<_$GeoPointFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Position position) success,
    required TResult Function(String error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Position position)? success,
    TResult? Function(String error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Position position)? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GeoPointInitial value) initial,
    required TResult Function(GeoPointLoading value) loading,
    required TResult Function(GeoPointSuccess value) success,
    required TResult Function(GeoPointFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GeoPointInitial value)? initial,
    TResult? Function(GeoPointLoading value)? loading,
    TResult? Function(GeoPointSuccess value)? success,
    TResult? Function(GeoPointFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GeoPointInitial value)? initial,
    TResult Function(GeoPointLoading value)? loading,
    TResult Function(GeoPointSuccess value)? success,
    TResult Function(GeoPointFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class GeoPointFailure implements GeoPointStatus {
  const factory GeoPointFailure(final String error) = _$GeoPointFailureImpl;

  String get error;

  /// Create a copy of GeoPointStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GeoPointFailureImplCopyWith<_$GeoPointFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
