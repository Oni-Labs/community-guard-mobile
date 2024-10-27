// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feed_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FeedEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedEventCopyWith<$Res> {
  factory $FeedEventCopyWith(FeedEvent value, $Res Function(FeedEvent) then) =
      _$FeedEventCopyWithImpl<$Res, FeedEvent>;
}

/// @nodoc
class _$FeedEventCopyWithImpl<$Res, $Val extends FeedEvent>
    implements $FeedEventCopyWith<$Res> {
  _$FeedEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FeedEvent
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
    extends _$FeedEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeedEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'FeedEvent.started()';
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
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
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
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements FeedEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
mixin _$FeedState {
  bool get isFavorite => throw _privateConstructorUsedError;
  bool get isSaved => throw _privateConstructorUsedError;
  bool get isCompleted => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  List<Post> get posts => throw _privateConstructorUsedError;
  FeedStatus get status => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isFavorite, bool isSaved, bool isCompleted,
            int page, List<Post> posts, FeedStatus status)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isFavorite, bool isSaved, bool isCompleted, int page,
            List<Post> posts, FeedStatus status)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isFavorite, bool isSaved, bool isCompleted, int page,
            List<Post> posts, FeedStatus status)?
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

  /// Create a copy of FeedState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FeedStateCopyWith<FeedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedStateCopyWith<$Res> {
  factory $FeedStateCopyWith(FeedState value, $Res Function(FeedState) then) =
      _$FeedStateCopyWithImpl<$Res, FeedState>;
  @useResult
  $Res call(
      {bool isFavorite,
      bool isSaved,
      bool isCompleted,
      int page,
      List<Post> posts,
      FeedStatus status});

  $FeedStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$FeedStateCopyWithImpl<$Res, $Val extends FeedState>
    implements $FeedStateCopyWith<$Res> {
  _$FeedStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FeedState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isFavorite = null,
    Object? isSaved = null,
    Object? isCompleted = null,
    Object? page = null,
    Object? posts = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaved: null == isSaved
          ? _value.isSaved
          : isSaved // ignore: cast_nullable_to_non_nullable
              as bool,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      posts: null == posts
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<Post>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FeedStatus,
    ) as $Val);
  }

  /// Create a copy of FeedState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FeedStatusCopyWith<$Res> get status {
    return $FeedStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $FeedStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isFavorite,
      bool isSaved,
      bool isCompleted,
      int page,
      List<Post> posts,
      FeedStatus status});

  @override
  $FeedStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$FeedStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeedState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isFavorite = null,
    Object? isSaved = null,
    Object? isCompleted = null,
    Object? page = null,
    Object? posts = null,
    Object? status = null,
  }) {
    return _then(_$InitialImpl(
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaved: null == isSaved
          ? _value.isSaved
          : isSaved // ignore: cast_nullable_to_non_nullable
              as bool,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      posts: null == posts
          ? _value._posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<Post>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FeedStatus,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.isFavorite = false,
      this.isSaved = false,
      this.isCompleted = false,
      this.page = 0,
      final List<Post> posts = const [],
      this.status = const FeedStatus.initial()})
      : _posts = posts;

  @override
  @JsonKey()
  final bool isFavorite;
  @override
  @JsonKey()
  final bool isSaved;
  @override
  @JsonKey()
  final bool isCompleted;
  @override
  @JsonKey()
  final int page;
  final List<Post> _posts;
  @override
  @JsonKey()
  List<Post> get posts {
    if (_posts is EqualUnmodifiableListView) return _posts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_posts);
  }

  @override
  @JsonKey()
  final FeedStatus status;

  @override
  String toString() {
    return 'FeedState.initial(isFavorite: $isFavorite, isSaved: $isSaved, isCompleted: $isCompleted, page: $page, posts: $posts, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite) &&
            (identical(other.isSaved, isSaved) || other.isSaved == isSaved) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted) &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality().equals(other._posts, _posts) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isFavorite, isSaved, isCompleted,
      page, const DeepCollectionEquality().hash(_posts), status);

  /// Create a copy of FeedState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isFavorite, bool isSaved, bool isCompleted,
            int page, List<Post> posts, FeedStatus status)
        initial,
  }) {
    return initial(isFavorite, isSaved, isCompleted, page, posts, status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isFavorite, bool isSaved, bool isCompleted, int page,
            List<Post> posts, FeedStatus status)?
        initial,
  }) {
    return initial?.call(isFavorite, isSaved, isCompleted, page, posts, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isFavorite, bool isSaved, bool isCompleted, int page,
            List<Post> posts, FeedStatus status)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(isFavorite, isSaved, isCompleted, page, posts, status);
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

abstract class _Initial implements FeedState {
  const factory _Initial(
      {final bool isFavorite,
      final bool isSaved,
      final bool isCompleted,
      final int page,
      final List<Post> posts,
      final FeedStatus status}) = _$InitialImpl;

  @override
  bool get isFavorite;
  @override
  bool get isSaved;
  @override
  bool get isCompleted;
  @override
  int get page;
  @override
  List<Post> get posts;
  @override
  FeedStatus get status;

  /// Create a copy of FeedState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FeedStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Post> posts) success,
    required TResult Function(String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Post> posts)? success,
    TResult? Function(String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Post> posts)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FeedInitial value) initial,
    required TResult Function(FeedLoading value) loading,
    required TResult Function(FeedSuccess value) success,
    required TResult Function(FeedFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FeedInitial value)? initial,
    TResult? Function(FeedLoading value)? loading,
    TResult? Function(FeedSuccess value)? success,
    TResult? Function(FeedFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FeedInitial value)? initial,
    TResult Function(FeedLoading value)? loading,
    TResult Function(FeedSuccess value)? success,
    TResult Function(FeedFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedStatusCopyWith<$Res> {
  factory $FeedStatusCopyWith(
          FeedStatus value, $Res Function(FeedStatus) then) =
      _$FeedStatusCopyWithImpl<$Res, FeedStatus>;
}

/// @nodoc
class _$FeedStatusCopyWithImpl<$Res, $Val extends FeedStatus>
    implements $FeedStatusCopyWith<$Res> {
  _$FeedStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FeedStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FeedInitialImplCopyWith<$Res> {
  factory _$$FeedInitialImplCopyWith(
          _$FeedInitialImpl value, $Res Function(_$FeedInitialImpl) then) =
      __$$FeedInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FeedInitialImplCopyWithImpl<$Res>
    extends _$FeedStatusCopyWithImpl<$Res, _$FeedInitialImpl>
    implements _$$FeedInitialImplCopyWith<$Res> {
  __$$FeedInitialImplCopyWithImpl(
      _$FeedInitialImpl _value, $Res Function(_$FeedInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeedStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FeedInitialImpl implements FeedInitial {
  const _$FeedInitialImpl();

  @override
  String toString() {
    return 'FeedStatus.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FeedInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Post> posts) success,
    required TResult Function(String message) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Post> posts)? success,
    TResult? Function(String message)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Post> posts)? success,
    TResult Function(String message)? failure,
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
    required TResult Function(FeedInitial value) initial,
    required TResult Function(FeedLoading value) loading,
    required TResult Function(FeedSuccess value) success,
    required TResult Function(FeedFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FeedInitial value)? initial,
    TResult? Function(FeedLoading value)? loading,
    TResult? Function(FeedSuccess value)? success,
    TResult? Function(FeedFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FeedInitial value)? initial,
    TResult Function(FeedLoading value)? loading,
    TResult Function(FeedSuccess value)? success,
    TResult Function(FeedFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class FeedInitial implements FeedStatus {
  const factory FeedInitial() = _$FeedInitialImpl;
}

/// @nodoc
abstract class _$$FeedLoadingImplCopyWith<$Res> {
  factory _$$FeedLoadingImplCopyWith(
          _$FeedLoadingImpl value, $Res Function(_$FeedLoadingImpl) then) =
      __$$FeedLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FeedLoadingImplCopyWithImpl<$Res>
    extends _$FeedStatusCopyWithImpl<$Res, _$FeedLoadingImpl>
    implements _$$FeedLoadingImplCopyWith<$Res> {
  __$$FeedLoadingImplCopyWithImpl(
      _$FeedLoadingImpl _value, $Res Function(_$FeedLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeedStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FeedLoadingImpl implements FeedLoading {
  const _$FeedLoadingImpl();

  @override
  String toString() {
    return 'FeedStatus.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FeedLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Post> posts) success,
    required TResult Function(String message) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Post> posts)? success,
    TResult? Function(String message)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Post> posts)? success,
    TResult Function(String message)? failure,
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
    required TResult Function(FeedInitial value) initial,
    required TResult Function(FeedLoading value) loading,
    required TResult Function(FeedSuccess value) success,
    required TResult Function(FeedFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FeedInitial value)? initial,
    TResult? Function(FeedLoading value)? loading,
    TResult? Function(FeedSuccess value)? success,
    TResult? Function(FeedFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FeedInitial value)? initial,
    TResult Function(FeedLoading value)? loading,
    TResult Function(FeedSuccess value)? success,
    TResult Function(FeedFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class FeedLoading implements FeedStatus {
  const factory FeedLoading() = _$FeedLoadingImpl;
}

/// @nodoc
abstract class _$$FeedSuccessImplCopyWith<$Res> {
  factory _$$FeedSuccessImplCopyWith(
          _$FeedSuccessImpl value, $Res Function(_$FeedSuccessImpl) then) =
      __$$FeedSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Post> posts});
}

/// @nodoc
class __$$FeedSuccessImplCopyWithImpl<$Res>
    extends _$FeedStatusCopyWithImpl<$Res, _$FeedSuccessImpl>
    implements _$$FeedSuccessImplCopyWith<$Res> {
  __$$FeedSuccessImplCopyWithImpl(
      _$FeedSuccessImpl _value, $Res Function(_$FeedSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeedStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posts = null,
  }) {
    return _then(_$FeedSuccessImpl(
      null == posts
          ? _value._posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<Post>,
    ));
  }
}

/// @nodoc

class _$FeedSuccessImpl implements FeedSuccess {
  const _$FeedSuccessImpl(final List<Post> posts) : _posts = posts;

  final List<Post> _posts;
  @override
  List<Post> get posts {
    if (_posts is EqualUnmodifiableListView) return _posts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_posts);
  }

  @override
  String toString() {
    return 'FeedStatus.success(posts: $posts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedSuccessImpl &&
            const DeepCollectionEquality().equals(other._posts, _posts));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_posts));

  /// Create a copy of FeedStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedSuccessImplCopyWith<_$FeedSuccessImpl> get copyWith =>
      __$$FeedSuccessImplCopyWithImpl<_$FeedSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Post> posts) success,
    required TResult Function(String message) failure,
  }) {
    return success(posts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Post> posts)? success,
    TResult? Function(String message)? failure,
  }) {
    return success?.call(posts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Post> posts)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(posts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FeedInitial value) initial,
    required TResult Function(FeedLoading value) loading,
    required TResult Function(FeedSuccess value) success,
    required TResult Function(FeedFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FeedInitial value)? initial,
    TResult? Function(FeedLoading value)? loading,
    TResult? Function(FeedSuccess value)? success,
    TResult? Function(FeedFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FeedInitial value)? initial,
    TResult Function(FeedLoading value)? loading,
    TResult Function(FeedSuccess value)? success,
    TResult Function(FeedFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class FeedSuccess implements FeedStatus {
  const factory FeedSuccess(final List<Post> posts) = _$FeedSuccessImpl;

  List<Post> get posts;

  /// Create a copy of FeedStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeedSuccessImplCopyWith<_$FeedSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FeedFailureImplCopyWith<$Res> {
  factory _$$FeedFailureImplCopyWith(
          _$FeedFailureImpl value, $Res Function(_$FeedFailureImpl) then) =
      __$$FeedFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$FeedFailureImplCopyWithImpl<$Res>
    extends _$FeedStatusCopyWithImpl<$Res, _$FeedFailureImpl>
    implements _$$FeedFailureImplCopyWith<$Res> {
  __$$FeedFailureImplCopyWithImpl(
      _$FeedFailureImpl _value, $Res Function(_$FeedFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeedStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$FeedFailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FeedFailureImpl implements FeedFailure {
  const _$FeedFailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'FeedStatus.failure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of FeedStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedFailureImplCopyWith<_$FeedFailureImpl> get copyWith =>
      __$$FeedFailureImplCopyWithImpl<_$FeedFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Post> posts) success,
    required TResult Function(String message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Post> posts)? success,
    TResult? Function(String message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Post> posts)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FeedInitial value) initial,
    required TResult Function(FeedLoading value) loading,
    required TResult Function(FeedSuccess value) success,
    required TResult Function(FeedFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FeedInitial value)? initial,
    TResult? Function(FeedLoading value)? loading,
    TResult? Function(FeedSuccess value)? success,
    TResult? Function(FeedFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FeedInitial value)? initial,
    TResult Function(FeedLoading value)? loading,
    TResult Function(FeedSuccess value)? success,
    TResult Function(FeedFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class FeedFailure implements FeedStatus {
  const factory FeedFailure(final String message) = _$FeedFailureImpl;

  String get message;

  /// Create a copy of FeedStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeedFailureImplCopyWith<_$FeedFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
