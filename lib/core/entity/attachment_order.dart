// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'attachment_order.freezed.dart';
part 'attachment_order.g.dart';

@freezed
class AttachmentOrder with _$AttachmentOrder {
  factory AttachmentOrder({
    @JsonKey(name: 'file_name') required String fileName,
    required String path,
    required String type,
    required String url,
  }) = _AttachmentOrder;

  factory AttachmentOrder.fromJson(Map<String, dynamic> json) =>
      _$AttachmentOrderFromJson(json);
}
