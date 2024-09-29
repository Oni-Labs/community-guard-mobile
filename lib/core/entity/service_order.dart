// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

import 'attachment_order.dart';
import 'point.dart';
import 'service_stage.dart';

part 'service_order.freezed.dart';
part 'service_order.g.dart';

@freezed
class ServiceOrder with _$ServiceOrder {
  factory ServiceOrder({
    required int id,
    required String uuid,
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
    required Point location,
    required List<AttachmentOrder> attachments,
    required ServiceStage stage,
    @JsonKey(name: 'workspace_stage_id') required int workspaceStageId,
  }) = _ServiceOrder;

  factory ServiceOrder.fromJson(Map<String, dynamic> json) =>
      _$ServiceOrderFromJson(json);
}

