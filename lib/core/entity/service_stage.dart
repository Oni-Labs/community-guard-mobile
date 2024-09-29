// ignore_for_file: invalid_annotation_target
import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'service_stage.freezed.dart';

part 'service_stage.g.dart';

@freezed
class ServiceStage with _$ServiceStage {
  factory ServiceStage({
    required String code,
    required String name,
    required String color,
    @JsonKey(name: 'sort_order') required int sortOrder,
    @JsonKey(name: 'created_at')
    DateTime? createdAt,
    @JsonKey(name: 'updated_at')
    DateTime? updatedAt,
  }) = _ServiceStage;

  factory ServiceStage.fromJson(Map<String, dynamic> json) =>
      _$ServiceStageFromJson(json);
}
