// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password) submitted,
    required TResult Function(
            String name, String email, String password, String confirmPassword)
        registered,
    required TResult Function(String email) eventSentToken,
    required TResult Function(
            String token, String password, String confirmPassword)
        resetedPassword,
    required TResult Function() logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email, String password)? submitted,
    TResult? Function(
            String name, String email, String password, String confirmPassword)?
        registered,
    TResult? Function(String email)? eventSentToken,
    TResult? Function(String token, String password, String confirmPassword)?
        resetedPassword,
    TResult? Function()? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)? submitted,
    TResult Function(
            String name, String email, String password, String confirmPassword)?
        registered,
    TResult Function(String email)? eventSentToken,
    TResult Function(String token, String password, String confirmPassword)?
        resetedPassword,
    TResult Function()? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(Submitted value) submitted,
    required TResult Function(Registered value) registered,
    required TResult Function(EventSentToken value) eventSentToken,
    required TResult Function(ResetedPassword value) resetedPassword,
    required TResult Function(LoggedOut value) logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(Submitted value)? submitted,
    TResult? Function(Registered value)? registered,
    TResult? Function(EventSentToken value)? eventSentToken,
    TResult? Function(ResetedPassword value)? resetedPassword,
    TResult? Function(LoggedOut value)? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Submitted value)? submitted,
    TResult Function(Registered value)? registered,
    TResult Function(EventSentToken value)? eventSentToken,
    TResult Function(ResetedPassword value)? resetedPassword,
    TResult Function(LoggedOut value)? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res, LoginEvent>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res, $Val extends LoginEvent>
    implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginEvent
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
    extends _$LoginEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'LoginEvent.started()';
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
    required TResult Function(String email, String password) submitted,
    required TResult Function(
            String name, String email, String password, String confirmPassword)
        registered,
    required TResult Function(String email) eventSentToken,
    required TResult Function(
            String token, String password, String confirmPassword)
        resetedPassword,
    required TResult Function() logout,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email, String password)? submitted,
    TResult? Function(
            String name, String email, String password, String confirmPassword)?
        registered,
    TResult? Function(String email)? eventSentToken,
    TResult? Function(String token, String password, String confirmPassword)?
        resetedPassword,
    TResult? Function()? logout,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)? submitted,
    TResult Function(
            String name, String email, String password, String confirmPassword)?
        registered,
    TResult Function(String email)? eventSentToken,
    TResult Function(String token, String password, String confirmPassword)?
        resetedPassword,
    TResult Function()? logout,
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
    required TResult Function(Submitted value) submitted,
    required TResult Function(Registered value) registered,
    required TResult Function(EventSentToken value) eventSentToken,
    required TResult Function(ResetedPassword value) resetedPassword,
    required TResult Function(LoggedOut value) logout,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(Submitted value)? submitted,
    TResult? Function(Registered value)? registered,
    TResult? Function(EventSentToken value)? eventSentToken,
    TResult? Function(ResetedPassword value)? resetedPassword,
    TResult? Function(LoggedOut value)? logout,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Submitted value)? submitted,
    TResult Function(Registered value)? registered,
    TResult Function(EventSentToken value)? eventSentToken,
    TResult Function(ResetedPassword value)? resetedPassword,
    TResult Function(LoggedOut value)? logout,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class Started implements LoginEvent {
  const factory Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$SubmittedImplCopyWith<$Res> {
  factory _$$SubmittedImplCopyWith(
          _$SubmittedImpl value, $Res Function(_$SubmittedImpl) then) =
      __$$SubmittedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$SubmittedImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$SubmittedImpl>
    implements _$$SubmittedImplCopyWith<$Res> {
  __$$SubmittedImplCopyWithImpl(
      _$SubmittedImpl _value, $Res Function(_$SubmittedImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$SubmittedImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SubmittedImpl implements Submitted {
  const _$SubmittedImpl({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'LoginEvent.submitted(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmittedImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  /// Create a copy of LoginEvent
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
    required TResult Function(String email, String password) submitted,
    required TResult Function(
            String name, String email, String password, String confirmPassword)
        registered,
    required TResult Function(String email) eventSentToken,
    required TResult Function(
            String token, String password, String confirmPassword)
        resetedPassword,
    required TResult Function() logout,
  }) {
    return submitted(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email, String password)? submitted,
    TResult? Function(
            String name, String email, String password, String confirmPassword)?
        registered,
    TResult? Function(String email)? eventSentToken,
    TResult? Function(String token, String password, String confirmPassword)?
        resetedPassword,
    TResult? Function()? logout,
  }) {
    return submitted?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)? submitted,
    TResult Function(
            String name, String email, String password, String confirmPassword)?
        registered,
    TResult Function(String email)? eventSentToken,
    TResult Function(String token, String password, String confirmPassword)?
        resetedPassword,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(Submitted value) submitted,
    required TResult Function(Registered value) registered,
    required TResult Function(EventSentToken value) eventSentToken,
    required TResult Function(ResetedPassword value) resetedPassword,
    required TResult Function(LoggedOut value) logout,
  }) {
    return submitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(Submitted value)? submitted,
    TResult? Function(Registered value)? registered,
    TResult? Function(EventSentToken value)? eventSentToken,
    TResult? Function(ResetedPassword value)? resetedPassword,
    TResult? Function(LoggedOut value)? logout,
  }) {
    return submitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Submitted value)? submitted,
    TResult Function(Registered value)? registered,
    TResult Function(EventSentToken value)? eventSentToken,
    TResult Function(ResetedPassword value)? resetedPassword,
    TResult Function(LoggedOut value)? logout,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted(this);
    }
    return orElse();
  }
}

abstract class Submitted implements LoginEvent {
  const factory Submitted(
      {required final String email,
      required final String password}) = _$SubmittedImpl;

  String get email;
  String get password;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubmittedImplCopyWith<_$SubmittedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisteredImplCopyWith<$Res> {
  factory _$$RegisteredImplCopyWith(
          _$RegisteredImpl value, $Res Function(_$RegisteredImpl) then) =
      __$$RegisteredImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String name, String email, String password, String confirmPassword});
}

/// @nodoc
class __$$RegisteredImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$RegisteredImpl>
    implements _$$RegisteredImplCopyWith<$Res> {
  __$$RegisteredImplCopyWithImpl(
      _$RegisteredImpl _value, $Res Function(_$RegisteredImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? password = null,
    Object? confirmPassword = null,
  }) {
    return _then(_$RegisteredImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegisteredImpl implements Registered {
  const _$RegisteredImpl(
      {required this.name,
      required this.email,
      required this.password,
      required this.confirmPassword});

  @override
  final String name;
  @override
  final String email;
  @override
  final String password;
  @override
  final String confirmPassword;

  @override
  String toString() {
    return 'LoginEvent.registered(name: $name, email: $email, password: $password, confirmPassword: $confirmPassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisteredImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, email, password, confirmPassword);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisteredImplCopyWith<_$RegisteredImpl> get copyWith =>
      __$$RegisteredImplCopyWithImpl<_$RegisteredImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password) submitted,
    required TResult Function(
            String name, String email, String password, String confirmPassword)
        registered,
    required TResult Function(String email) eventSentToken,
    required TResult Function(
            String token, String password, String confirmPassword)
        resetedPassword,
    required TResult Function() logout,
  }) {
    return registered(name, email, password, confirmPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email, String password)? submitted,
    TResult? Function(
            String name, String email, String password, String confirmPassword)?
        registered,
    TResult? Function(String email)? eventSentToken,
    TResult? Function(String token, String password, String confirmPassword)?
        resetedPassword,
    TResult? Function()? logout,
  }) {
    return registered?.call(name, email, password, confirmPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)? submitted,
    TResult Function(
            String name, String email, String password, String confirmPassword)?
        registered,
    TResult Function(String email)? eventSentToken,
    TResult Function(String token, String password, String confirmPassword)?
        resetedPassword,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (registered != null) {
      return registered(name, email, password, confirmPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(Submitted value) submitted,
    required TResult Function(Registered value) registered,
    required TResult Function(EventSentToken value) eventSentToken,
    required TResult Function(ResetedPassword value) resetedPassword,
    required TResult Function(LoggedOut value) logout,
  }) {
    return registered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(Submitted value)? submitted,
    TResult? Function(Registered value)? registered,
    TResult? Function(EventSentToken value)? eventSentToken,
    TResult? Function(ResetedPassword value)? resetedPassword,
    TResult? Function(LoggedOut value)? logout,
  }) {
    return registered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Submitted value)? submitted,
    TResult Function(Registered value)? registered,
    TResult Function(EventSentToken value)? eventSentToken,
    TResult Function(ResetedPassword value)? resetedPassword,
    TResult Function(LoggedOut value)? logout,
    required TResult orElse(),
  }) {
    if (registered != null) {
      return registered(this);
    }
    return orElse();
  }
}

abstract class Registered implements LoginEvent {
  const factory Registered(
      {required final String name,
      required final String email,
      required final String password,
      required final String confirmPassword}) = _$RegisteredImpl;

  String get name;
  String get email;
  String get password;
  String get confirmPassword;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisteredImplCopyWith<_$RegisteredImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EventSentTokenImplCopyWith<$Res> {
  factory _$$EventSentTokenImplCopyWith(_$EventSentTokenImpl value,
          $Res Function(_$EventSentTokenImpl) then) =
      __$$EventSentTokenImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$EventSentTokenImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$EventSentTokenImpl>
    implements _$$EventSentTokenImplCopyWith<$Res> {
  __$$EventSentTokenImplCopyWithImpl(
      _$EventSentTokenImpl _value, $Res Function(_$EventSentTokenImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$EventSentTokenImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EventSentTokenImpl implements EventSentToken {
  const _$EventSentTokenImpl({required this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'LoginEvent.eventSentToken(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventSentTokenImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EventSentTokenImplCopyWith<_$EventSentTokenImpl> get copyWith =>
      __$$EventSentTokenImplCopyWithImpl<_$EventSentTokenImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password) submitted,
    required TResult Function(
            String name, String email, String password, String confirmPassword)
        registered,
    required TResult Function(String email) eventSentToken,
    required TResult Function(
            String token, String password, String confirmPassword)
        resetedPassword,
    required TResult Function() logout,
  }) {
    return eventSentToken(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email, String password)? submitted,
    TResult? Function(
            String name, String email, String password, String confirmPassword)?
        registered,
    TResult? Function(String email)? eventSentToken,
    TResult? Function(String token, String password, String confirmPassword)?
        resetedPassword,
    TResult? Function()? logout,
  }) {
    return eventSentToken?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)? submitted,
    TResult Function(
            String name, String email, String password, String confirmPassword)?
        registered,
    TResult Function(String email)? eventSentToken,
    TResult Function(String token, String password, String confirmPassword)?
        resetedPassword,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (eventSentToken != null) {
      return eventSentToken(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(Submitted value) submitted,
    required TResult Function(Registered value) registered,
    required TResult Function(EventSentToken value) eventSentToken,
    required TResult Function(ResetedPassword value) resetedPassword,
    required TResult Function(LoggedOut value) logout,
  }) {
    return eventSentToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(Submitted value)? submitted,
    TResult? Function(Registered value)? registered,
    TResult? Function(EventSentToken value)? eventSentToken,
    TResult? Function(ResetedPassword value)? resetedPassword,
    TResult? Function(LoggedOut value)? logout,
  }) {
    return eventSentToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Submitted value)? submitted,
    TResult Function(Registered value)? registered,
    TResult Function(EventSentToken value)? eventSentToken,
    TResult Function(ResetedPassword value)? resetedPassword,
    TResult Function(LoggedOut value)? logout,
    required TResult orElse(),
  }) {
    if (eventSentToken != null) {
      return eventSentToken(this);
    }
    return orElse();
  }
}

abstract class EventSentToken implements LoginEvent {
  const factory EventSentToken({required final String email}) =
      _$EventSentTokenImpl;

  String get email;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EventSentTokenImplCopyWith<_$EventSentTokenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetedPasswordImplCopyWith<$Res> {
  factory _$$ResetedPasswordImplCopyWith(_$ResetedPasswordImpl value,
          $Res Function(_$ResetedPasswordImpl) then) =
      __$$ResetedPasswordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String token, String password, String confirmPassword});
}

/// @nodoc
class __$$ResetedPasswordImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$ResetedPasswordImpl>
    implements _$$ResetedPasswordImplCopyWith<$Res> {
  __$$ResetedPasswordImplCopyWithImpl(
      _$ResetedPasswordImpl _value, $Res Function(_$ResetedPasswordImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? password = null,
    Object? confirmPassword = null,
  }) {
    return _then(_$ResetedPasswordImpl(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ResetedPasswordImpl implements ResetedPassword {
  const _$ResetedPasswordImpl(
      {required this.token,
      required this.password,
      required this.confirmPassword});

  @override
  final String token;
  @override
  final String password;
  @override
  final String confirmPassword;

  @override
  String toString() {
    return 'LoginEvent.resetedPassword(token: $token, password: $password, confirmPassword: $confirmPassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResetedPasswordImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, token, password, confirmPassword);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResetedPasswordImplCopyWith<_$ResetedPasswordImpl> get copyWith =>
      __$$ResetedPasswordImplCopyWithImpl<_$ResetedPasswordImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password) submitted,
    required TResult Function(
            String name, String email, String password, String confirmPassword)
        registered,
    required TResult Function(String email) eventSentToken,
    required TResult Function(
            String token, String password, String confirmPassword)
        resetedPassword,
    required TResult Function() logout,
  }) {
    return resetedPassword(token, password, confirmPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email, String password)? submitted,
    TResult? Function(
            String name, String email, String password, String confirmPassword)?
        registered,
    TResult? Function(String email)? eventSentToken,
    TResult? Function(String token, String password, String confirmPassword)?
        resetedPassword,
    TResult? Function()? logout,
  }) {
    return resetedPassword?.call(token, password, confirmPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)? submitted,
    TResult Function(
            String name, String email, String password, String confirmPassword)?
        registered,
    TResult Function(String email)? eventSentToken,
    TResult Function(String token, String password, String confirmPassword)?
        resetedPassword,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (resetedPassword != null) {
      return resetedPassword(token, password, confirmPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(Submitted value) submitted,
    required TResult Function(Registered value) registered,
    required TResult Function(EventSentToken value) eventSentToken,
    required TResult Function(ResetedPassword value) resetedPassword,
    required TResult Function(LoggedOut value) logout,
  }) {
    return resetedPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(Submitted value)? submitted,
    TResult? Function(Registered value)? registered,
    TResult? Function(EventSentToken value)? eventSentToken,
    TResult? Function(ResetedPassword value)? resetedPassword,
    TResult? Function(LoggedOut value)? logout,
  }) {
    return resetedPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Submitted value)? submitted,
    TResult Function(Registered value)? registered,
    TResult Function(EventSentToken value)? eventSentToken,
    TResult Function(ResetedPassword value)? resetedPassword,
    TResult Function(LoggedOut value)? logout,
    required TResult orElse(),
  }) {
    if (resetedPassword != null) {
      return resetedPassword(this);
    }
    return orElse();
  }
}

abstract class ResetedPassword implements LoginEvent {
  const factory ResetedPassword(
      {required final String token,
      required final String password,
      required final String confirmPassword}) = _$ResetedPasswordImpl;

  String get token;
  String get password;
  String get confirmPassword;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResetedPasswordImplCopyWith<_$ResetedPasswordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoggedOutImplCopyWith<$Res> {
  factory _$$LoggedOutImplCopyWith(
          _$LoggedOutImpl value, $Res Function(_$LoggedOutImpl) then) =
      __$$LoggedOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoggedOutImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$LoggedOutImpl>
    implements _$$LoggedOutImplCopyWith<$Res> {
  __$$LoggedOutImplCopyWithImpl(
      _$LoggedOutImpl _value, $Res Function(_$LoggedOutImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoggedOutImpl implements LoggedOut {
  const _$LoggedOutImpl();

  @override
  String toString() {
    return 'LoginEvent.logout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoggedOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password) submitted,
    required TResult Function(
            String name, String email, String password, String confirmPassword)
        registered,
    required TResult Function(String email) eventSentToken,
    required TResult Function(
            String token, String password, String confirmPassword)
        resetedPassword,
    required TResult Function() logout,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email, String password)? submitted,
    TResult? Function(
            String name, String email, String password, String confirmPassword)?
        registered,
    TResult? Function(String email)? eventSentToken,
    TResult? Function(String token, String password, String confirmPassword)?
        resetedPassword,
    TResult? Function()? logout,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)? submitted,
    TResult Function(
            String name, String email, String password, String confirmPassword)?
        registered,
    TResult Function(String email)? eventSentToken,
    TResult Function(String token, String password, String confirmPassword)?
        resetedPassword,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(Submitted value) submitted,
    required TResult Function(Registered value) registered,
    required TResult Function(EventSentToken value) eventSentToken,
    required TResult Function(ResetedPassword value) resetedPassword,
    required TResult Function(LoggedOut value) logout,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(Submitted value)? submitted,
    TResult? Function(Registered value)? registered,
    TResult? Function(EventSentToken value)? eventSentToken,
    TResult? Function(ResetedPassword value)? resetedPassword,
    TResult? Function(LoggedOut value)? logout,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(Submitted value)? submitted,
    TResult Function(Registered value)? registered,
    TResult Function(EventSentToken value)? eventSentToken,
    TResult Function(ResetedPassword value)? resetedPassword,
    TResult Function(LoggedOut value)? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class LoggedOut implements LoginEvent {
  const factory LoggedOut() = _$LoggedOutImpl;
}

/// @nodoc
mixin _$LoginState {
  LoginStatus get status => throw _privateConstructorUsedError;
  TokenStatus get tokenStatus => throw _privateConstructorUsedError;
  bool get isLogged => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginStatus status, TokenStatus tokenStatus,
            bool isLogged, User? user)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginStatus status, TokenStatus tokenStatus,
            bool isLogged, User? user)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginStatus status, TokenStatus tokenStatus, bool isLogged,
            User? user)?
        initial,
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

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
  @useResult
  $Res call(
      {LoginStatus status, TokenStatus tokenStatus, bool isLogged, User? user});

  $LoginStatusCopyWith<$Res> get status;
  $TokenStatusCopyWith<$Res> get tokenStatus;
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? tokenStatus = null,
    Object? isLogged = null,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LoginStatus,
      tokenStatus: null == tokenStatus
          ? _value.tokenStatus
          : tokenStatus // ignore: cast_nullable_to_non_nullable
              as TokenStatus,
      isLogged: null == isLogged
          ? _value.isLogged
          : isLogged // ignore: cast_nullable_to_non_nullable
              as bool,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ) as $Val);
  }

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LoginStatusCopyWith<$Res> get status {
    return $LoginStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TokenStatusCopyWith<$Res> get tokenStatus {
    return $TokenStatusCopyWith<$Res>(_value.tokenStatus, (value) {
      return _then(_value.copyWith(tokenStatus: value) as $Val);
    });
  }

  /// Create a copy of LoginState
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
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {LoginStatus status, TokenStatus tokenStatus, bool isLogged, User? user});

  @override
  $LoginStatusCopyWith<$Res> get status;
  @override
  $TokenStatusCopyWith<$Res> get tokenStatus;
  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? tokenStatus = null,
    Object? isLogged = null,
    Object? user = freezed,
  }) {
    return _then(_$InitialImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LoginStatus,
      tokenStatus: null == tokenStatus
          ? _value.tokenStatus
          : tokenStatus // ignore: cast_nullable_to_non_nullable
              as TokenStatus,
      isLogged: null == isLogged
          ? _value.isLogged
          : isLogged // ignore: cast_nullable_to_non_nullable
              as bool,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl(
      {this.status = const LoginStatus.initial(),
      this.tokenStatus = const TokenStatus.initialToken(),
      this.isLogged = false,
      this.user});

  @override
  @JsonKey()
  final LoginStatus status;
  @override
  @JsonKey()
  final TokenStatus tokenStatus;
  @override
  @JsonKey()
  final bool isLogged;
  @override
  final User? user;

  @override
  String toString() {
    return 'LoginState.initial(status: $status, tokenStatus: $tokenStatus, isLogged: $isLogged, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.tokenStatus, tokenStatus) ||
                other.tokenStatus == tokenStatus) &&
            (identical(other.isLogged, isLogged) ||
                other.isLogged == isLogged) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, status, tokenStatus, isLogged, user);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginStatus status, TokenStatus tokenStatus,
            bool isLogged, User? user)
        initial,
  }) {
    return initial(status, tokenStatus, isLogged, user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginStatus status, TokenStatus tokenStatus,
            bool isLogged, User? user)?
        initial,
  }) {
    return initial?.call(status, tokenStatus, isLogged, user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginStatus status, TokenStatus tokenStatus, bool isLogged,
            User? user)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(status, tokenStatus, isLogged, user);
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

abstract class Initial implements LoginState {
  const factory Initial(
      {final LoginStatus status,
      final TokenStatus tokenStatus,
      final bool isLogged,
      final User? user}) = _$InitialImpl;

  @override
  LoginStatus get status;
  @override
  TokenStatus get tokenStatus;
  @override
  bool get isLogged;
  @override
  User? get user;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LoginStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(User? user) logged,
    required TResult Function(String error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(User? user)? logged,
    TResult? Function(String error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User? user)? logged,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StatusInitial value) initial,
    required TResult Function(StatusLoading value) loading,
    required TResult Function(StatusLogged value) logged,
    required TResult Function(StatusFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StatusInitial value)? initial,
    TResult? Function(StatusLoading value)? loading,
    TResult? Function(StatusLogged value)? logged,
    TResult? Function(StatusFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatusInitial value)? initial,
    TResult Function(StatusLoading value)? loading,
    TResult Function(StatusLogged value)? logged,
    TResult Function(StatusFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStatusCopyWith<$Res> {
  factory $LoginStatusCopyWith(
          LoginStatus value, $Res Function(LoginStatus) then) =
      _$LoginStatusCopyWithImpl<$Res, LoginStatus>;
}

/// @nodoc
class _$LoginStatusCopyWithImpl<$Res, $Val extends LoginStatus>
    implements $LoginStatusCopyWith<$Res> {
  _$LoginStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StatusInitialImplCopyWith<$Res> {
  factory _$$StatusInitialImplCopyWith(
          _$StatusInitialImpl value, $Res Function(_$StatusInitialImpl) then) =
      __$$StatusInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StatusInitialImplCopyWithImpl<$Res>
    extends _$LoginStatusCopyWithImpl<$Res, _$StatusInitialImpl>
    implements _$$StatusInitialImplCopyWith<$Res> {
  __$$StatusInitialImplCopyWithImpl(
      _$StatusInitialImpl _value, $Res Function(_$StatusInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StatusInitialImpl implements StatusInitial {
  const _$StatusInitialImpl();

  @override
  String toString() {
    return 'LoginStatus.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StatusInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(User? user) logged,
    required TResult Function(String error) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(User? user)? logged,
    TResult? Function(String error)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User? user)? logged,
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
    required TResult Function(StatusInitial value) initial,
    required TResult Function(StatusLoading value) loading,
    required TResult Function(StatusLogged value) logged,
    required TResult Function(StatusFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StatusInitial value)? initial,
    TResult? Function(StatusLoading value)? loading,
    TResult? Function(StatusLogged value)? logged,
    TResult? Function(StatusFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatusInitial value)? initial,
    TResult Function(StatusLoading value)? loading,
    TResult Function(StatusLogged value)? logged,
    TResult Function(StatusFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class StatusInitial implements LoginStatus {
  const factory StatusInitial() = _$StatusInitialImpl;
}

/// @nodoc
abstract class _$$StatusLoadingImplCopyWith<$Res> {
  factory _$$StatusLoadingImplCopyWith(
          _$StatusLoadingImpl value, $Res Function(_$StatusLoadingImpl) then) =
      __$$StatusLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StatusLoadingImplCopyWithImpl<$Res>
    extends _$LoginStatusCopyWithImpl<$Res, _$StatusLoadingImpl>
    implements _$$StatusLoadingImplCopyWith<$Res> {
  __$$StatusLoadingImplCopyWithImpl(
      _$StatusLoadingImpl _value, $Res Function(_$StatusLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StatusLoadingImpl implements StatusLoading {
  const _$StatusLoadingImpl();

  @override
  String toString() {
    return 'LoginStatus.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StatusLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(User? user) logged,
    required TResult Function(String error) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(User? user)? logged,
    TResult? Function(String error)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User? user)? logged,
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
    required TResult Function(StatusInitial value) initial,
    required TResult Function(StatusLoading value) loading,
    required TResult Function(StatusLogged value) logged,
    required TResult Function(StatusFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StatusInitial value)? initial,
    TResult? Function(StatusLoading value)? loading,
    TResult? Function(StatusLogged value)? logged,
    TResult? Function(StatusFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatusInitial value)? initial,
    TResult Function(StatusLoading value)? loading,
    TResult Function(StatusLogged value)? logged,
    TResult Function(StatusFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class StatusLoading implements LoginStatus {
  const factory StatusLoading() = _$StatusLoadingImpl;
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
    extends _$LoginStatusCopyWithImpl<$Res, _$StatusLoggedImpl>
    implements _$$StatusLoggedImplCopyWith<$Res> {
  __$$StatusLoggedImplCopyWithImpl(
      _$StatusLoggedImpl _value, $Res Function(_$StatusLoggedImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginStatus
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

  /// Create a copy of LoginStatus
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
    return 'LoginStatus.logged(user: $user)';
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

  /// Create a copy of LoginStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StatusLoggedImplCopyWith<_$StatusLoggedImpl> get copyWith =>
      __$$StatusLoggedImplCopyWithImpl<_$StatusLoggedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(User? user) logged,
    required TResult Function(String error) failure,
  }) {
    return logged(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(User? user)? logged,
    TResult? Function(String error)? failure,
  }) {
    return logged?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User? user)? logged,
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
    required TResult Function(StatusInitial value) initial,
    required TResult Function(StatusLoading value) loading,
    required TResult Function(StatusLogged value) logged,
    required TResult Function(StatusFailure value) failure,
  }) {
    return logged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StatusInitial value)? initial,
    TResult? Function(StatusLoading value)? loading,
    TResult? Function(StatusLogged value)? logged,
    TResult? Function(StatusFailure value)? failure,
  }) {
    return logged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatusInitial value)? initial,
    TResult Function(StatusLoading value)? loading,
    TResult Function(StatusLogged value)? logged,
    TResult Function(StatusFailure value)? failure,
    required TResult orElse(),
  }) {
    if (logged != null) {
      return logged(this);
    }
    return orElse();
  }
}

abstract class StatusLogged implements LoginStatus {
  const factory StatusLogged({final User? user}) = _$StatusLoggedImpl;

  User? get user;

  /// Create a copy of LoginStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StatusLoggedImplCopyWith<_$StatusLoggedImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
    extends _$LoginStatusCopyWithImpl<$Res, _$StatusFailureImpl>
    implements _$$StatusFailureImplCopyWith<$Res> {
  __$$StatusFailureImplCopyWithImpl(
      _$StatusFailureImpl _value, $Res Function(_$StatusFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginStatus
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
    return 'LoginStatus.failure(error: $error)';
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

  /// Create a copy of LoginStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StatusFailureImplCopyWith<_$StatusFailureImpl> get copyWith =>
      __$$StatusFailureImplCopyWithImpl<_$StatusFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(User? user) logged,
    required TResult Function(String error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(User? user)? logged,
    TResult? Function(String error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User? user)? logged,
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
    required TResult Function(StatusInitial value) initial,
    required TResult Function(StatusLoading value) loading,
    required TResult Function(StatusLogged value) logged,
    required TResult Function(StatusFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StatusInitial value)? initial,
    TResult? Function(StatusLoading value)? loading,
    TResult? Function(StatusLogged value)? logged,
    TResult? Function(StatusFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatusInitial value)? initial,
    TResult Function(StatusLoading value)? loading,
    TResult Function(StatusLogged value)? logged,
    TResult Function(StatusFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class StatusFailure implements LoginStatus {
  const factory StatusFailure({required final String error}) =
      _$StatusFailureImpl;

  String get error;

  /// Create a copy of LoginStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StatusFailureImplCopyWith<_$StatusFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TokenStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialToken,
    required TResult Function() sendingToken,
    required TResult Function() sentToken,
    required TResult Function() confirmingToken,
    required TResult Function() confirmedToken,
    required TResult Function(String error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialToken,
    TResult? Function()? sendingToken,
    TResult? Function()? sentToken,
    TResult? Function()? confirmingToken,
    TResult? Function()? confirmedToken,
    TResult? Function(String error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialToken,
    TResult Function()? sendingToken,
    TResult Function()? sentToken,
    TResult Function()? confirmingToken,
    TResult Function()? confirmedToken,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialToken value) initialToken,
    required TResult Function(SendingToken value) sendingToken,
    required TResult Function(SentToken value) sentToken,
    required TResult Function(ConfirmingToken value) confirmingToken,
    required TResult Function(ConfirmedToken value) confirmedToken,
    required TResult Function(Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialToken value)? initialToken,
    TResult? Function(SendingToken value)? sendingToken,
    TResult? Function(SentToken value)? sentToken,
    TResult? Function(ConfirmingToken value)? confirmingToken,
    TResult? Function(ConfirmedToken value)? confirmedToken,
    TResult? Function(Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialToken value)? initialToken,
    TResult Function(SendingToken value)? sendingToken,
    TResult Function(SentToken value)? sentToken,
    TResult Function(ConfirmingToken value)? confirmingToken,
    TResult Function(ConfirmedToken value)? confirmedToken,
    TResult Function(Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenStatusCopyWith<$Res> {
  factory $TokenStatusCopyWith(
          TokenStatus value, $Res Function(TokenStatus) then) =
      _$TokenStatusCopyWithImpl<$Res, TokenStatus>;
}

/// @nodoc
class _$TokenStatusCopyWithImpl<$Res, $Val extends TokenStatus>
    implements $TokenStatusCopyWith<$Res> {
  _$TokenStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TokenStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialTokenImplCopyWith<$Res> {
  factory _$$InitialTokenImplCopyWith(
          _$InitialTokenImpl value, $Res Function(_$InitialTokenImpl) then) =
      __$$InitialTokenImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialTokenImplCopyWithImpl<$Res>
    extends _$TokenStatusCopyWithImpl<$Res, _$InitialTokenImpl>
    implements _$$InitialTokenImplCopyWith<$Res> {
  __$$InitialTokenImplCopyWithImpl(
      _$InitialTokenImpl _value, $Res Function(_$InitialTokenImpl) _then)
      : super(_value, _then);

  /// Create a copy of TokenStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialTokenImpl implements InitialToken {
  const _$InitialTokenImpl();

  @override
  String toString() {
    return 'TokenStatus.initialToken()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialTokenImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialToken,
    required TResult Function() sendingToken,
    required TResult Function() sentToken,
    required TResult Function() confirmingToken,
    required TResult Function() confirmedToken,
    required TResult Function(String error) failure,
  }) {
    return initialToken();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialToken,
    TResult? Function()? sendingToken,
    TResult? Function()? sentToken,
    TResult? Function()? confirmingToken,
    TResult? Function()? confirmedToken,
    TResult? Function(String error)? failure,
  }) {
    return initialToken?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialToken,
    TResult Function()? sendingToken,
    TResult Function()? sentToken,
    TResult Function()? confirmingToken,
    TResult Function()? confirmedToken,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (initialToken != null) {
      return initialToken();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialToken value) initialToken,
    required TResult Function(SendingToken value) sendingToken,
    required TResult Function(SentToken value) sentToken,
    required TResult Function(ConfirmingToken value) confirmingToken,
    required TResult Function(ConfirmedToken value) confirmedToken,
    required TResult Function(Failure value) failure,
  }) {
    return initialToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialToken value)? initialToken,
    TResult? Function(SendingToken value)? sendingToken,
    TResult? Function(SentToken value)? sentToken,
    TResult? Function(ConfirmingToken value)? confirmingToken,
    TResult? Function(ConfirmedToken value)? confirmedToken,
    TResult? Function(Failure value)? failure,
  }) {
    return initialToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialToken value)? initialToken,
    TResult Function(SendingToken value)? sendingToken,
    TResult Function(SentToken value)? sentToken,
    TResult Function(ConfirmingToken value)? confirmingToken,
    TResult Function(ConfirmedToken value)? confirmedToken,
    TResult Function(Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initialToken != null) {
      return initialToken(this);
    }
    return orElse();
  }
}

abstract class InitialToken implements TokenStatus {
  const factory InitialToken() = _$InitialTokenImpl;
}

/// @nodoc
abstract class _$$SendingTokenImplCopyWith<$Res> {
  factory _$$SendingTokenImplCopyWith(
          _$SendingTokenImpl value, $Res Function(_$SendingTokenImpl) then) =
      __$$SendingTokenImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SendingTokenImplCopyWithImpl<$Res>
    extends _$TokenStatusCopyWithImpl<$Res, _$SendingTokenImpl>
    implements _$$SendingTokenImplCopyWith<$Res> {
  __$$SendingTokenImplCopyWithImpl(
      _$SendingTokenImpl _value, $Res Function(_$SendingTokenImpl) _then)
      : super(_value, _then);

  /// Create a copy of TokenStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SendingTokenImpl implements SendingToken {
  const _$SendingTokenImpl();

  @override
  String toString() {
    return 'TokenStatus.sendingToken()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SendingTokenImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialToken,
    required TResult Function() sendingToken,
    required TResult Function() sentToken,
    required TResult Function() confirmingToken,
    required TResult Function() confirmedToken,
    required TResult Function(String error) failure,
  }) {
    return sendingToken();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialToken,
    TResult? Function()? sendingToken,
    TResult? Function()? sentToken,
    TResult? Function()? confirmingToken,
    TResult? Function()? confirmedToken,
    TResult? Function(String error)? failure,
  }) {
    return sendingToken?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialToken,
    TResult Function()? sendingToken,
    TResult Function()? sentToken,
    TResult Function()? confirmingToken,
    TResult Function()? confirmedToken,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (sendingToken != null) {
      return sendingToken();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialToken value) initialToken,
    required TResult Function(SendingToken value) sendingToken,
    required TResult Function(SentToken value) sentToken,
    required TResult Function(ConfirmingToken value) confirmingToken,
    required TResult Function(ConfirmedToken value) confirmedToken,
    required TResult Function(Failure value) failure,
  }) {
    return sendingToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialToken value)? initialToken,
    TResult? Function(SendingToken value)? sendingToken,
    TResult? Function(SentToken value)? sentToken,
    TResult? Function(ConfirmingToken value)? confirmingToken,
    TResult? Function(ConfirmedToken value)? confirmedToken,
    TResult? Function(Failure value)? failure,
  }) {
    return sendingToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialToken value)? initialToken,
    TResult Function(SendingToken value)? sendingToken,
    TResult Function(SentToken value)? sentToken,
    TResult Function(ConfirmingToken value)? confirmingToken,
    TResult Function(ConfirmedToken value)? confirmedToken,
    TResult Function(Failure value)? failure,
    required TResult orElse(),
  }) {
    if (sendingToken != null) {
      return sendingToken(this);
    }
    return orElse();
  }
}

abstract class SendingToken implements TokenStatus {
  const factory SendingToken() = _$SendingTokenImpl;
}

/// @nodoc
abstract class _$$SentTokenImplCopyWith<$Res> {
  factory _$$SentTokenImplCopyWith(
          _$SentTokenImpl value, $Res Function(_$SentTokenImpl) then) =
      __$$SentTokenImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SentTokenImplCopyWithImpl<$Res>
    extends _$TokenStatusCopyWithImpl<$Res, _$SentTokenImpl>
    implements _$$SentTokenImplCopyWith<$Res> {
  __$$SentTokenImplCopyWithImpl(
      _$SentTokenImpl _value, $Res Function(_$SentTokenImpl) _then)
      : super(_value, _then);

  /// Create a copy of TokenStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SentTokenImpl implements SentToken {
  const _$SentTokenImpl();

  @override
  String toString() {
    return 'TokenStatus.sentToken()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SentTokenImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialToken,
    required TResult Function() sendingToken,
    required TResult Function() sentToken,
    required TResult Function() confirmingToken,
    required TResult Function() confirmedToken,
    required TResult Function(String error) failure,
  }) {
    return sentToken();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialToken,
    TResult? Function()? sendingToken,
    TResult? Function()? sentToken,
    TResult? Function()? confirmingToken,
    TResult? Function()? confirmedToken,
    TResult? Function(String error)? failure,
  }) {
    return sentToken?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialToken,
    TResult Function()? sendingToken,
    TResult Function()? sentToken,
    TResult Function()? confirmingToken,
    TResult Function()? confirmedToken,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (sentToken != null) {
      return sentToken();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialToken value) initialToken,
    required TResult Function(SendingToken value) sendingToken,
    required TResult Function(SentToken value) sentToken,
    required TResult Function(ConfirmingToken value) confirmingToken,
    required TResult Function(ConfirmedToken value) confirmedToken,
    required TResult Function(Failure value) failure,
  }) {
    return sentToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialToken value)? initialToken,
    TResult? Function(SendingToken value)? sendingToken,
    TResult? Function(SentToken value)? sentToken,
    TResult? Function(ConfirmingToken value)? confirmingToken,
    TResult? Function(ConfirmedToken value)? confirmedToken,
    TResult? Function(Failure value)? failure,
  }) {
    return sentToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialToken value)? initialToken,
    TResult Function(SendingToken value)? sendingToken,
    TResult Function(SentToken value)? sentToken,
    TResult Function(ConfirmingToken value)? confirmingToken,
    TResult Function(ConfirmedToken value)? confirmedToken,
    TResult Function(Failure value)? failure,
    required TResult orElse(),
  }) {
    if (sentToken != null) {
      return sentToken(this);
    }
    return orElse();
  }
}

abstract class SentToken implements TokenStatus {
  const factory SentToken() = _$SentTokenImpl;
}

/// @nodoc
abstract class _$$ConfirmingTokenImplCopyWith<$Res> {
  factory _$$ConfirmingTokenImplCopyWith(_$ConfirmingTokenImpl value,
          $Res Function(_$ConfirmingTokenImpl) then) =
      __$$ConfirmingTokenImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ConfirmingTokenImplCopyWithImpl<$Res>
    extends _$TokenStatusCopyWithImpl<$Res, _$ConfirmingTokenImpl>
    implements _$$ConfirmingTokenImplCopyWith<$Res> {
  __$$ConfirmingTokenImplCopyWithImpl(
      _$ConfirmingTokenImpl _value, $Res Function(_$ConfirmingTokenImpl) _then)
      : super(_value, _then);

  /// Create a copy of TokenStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ConfirmingTokenImpl implements ConfirmingToken {
  const _$ConfirmingTokenImpl();

  @override
  String toString() {
    return 'TokenStatus.confirmingToken()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ConfirmingTokenImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialToken,
    required TResult Function() sendingToken,
    required TResult Function() sentToken,
    required TResult Function() confirmingToken,
    required TResult Function() confirmedToken,
    required TResult Function(String error) failure,
  }) {
    return confirmingToken();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialToken,
    TResult? Function()? sendingToken,
    TResult? Function()? sentToken,
    TResult? Function()? confirmingToken,
    TResult? Function()? confirmedToken,
    TResult? Function(String error)? failure,
  }) {
    return confirmingToken?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialToken,
    TResult Function()? sendingToken,
    TResult Function()? sentToken,
    TResult Function()? confirmingToken,
    TResult Function()? confirmedToken,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (confirmingToken != null) {
      return confirmingToken();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialToken value) initialToken,
    required TResult Function(SendingToken value) sendingToken,
    required TResult Function(SentToken value) sentToken,
    required TResult Function(ConfirmingToken value) confirmingToken,
    required TResult Function(ConfirmedToken value) confirmedToken,
    required TResult Function(Failure value) failure,
  }) {
    return confirmingToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialToken value)? initialToken,
    TResult? Function(SendingToken value)? sendingToken,
    TResult? Function(SentToken value)? sentToken,
    TResult? Function(ConfirmingToken value)? confirmingToken,
    TResult? Function(ConfirmedToken value)? confirmedToken,
    TResult? Function(Failure value)? failure,
  }) {
    return confirmingToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialToken value)? initialToken,
    TResult Function(SendingToken value)? sendingToken,
    TResult Function(SentToken value)? sentToken,
    TResult Function(ConfirmingToken value)? confirmingToken,
    TResult Function(ConfirmedToken value)? confirmedToken,
    TResult Function(Failure value)? failure,
    required TResult orElse(),
  }) {
    if (confirmingToken != null) {
      return confirmingToken(this);
    }
    return orElse();
  }
}

abstract class ConfirmingToken implements TokenStatus {
  const factory ConfirmingToken() = _$ConfirmingTokenImpl;
}

/// @nodoc
abstract class _$$ConfirmedTokenImplCopyWith<$Res> {
  factory _$$ConfirmedTokenImplCopyWith(_$ConfirmedTokenImpl value,
          $Res Function(_$ConfirmedTokenImpl) then) =
      __$$ConfirmedTokenImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ConfirmedTokenImplCopyWithImpl<$Res>
    extends _$TokenStatusCopyWithImpl<$Res, _$ConfirmedTokenImpl>
    implements _$$ConfirmedTokenImplCopyWith<$Res> {
  __$$ConfirmedTokenImplCopyWithImpl(
      _$ConfirmedTokenImpl _value, $Res Function(_$ConfirmedTokenImpl) _then)
      : super(_value, _then);

  /// Create a copy of TokenStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ConfirmedTokenImpl implements ConfirmedToken {
  const _$ConfirmedTokenImpl();

  @override
  String toString() {
    return 'TokenStatus.confirmedToken()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ConfirmedTokenImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialToken,
    required TResult Function() sendingToken,
    required TResult Function() sentToken,
    required TResult Function() confirmingToken,
    required TResult Function() confirmedToken,
    required TResult Function(String error) failure,
  }) {
    return confirmedToken();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialToken,
    TResult? Function()? sendingToken,
    TResult? Function()? sentToken,
    TResult? Function()? confirmingToken,
    TResult? Function()? confirmedToken,
    TResult? Function(String error)? failure,
  }) {
    return confirmedToken?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialToken,
    TResult Function()? sendingToken,
    TResult Function()? sentToken,
    TResult Function()? confirmingToken,
    TResult Function()? confirmedToken,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (confirmedToken != null) {
      return confirmedToken();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialToken value) initialToken,
    required TResult Function(SendingToken value) sendingToken,
    required TResult Function(SentToken value) sentToken,
    required TResult Function(ConfirmingToken value) confirmingToken,
    required TResult Function(ConfirmedToken value) confirmedToken,
    required TResult Function(Failure value) failure,
  }) {
    return confirmedToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialToken value)? initialToken,
    TResult? Function(SendingToken value)? sendingToken,
    TResult? Function(SentToken value)? sentToken,
    TResult? Function(ConfirmingToken value)? confirmingToken,
    TResult? Function(ConfirmedToken value)? confirmedToken,
    TResult? Function(Failure value)? failure,
  }) {
    return confirmedToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialToken value)? initialToken,
    TResult Function(SendingToken value)? sendingToken,
    TResult Function(SentToken value)? sentToken,
    TResult Function(ConfirmingToken value)? confirmingToken,
    TResult Function(ConfirmedToken value)? confirmedToken,
    TResult Function(Failure value)? failure,
    required TResult orElse(),
  }) {
    if (confirmedToken != null) {
      return confirmedToken(this);
    }
    return orElse();
  }
}

abstract class ConfirmedToken implements TokenStatus {
  const factory ConfirmedToken() = _$ConfirmedTokenImpl;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$TokenStatusCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of TokenStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$FailureImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailureImpl implements Failure {
  const _$FailureImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'TokenStatus.failure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of TokenStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      __$$FailureImplCopyWithImpl<_$FailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialToken,
    required TResult Function() sendingToken,
    required TResult Function() sentToken,
    required TResult Function() confirmingToken,
    required TResult Function() confirmedToken,
    required TResult Function(String error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialToken,
    TResult? Function()? sendingToken,
    TResult? Function()? sentToken,
    TResult? Function()? confirmingToken,
    TResult? Function()? confirmedToken,
    TResult? Function(String error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialToken,
    TResult Function()? sendingToken,
    TResult Function()? sentToken,
    TResult Function()? confirmingToken,
    TResult Function()? confirmedToken,
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
    required TResult Function(InitialToken value) initialToken,
    required TResult Function(SendingToken value) sendingToken,
    required TResult Function(SentToken value) sentToken,
    required TResult Function(ConfirmingToken value) confirmingToken,
    required TResult Function(ConfirmedToken value) confirmedToken,
    required TResult Function(Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialToken value)? initialToken,
    TResult? Function(SendingToken value)? sendingToken,
    TResult? Function(SentToken value)? sentToken,
    TResult? Function(ConfirmingToken value)? confirmingToken,
    TResult? Function(ConfirmedToken value)? confirmedToken,
    TResult? Function(Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialToken value)? initialToken,
    TResult Function(SendingToken value)? sendingToken,
    TResult Function(SentToken value)? sentToken,
    TResult Function(ConfirmingToken value)? confirmingToken,
    TResult Function(ConfirmedToken value)? confirmedToken,
    TResult Function(Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class Failure implements TokenStatus {
  const factory Failure({required final String error}) = _$FailureImpl;

  String get error;

  /// Create a copy of TokenStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
