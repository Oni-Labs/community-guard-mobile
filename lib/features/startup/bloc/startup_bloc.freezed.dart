// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'startup_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StartupEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() read,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? read,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? read,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(Read value) read,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(Read value)? read,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Read value)? read,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StartupEventCopyWith<$Res> {
  factory $StartupEventCopyWith(
          StartupEvent value, $Res Function(StartupEvent) then) =
      _$StartupEventCopyWithImpl<$Res, StartupEvent>;
}

/// @nodoc
class _$StartupEventCopyWithImpl<$Res, $Val extends StartupEvent>
    implements $StartupEventCopyWith<$Res> {
  _$StartupEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StartupEvent
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
    extends _$StartupEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of StartupEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'StartupEvent.started()';
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
    required TResult Function() read,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? read,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? read,
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
    required TResult Function(Started value) started,
    required TResult Function(Read value) read,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(Read value)? read,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Read value)? read,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class Started implements StartupEvent {
  const factory Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$ReadImplCopyWith<$Res> {
  factory _$$ReadImplCopyWith(
          _$ReadImpl value, $Res Function(_$ReadImpl) then) =
      __$$ReadImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReadImplCopyWithImpl<$Res>
    extends _$StartupEventCopyWithImpl<$Res, _$ReadImpl>
    implements _$$ReadImplCopyWith<$Res> {
  __$$ReadImplCopyWithImpl(_$ReadImpl _value, $Res Function(_$ReadImpl) _then)
      : super(_value, _then);

  /// Create a copy of StartupEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ReadImpl implements Read {
  const _$ReadImpl();

  @override
  String toString() {
    return 'StartupEvent.read()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ReadImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() read,
  }) {
    return read();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? read,
  }) {
    return read?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? read,
    required TResult orElse(),
  }) {
    if (read != null) {
      return read();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(Read value) read,
  }) {
    return read(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(Read value)? read,
  }) {
    return read?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Read value)? read,
    required TResult orElse(),
  }) {
    if (read != null) {
      return read(this);
    }
    return orElse();
  }
}

abstract class Read implements StartupEvent {
  const factory Read() = _$ReadImpl;
}

/// @nodoc
mixin _$StartupState {
  User? get user => throw _privateConstructorUsedError;
  StartupStatus get status => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User? user, StartupStatus status) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User? user, StartupStatus status)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User? user, StartupStatus status)? initial,
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

  /// Create a copy of StartupState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StartupStateCopyWith<StartupState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StartupStateCopyWith<$Res> {
  factory $StartupStateCopyWith(
          StartupState value, $Res Function(StartupState) then) =
      _$StartupStateCopyWithImpl<$Res, StartupState>;
  @useResult
  $Res call({User? user, StartupStatus status});

  $UserCopyWith<$Res>? get user;
  $StartupStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$StartupStateCopyWithImpl<$Res, $Val extends StartupState>
    implements $StartupStateCopyWith<$Res> {
  _$StartupStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StartupState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StartupStatus,
    ) as $Val);
  }

  /// Create a copy of StartupState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  /// Create a copy of StartupState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StartupStatusCopyWith<$Res> get status {
    return $StartupStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $StartupStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({User? user, StartupStatus status});

  @override
  $UserCopyWith<$Res>? get user;
  @override
  $StartupStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$StartupStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of StartupState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? status = null,
  }) {
    return _then(_$InitialImpl(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StartupStatus,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl({this.user, this.status = const StartupStatus.guest()});

  @override
  final User? user;
  @override
  @JsonKey()
  final StartupStatus status;

  @override
  String toString() {
    return 'StartupState.initial(user: $user, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, status);

  /// Create a copy of StartupState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User? user, StartupStatus status) initial,
  }) {
    return initial(user, status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User? user, StartupStatus status)? initial,
  }) {
    return initial?.call(user, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User? user, StartupStatus status)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(user, status);
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

abstract class _Initial implements StartupState {
  const factory _Initial({final User? user, final StartupStatus status}) =
      _$InitialImpl;

  @override
  User? get user;
  @override
  StartupStatus get status;

  /// Create a copy of StartupState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$StartupStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User? user) logged,
    required TResult Function() guest,
    required TResult Function(String error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User? user)? logged,
    TResult? Function()? guest,
    TResult? Function(String error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User? user)? logged,
    TResult Function()? guest,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StatusLogged value) logged,
    required TResult Function(StatusGuest value) guest,
    required TResult Function(StatusFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StatusLogged value)? logged,
    TResult? Function(StatusGuest value)? guest,
    TResult? Function(StatusFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatusLogged value)? logged,
    TResult Function(StatusGuest value)? guest,
    TResult Function(StatusFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StartupStatusCopyWith<$Res> {
  factory $StartupStatusCopyWith(
          StartupStatus value, $Res Function(StartupStatus) then) =
      _$StartupStatusCopyWithImpl<$Res, StartupStatus>;
}

/// @nodoc
class _$StartupStatusCopyWithImpl<$Res, $Val extends StartupStatus>
    implements $StartupStatusCopyWith<$Res> {
  _$StartupStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StartupStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StatusLoggedImplCopyWith<$Res> {
  factory _$$StatusLoggedImplCopyWith(
          _$StatusLoggedImpl value, $Res Function(_$StatusLoggedImpl) then) =
      __$$StatusLoggedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User? user});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$StatusLoggedImplCopyWithImpl<$Res>
    extends _$StartupStatusCopyWithImpl<$Res, _$StatusLoggedImpl>
    implements _$$StatusLoggedImplCopyWith<$Res> {
  __$$StatusLoggedImplCopyWithImpl(
      _$StatusLoggedImpl _value, $Res Function(_$StatusLoggedImpl) _then)
      : super(_value, _then);

  /// Create a copy of StartupStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$StatusLoggedImpl(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }

  /// Create a copy of StartupStatus
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$StatusLoggedImpl implements StatusLogged {
  const _$StatusLoggedImpl({this.user});

  @override
  final User? user;

  @override
  String toString() {
    return 'StartupStatus.logged(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatusLoggedImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of StartupStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StatusLoggedImplCopyWith<_$StatusLoggedImpl> get copyWith =>
      __$$StatusLoggedImplCopyWithImpl<_$StatusLoggedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User? user) logged,
    required TResult Function() guest,
    required TResult Function(String error) failure,
  }) {
    return logged(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User? user)? logged,
    TResult? Function()? guest,
    TResult? Function(String error)? failure,
  }) {
    return logged?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User? user)? logged,
    TResult Function()? guest,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (logged != null) {
      return logged(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StatusLogged value) logged,
    required TResult Function(StatusGuest value) guest,
    required TResult Function(StatusFailure value) failure,
  }) {
    return logged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StatusLogged value)? logged,
    TResult? Function(StatusGuest value)? guest,
    TResult? Function(StatusFailure value)? failure,
  }) {
    return logged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatusLogged value)? logged,
    TResult Function(StatusGuest value)? guest,
    TResult Function(StatusFailure value)? failure,
    required TResult orElse(),
  }) {
    if (logged != null) {
      return logged(this);
    }
    return orElse();
  }
}

abstract class StatusLogged implements StartupStatus {
  const factory StatusLogged({final User? user}) = _$StatusLoggedImpl;

  User? get user;

  /// Create a copy of StartupStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StatusLoggedImplCopyWith<_$StatusLoggedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StatusGuestImplCopyWith<$Res> {
  factory _$$StatusGuestImplCopyWith(
          _$StatusGuestImpl value, $Res Function(_$StatusGuestImpl) then) =
      __$$StatusGuestImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StatusGuestImplCopyWithImpl<$Res>
    extends _$StartupStatusCopyWithImpl<$Res, _$StatusGuestImpl>
    implements _$$StatusGuestImplCopyWith<$Res> {
  __$$StatusGuestImplCopyWithImpl(
      _$StatusGuestImpl _value, $Res Function(_$StatusGuestImpl) _then)
      : super(_value, _then);

  /// Create a copy of StartupStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StatusGuestImpl implements StatusGuest {
  const _$StatusGuestImpl();

  @override
  String toString() {
    return 'StartupStatus.guest()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StatusGuestImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User? user) logged,
    required TResult Function() guest,
    required TResult Function(String error) failure,
  }) {
    return guest();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User? user)? logged,
    TResult? Function()? guest,
    TResult? Function(String error)? failure,
  }) {
    return guest?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User? user)? logged,
    TResult Function()? guest,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (guest != null) {
      return guest();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StatusLogged value) logged,
    required TResult Function(StatusGuest value) guest,
    required TResult Function(StatusFailure value) failure,
  }) {
    return guest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StatusLogged value)? logged,
    TResult? Function(StatusGuest value)? guest,
    TResult? Function(StatusFailure value)? failure,
  }) {
    return guest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatusLogged value)? logged,
    TResult Function(StatusGuest value)? guest,
    TResult Function(StatusFailure value)? failure,
    required TResult orElse(),
  }) {
    if (guest != null) {
      return guest(this);
    }
    return orElse();
  }
}

abstract class StatusGuest implements StartupStatus {
  const factory StatusGuest() = _$StatusGuestImpl;
}

/// @nodoc
abstract class _$$StatusFailureImplCopyWith<$Res> {
  factory _$$StatusFailureImplCopyWith(
          _$StatusFailureImpl value, $Res Function(_$StatusFailureImpl) then) =
      __$$StatusFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$StatusFailureImplCopyWithImpl<$Res>
    extends _$StartupStatusCopyWithImpl<$Res, _$StatusFailureImpl>
    implements _$$StatusFailureImplCopyWith<$Res> {
  __$$StatusFailureImplCopyWithImpl(
      _$StatusFailureImpl _value, $Res Function(_$StatusFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of StartupStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$StatusFailureImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StatusFailureImpl implements StatusFailure {
  const _$StatusFailureImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'StartupStatus.failure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatusFailureImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of StartupStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StatusFailureImplCopyWith<_$StatusFailureImpl> get copyWith =>
      __$$StatusFailureImplCopyWithImpl<_$StatusFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User? user) logged,
    required TResult Function() guest,
    required TResult Function(String error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User? user)? logged,
    TResult? Function()? guest,
    TResult? Function(String error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User? user)? logged,
    TResult Function()? guest,
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
    required TResult Function(StatusLogged value) logged,
    required TResult Function(StatusGuest value) guest,
    required TResult Function(StatusFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StatusLogged value)? logged,
    TResult? Function(StatusGuest value)? guest,
    TResult? Function(StatusFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatusLogged value)? logged,
    TResult Function(StatusGuest value)? guest,
    TResult Function(StatusFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class StatusFailure implements StartupStatus {
  const factory StatusFailure({required final String error}) =
      _$StatusFailureImpl;

  String get error;

  /// Create a copy of StartupStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StatusFailureImplCopyWith<_$StatusFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
