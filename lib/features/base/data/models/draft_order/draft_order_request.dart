import 'package:freezed_annotation/freezed_annotation.dart';
import 'draft_order_model.dart';
part 'draft_order_request.g.dart';
part 'draft_order_request.freezed.dart';
@freezed
abstract class DraftOrderRequest with _$DraftOrderRequest {
  factory DraftOrderRequest({
    @JsonKey(name: 'draft_order')
    required DraftOrderModel draftOrder,
  }) = _DraftOrderRequest;

  factory DraftOrderRequest.fromJson(Map<String, dynamic> json) => _$DraftOrderRequestFromJson(json);
}