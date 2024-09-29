// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

import 'attachment.dart';
import 'point.dart';

part 'service_execution.freezed.dart';
part 'service_execution.g.dart';

@freezed
class ServiceExecution with _$ServiceExecution {
  factory ServiceExecution({
    String? uuid,
    String? observation,
    String? justification,
    @Default(false) @JsonKey(name: 'has_occurrence') bool hasOccurrence,
    @JsonKey(name: 'started_at') String? startAt,
    @JsonKey(name: 'finished_at') String? finishAt,
  }) = _ServiceExecution;

  factory ServiceExecution.fromJson(Map<String, dynamic> json) =>
      _$ServiceExecutionFromJson(json);
}

