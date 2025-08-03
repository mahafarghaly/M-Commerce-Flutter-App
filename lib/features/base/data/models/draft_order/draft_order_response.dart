import 'package:freezed_annotation/freezed_annotation.dart';

import 'draft_order_model.dart';
part 'draft_order_response.freezed.dart';
part 'draft_order_response.g.dart';
@freezed
abstract class DraftOrderResponse with _$DraftOrderResponse {
  factory DraftOrderResponse({
    @JsonKey(name: 'draft_order') required DraftOrderModel draftOrder,
  }) = _DraftOrderResponse;

  factory DraftOrderResponse.fromJson(Map<String, dynamic> json) =>
      _$DraftOrderResponseFromJson(json);
}
