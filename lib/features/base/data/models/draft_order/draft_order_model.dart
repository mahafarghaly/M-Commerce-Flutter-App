import 'package:freezed_annotation/freezed_annotation.dart';
part 'draft_order_model.freezed.dart';
part 'draft_order_model.g.dart';

@freezed
abstract class DraftOrderModel with _$DraftOrderModel {
  factory DraftOrderModel({
     int? id,
     String? email,
     String? note,
     String? currency,
    @JsonKey(name: 'line_items')
    required List<LineItem> lineItems,
  }) = _DraftOrderModel;

  factory DraftOrderModel.fromJson(Map<String, dynamic> json) => _$DraftOrderModelFromJson(json);
}

@freezed
abstract class LineItem with _$LineItem {
  factory LineItem({
    int? id,
    @JsonKey(name: 'variant_id')
    int? variantId,
    @JsonKey(name: 'product_id')
    int?  productId,
     String? title,
     int? quantity,
     String? price,
     String? sku,
  }) = _LineItem;

  factory LineItem.fromJson(Map<String, dynamic> json) => _$LineItemFromJson(json);
}
