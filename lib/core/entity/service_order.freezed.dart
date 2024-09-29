// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service_order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ServiceOrder _$ServiceOrderFromJson(Map<String, dynamic> json) {
  return _ServiceOrder.fromJson(json);
}

/// @nodoc
mixin _$ServiceOrder {
  int get id => throw _privateConstructorUsedError;
  String get uuid => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get regional => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get obs => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'expected_start_date')
  DateTime? get expectedStartDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'expected_finish_date')
  DateTime? get expectedFinishDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'execution_start_date')
  String? get actualStartDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'execution_finish_date')
  DateTime? get actualFinishDate => throw _privateConstructorUsedError;
  Point get location => throw _privateConstructorUsedError;
  List<AttachmentOrder> get attachments => throw _privateConstructorUsedError;
  ServiceStage get stage => throw _privateConstructorUsedError;
  @JsonKey(name: 'workspace_stage_id')
  int get workspaceStageId => throw _privateConstructorUsedError;

  /// Serializes this ServiceOrder to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ServiceOrder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ServiceOrderCopyWith<ServiceOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceOrderCopyWith<$Res> {
  factory $ServiceOrderCopyWith(
          ServiceOrder value, $Res Function(ServiceOrder) then) =
      _$ServiceOrderCopyWithImpl<$Res, ServiceOrder>;
  @useResult
  $Res call(
      {int id,
      String uuid,
      String? title,
      String? type,
      String? regional,
      String? city,
      String? obs,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'expected_start_date') DateTime? expectedStartDate,
      @JsonKey(name: 'expected_finish_date') DateTime? expectedFinishDate,
      @JsonKey(name: 'execution_start_date') String? actualStartDate,
      @JsonKey(name: 'execution_finish_date') DateTime? actualFinishDate,
      Point location,
      List<AttachmentOrder> attachments,
      ServiceStage stage,
      @JsonKey(name: 'workspace_stage_id') int workspaceStageId});

  $PointCopyWith<$Res> get location;
  $ServiceStageCopyWith<$Res> get stage;
}

/// @nodoc
class _$ServiceOrderCopyWithImpl<$Res, $Val extends ServiceOrder>
    implements $ServiceOrderCopyWith<$Res> {
  _$ServiceOrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ServiceOrder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? uuid = null,
    Object? title = freezed,
    Object? type = freezed,
    Object? regional = freezed,
    Object? city = freezed,
    Object? obs = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? expectedStartDate = freezed,
    Object? expectedFinishDate = freezed,
    Object? actualStartDate = freezed,
    Object? actualFinishDate = freezed,
    Object? location = null,
    Object? attachments = null,
    Object? stage = null,
    Object? workspaceStageId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      regional: freezed == regional
          ? _value.regional
          : regional // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      obs: freezed == obs
          ? _value.obs
          : obs // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expectedStartDate: freezed == expectedStartDate
          ? _value.expectedStartDate
          : expectedStartDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expectedFinishDate: freezed == expectedFinishDate
          ? _value.expectedFinishDate
          : expectedFinishDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      actualStartDate: freezed == actualStartDate
          ? _value.actualStartDate
          : actualStartDate // ignore: cast_nullable_to_non_nullable
              as String?,
      actualFinishDate: freezed == actualFinishDate
          ? _value.actualFinishDate
          : actualFinishDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Point,
      attachments: null == attachments
          ? _value.attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<AttachmentOrder>,
      stage: null == stage
          ? _value.stage
          : stage // ignore: cast_nullable_to_non_nullable
              as ServiceStage,
      workspaceStageId: null == workspaceStageId
          ? _value.workspaceStageId
          : workspaceStageId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of ServiceOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PointCopyWith<$Res> get location {
    return $PointCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }

  /// Create a copy of ServiceOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ServiceStageCopyWith<$Res> get stage {
    return $ServiceStageCopyWith<$Res>(_value.stage, (value) {
      return _then(_value.copyWith(stage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ServiceOrderImplCopyWith<$Res>
    implements $ServiceOrderCopyWith<$Res> {
  factory _$$ServiceOrderImplCopyWith(
          _$ServiceOrderImpl value, $Res Function(_$ServiceOrderImpl) then) =
      __$$ServiceOrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String uuid,
      String? title,
      String? type,
      String? regional,
      String? city,
      String? obs,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'expected_start_date') DateTime? expectedStartDate,
      @JsonKey(name: 'expected_finish_date') DateTime? expectedFinishDate,
      @JsonKey(name: 'execution_start_date') String? actualStartDate,
      @JsonKey(name: 'execution_finish_date') DateTime? actualFinishDate,
      Point location,
      List<AttachmentOrder> attachments,
      ServiceStage stage,
      @JsonKey(name: 'workspace_stage_id') int workspaceStageId});

  @override
  $PointCopyWith<$Res> get location;
  @override
  $ServiceStageCopyWith<$Res> get stage;
}

/// @nodoc
class __$$ServiceOrderImplCopyWithImpl<$Res>
    extends _$ServiceOrderCopyWithImpl<$Res, _$ServiceOrderImpl>
    implements _$$ServiceOrderImplCopyWith<$Res> {
  __$$ServiceOrderImplCopyWithImpl(
      _$ServiceOrderImpl _value, $Res Function(_$ServiceOrderImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServiceOrder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? uuid = null,
    Object? title = freezed,
    Object? type = freezed,
    Object? regional = freezed,
    Object? city = freezed,
    Object? obs = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? expectedStartDate = freezed,
    Object? expectedFinishDate = freezed,
    Object? actualStartDate = freezed,
    Object? actualFinishDate = freezed,
    Object? location = null,
    Object? attachments = null,
    Object? stage = null,
    Object? workspaceStageId = null,
  }) {
    return _then(_$ServiceOrderImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      regional: freezed == regional
          ? _value.regional
          : regional // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      obs: freezed == obs
          ? _value.obs
          : obs // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expectedStartDate: freezed == expectedStartDate
          ? _value.expectedStartDate
          : expectedStartDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expectedFinishDate: freezed == expectedFinishDate
          ? _value.expectedFinishDate
          : expectedFinishDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      actualStartDate: freezed == actualStartDate
          ? _value.actualStartDate
          : actualStartDate // ignore: cast_nullable_to_non_nullable
              as String?,
      actualFinishDate: freezed == actualFinishDate
          ? _value.actualFinishDate
          : actualFinishDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Point,
      attachments: null == attachments
          ? _value._attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<AttachmentOrder>,
      stage: null == stage
          ? _value.stage
          : stage // ignore: cast_nullable_to_non_nullable
              as ServiceStage,
      workspaceStageId: null == workspaceStageId
          ? _value.workspaceStageId
          : workspaceStageId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServiceOrderImpl implements _ServiceOrder {
  _$ServiceOrderImpl(
      {required this.id,
      required this.uuid,
      this.title,
      this.type,
      this.regional,
      this.city,
      this.obs,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'expected_start_date') this.expectedStartDate,
      @JsonKey(name: 'expected_finish_date') this.expectedFinishDate,
      @JsonKey(name: 'execution_start_date') this.actualStartDate,
      @JsonKey(name: 'execution_finish_date') this.actualFinishDate,
      required this.location,
      required final List<AttachmentOrder> attachments,
      required this.stage,
      @JsonKey(name: 'workspace_stage_id') required this.workspaceStageId})
      : _attachments = attachments;

  factory _$ServiceOrderImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServiceOrderImplFromJson(json);

  @override
  final int id;
  @override
  final String uuid;
  @override
  final String? title;
  @override
  final String? type;
  @override
  final String? regional;
  @override
  final String? city;
  @override
  final String? obs;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @override
  @JsonKey(name: 'expected_start_date')
  final DateTime? expectedStartDate;
  @override
  @JsonKey(name: 'expected_finish_date')
  final DateTime? expectedFinishDate;
  @override
  @JsonKey(name: 'execution_start_date')
  final String? actualStartDate;
  @override
  @JsonKey(name: 'execution_finish_date')
  final DateTime? actualFinishDate;
  @override
  final Point location;
  final List<AttachmentOrder> _attachments;
  @override
  List<AttachmentOrder> get attachments {
    if (_attachments is EqualUnmodifiableListView) return _attachments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attachments);
  }

  @override
  final ServiceStage stage;
  @override
  @JsonKey(name: 'workspace_stage_id')
  final int workspaceStageId;

  @override
  String toString() {
    return 'ServiceOrder(id: $id, uuid: $uuid, title: $title, type: $type, regional: $regional, city: $city, obs: $obs, createdAt: $createdAt, updatedAt: $updatedAt, expectedStartDate: $expectedStartDate, expectedFinishDate: $expectedFinishDate, actualStartDate: $actualStartDate, actualFinishDate: $actualFinishDate, location: $location, attachments: $attachments, stage: $stage, workspaceStageId: $workspaceStageId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceOrderImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.regional, regional) ||
                other.regional == regional) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.obs, obs) || other.obs == obs) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.expectedStartDate, expectedStartDate) ||
                other.expectedStartDate == expectedStartDate) &&
            (identical(other.expectedFinishDate, expectedFinishDate) ||
                other.expectedFinishDate == expectedFinishDate) &&
            (identical(other.actualStartDate, actualStartDate) ||
                other.actualStartDate == actualStartDate) &&
            (identical(other.actualFinishDate, actualFinishDate) ||
                other.actualFinishDate == actualFinishDate) &&
            (identical(other.location, location) ||
                other.location == location) &&
            const DeepCollectionEquality()
                .equals(other._attachments, _attachments) &&
            (identical(other.stage, stage) || other.stage == stage) &&
            (identical(other.workspaceStageId, workspaceStageId) ||
                other.workspaceStageId == workspaceStageId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      uuid,
      title,
      type,
      regional,
      city,
      obs,
      createdAt,
      updatedAt,
      expectedStartDate,
      expectedFinishDate,
      actualStartDate,
      actualFinishDate,
      location,
      const DeepCollectionEquality().hash(_attachments),
      stage,
      workspaceStageId);

  /// Create a copy of ServiceOrder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceOrderImplCopyWith<_$ServiceOrderImpl> get copyWith =>
      __$$ServiceOrderImplCopyWithImpl<_$ServiceOrderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServiceOrderImplToJson(
      this,
    );
  }
}

abstract class _ServiceOrder implements ServiceOrder {
  factory _ServiceOrder(
      {required final int id,
      required final String uuid,
      final String? title,
      final String? type,
      final String? regional,
      final String? city,
      final String? obs,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      @JsonKey(name: 'updated_at') final DateTime? updatedAt,
      @JsonKey(name: 'expected_start_date') final DateTime? expectedStartDate,
      @JsonKey(name: 'expected_finish_date') final DateTime? expectedFinishDate,
      @JsonKey(name: 'execution_start_date') final String? actualStartDate,
      @JsonKey(name: 'execution_finish_date') final DateTime? actualFinishDate,
      required final Point location,
      required final List<AttachmentOrder> attachments,
      required final ServiceStage stage,
      @JsonKey(name: 'workspace_stage_id')
      required final int workspaceStageId}) = _$ServiceOrderImpl;

  factory _ServiceOrder.fromJson(Map<String, dynamic> json) =
      _$ServiceOrderImpl.fromJson;

  @override
  int get id;
  @override
  String get uuid;
  @override
  String? get title;
  @override
  String? get type;
  @override
  String? get regional;
  @override
  String? get city;
  @override
  String? get obs;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(name: 'expected_start_date')
  DateTime? get expectedStartDate;
  @override
  @JsonKey(name: 'expected_finish_date')
  DateTime? get expectedFinishDate;
  @override
  @JsonKey(name: 'execution_start_date')
  String? get actualStartDate;
  @override
  @JsonKey(name: 'execution_finish_date')
  DateTime? get actualFinishDate;
  @override
  Point get location;
  @override
  List<AttachmentOrder> get attachments;
  @override
  ServiceStage get stage;
  @override
  @JsonKey(name: 'workspace_stage_id')
  int get workspaceStageId;

  /// Create a copy of ServiceOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServiceOrderImplCopyWith<_$ServiceOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
