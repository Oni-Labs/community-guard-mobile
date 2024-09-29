// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service_execution.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ServiceExecution _$ServiceExecutionFromJson(Map<String, dynamic> json) {
  return _ServiceExecution.fromJson(json);
}

/// @nodoc
mixin _$ServiceExecution {
  String? get uuid => throw _privateConstructorUsedError;
  String? get observation => throw _privateConstructorUsedError;
  String? get justification => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_occurrence')
  bool get hasOccurrence => throw _privateConstructorUsedError;
  @JsonKey(name: 'started_at')
  String? get startAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'finished_at')
  String? get finishAt => throw _privateConstructorUsedError;

  /// Serializes this ServiceExecution to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ServiceExecution
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ServiceExecutionCopyWith<ServiceExecution> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceExecutionCopyWith<$Res> {
  factory $ServiceExecutionCopyWith(
          ServiceExecution value, $Res Function(ServiceExecution) then) =
      _$ServiceExecutionCopyWithImpl<$Res, ServiceExecution>;
  @useResult
  $Res call(
      {String? uuid,
      String? observation,
      String? justification,
      @JsonKey(name: 'has_occurrence') bool hasOccurrence,
      @JsonKey(name: 'started_at') String? startAt,
      @JsonKey(name: 'finished_at') String? finishAt});
}

/// @nodoc
class _$ServiceExecutionCopyWithImpl<$Res, $Val extends ServiceExecution>
    implements $ServiceExecutionCopyWith<$Res> {
  _$ServiceExecutionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ServiceExecution
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = freezed,
    Object? observation = freezed,
    Object? justification = freezed,
    Object? hasOccurrence = null,
    Object? startAt = freezed,
    Object? finishAt = freezed,
  }) {
    return _then(_value.copyWith(
      uuid: freezed == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String?,
      observation: freezed == observation
          ? _value.observation
          : observation // ignore: cast_nullable_to_non_nullable
              as String?,
      justification: freezed == justification
          ? _value.justification
          : justification // ignore: cast_nullable_to_non_nullable
              as String?,
      hasOccurrence: null == hasOccurrence
          ? _value.hasOccurrence
          : hasOccurrence // ignore: cast_nullable_to_non_nullable
              as bool,
      startAt: freezed == startAt
          ? _value.startAt
          : startAt // ignore: cast_nullable_to_non_nullable
              as String?,
      finishAt: freezed == finishAt
          ? _value.finishAt
          : finishAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServiceExecutionImplCopyWith<$Res>
    implements $ServiceExecutionCopyWith<$Res> {
  factory _$$ServiceExecutionImplCopyWith(_$ServiceExecutionImpl value,
          $Res Function(_$ServiceExecutionImpl) then) =
      __$$ServiceExecutionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? uuid,
      String? observation,
      String? justification,
      @JsonKey(name: 'has_occurrence') bool hasOccurrence,
      @JsonKey(name: 'started_at') String? startAt,
      @JsonKey(name: 'finished_at') String? finishAt});
}

/// @nodoc
class __$$ServiceExecutionImplCopyWithImpl<$Res>
    extends _$ServiceExecutionCopyWithImpl<$Res, _$ServiceExecutionImpl>
    implements _$$ServiceExecutionImplCopyWith<$Res> {
  __$$ServiceExecutionImplCopyWithImpl(_$ServiceExecutionImpl _value,
      $Res Function(_$ServiceExecutionImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServiceExecution
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = freezed,
    Object? observation = freezed,
    Object? justification = freezed,
    Object? hasOccurrence = null,
    Object? startAt = freezed,
    Object? finishAt = freezed,
  }) {
    return _then(_$ServiceExecutionImpl(
      uuid: freezed == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String?,
      observation: freezed == observation
          ? _value.observation
          : observation // ignore: cast_nullable_to_non_nullable
              as String?,
      justification: freezed == justification
          ? _value.justification
          : justification // ignore: cast_nullable_to_non_nullable
              as String?,
      hasOccurrence: null == hasOccurrence
          ? _value.hasOccurrence
          : hasOccurrence // ignore: cast_nullable_to_non_nullable
              as bool,
      startAt: freezed == startAt
          ? _value.startAt
          : startAt // ignore: cast_nullable_to_non_nullable
              as String?,
      finishAt: freezed == finishAt
          ? _value.finishAt
          : finishAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServiceExecutionImpl implements _ServiceExecution {
  _$ServiceExecutionImpl(
      {this.uuid,
      this.observation,
      this.justification,
      @JsonKey(name: 'has_occurrence') this.hasOccurrence = false,
      @JsonKey(name: 'started_at') this.startAt,
      @JsonKey(name: 'finished_at') this.finishAt});

  factory _$ServiceExecutionImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServiceExecutionImplFromJson(json);

  @override
  final String? uuid;
  @override
  final String? observation;
  @override
  final String? justification;
  @override
  @JsonKey(name: 'has_occurrence')
  final bool hasOccurrence;
  @override
  @JsonKey(name: 'started_at')
  final String? startAt;
  @override
  @JsonKey(name: 'finished_at')
  final String? finishAt;

  @override
  String toString() {
    return 'ServiceExecution(uuid: $uuid, observation: $observation, justification: $justification, hasOccurrence: $hasOccurrence, startAt: $startAt, finishAt: $finishAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceExecutionImpl &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.observation, observation) ||
                other.observation == observation) &&
            (identical(other.justification, justification) ||
                other.justification == justification) &&
            (identical(other.hasOccurrence, hasOccurrence) ||
                other.hasOccurrence == hasOccurrence) &&
            (identical(other.startAt, startAt) || other.startAt == startAt) &&
            (identical(other.finishAt, finishAt) ||
                other.finishAt == finishAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, uuid, observation, justification,
      hasOccurrence, startAt, finishAt);

  /// Create a copy of ServiceExecution
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceExecutionImplCopyWith<_$ServiceExecutionImpl> get copyWith =>
      __$$ServiceExecutionImplCopyWithImpl<_$ServiceExecutionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServiceExecutionImplToJson(
      this,
    );
  }
}

abstract class _ServiceExecution implements ServiceExecution {
  factory _ServiceExecution(
          {final String? uuid,
          final String? observation,
          final String? justification,
          @JsonKey(name: 'has_occurrence') final bool hasOccurrence,
          @JsonKey(name: 'started_at') final String? startAt,
          @JsonKey(name: 'finished_at') final String? finishAt}) =
      _$ServiceExecutionImpl;

  factory _ServiceExecution.fromJson(Map<String, dynamic> json) =
      _$ServiceExecutionImpl.fromJson;

  @override
  String? get uuid;
  @override
  String? get observation;
  @override
  String? get justification;
  @override
  @JsonKey(name: 'has_occurrence')
  bool get hasOccurrence;
  @override
  @JsonKey(name: 'started_at')
  String? get startAt;
  @override
  @JsonKey(name: 'finished_at')
  String? get finishAt;

  /// Create a copy of ServiceExecution
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServiceExecutionImplCopyWith<_$ServiceExecutionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
