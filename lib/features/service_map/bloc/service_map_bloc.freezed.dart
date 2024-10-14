// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service_map_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ServiceMapEvent {
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
abstract class $ServiceMapEventCopyWith<$Res> {
  factory $ServiceMapEventCopyWith(
          ServiceMapEvent value, $Res Function(ServiceMapEvent) then) =
      _$ServiceMapEventCopyWithImpl<$Res, ServiceMapEvent>;
}

/// @nodoc
class _$ServiceMapEventCopyWithImpl<$Res, $Val extends ServiceMapEvent>
    implements $ServiceMapEventCopyWith<$Res> {
  _$ServiceMapEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ServiceMapEvent
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
    extends _$ServiceMapEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServiceMapEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'ServiceMapEvent.started()';
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

abstract class _Started implements ServiceMapEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
mixin _$ServiceMapState {
  Position? get position => throw _privateConstructorUsedError;
  GeoPointStatus get status => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Position? position, GeoPointStatus status)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Position? position, GeoPointStatus status)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Position? position, GeoPointStatus status)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of ServiceMapState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ServiceMapStateCopyWith<ServiceMapState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceMapStateCopyWith<$Res> {
  factory $ServiceMapStateCopyWith(
          ServiceMapState value, $Res Function(ServiceMapState) then) =
      _$ServiceMapStateCopyWithImpl<$Res, ServiceMapState>;
  @useResult
  $Res call({Position? position, GeoPointStatus status});

  $GeoPointStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$ServiceMapStateCopyWithImpl<$Res, $Val extends ServiceMapState>
    implements $ServiceMapStateCopyWith<$Res> {
  _$ServiceMapStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ServiceMapState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = freezed,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Position?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as GeoPointStatus,
    ) as $Val);
  }

  /// Create a copy of ServiceMapState
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
    implements $ServiceMapStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Position? position, GeoPointStatus status});

  @override
  $GeoPointStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ServiceMapStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServiceMapState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = freezed,
    Object? status = null,
  }) {
    return _then(_$InitialImpl(
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Position?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as GeoPointStatus,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl(
      {this.position, this.status = const GeoPointStatus.initial()});

  @override
  final Position? position;
  @override
  @JsonKey()
  final GeoPointStatus status;

  @override
  String toString() {
    return 'ServiceMapState.initial(position: $position, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, position, status);

  /// Create a copy of ServiceMapState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Position? position, GeoPointStatus status)
        initial,
  }) {
    return initial(position, status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Position? position, GeoPointStatus status)? initial,
  }) {
    return initial?.call(position, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Position? position, GeoPointStatus status)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(position, status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements ServiceMapState {
  const factory Initial(
      {final Position? position, final GeoPointStatus status}) = _$InitialImpl;

  @override
  Position? get position;
  @override
  GeoPointStatus get status;

  /// Create a copy of ServiceMapState
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
