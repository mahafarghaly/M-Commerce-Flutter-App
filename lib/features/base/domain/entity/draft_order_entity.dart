import 'package:freezed_annotation/freezed_annotation.dart';

part 'draft_order_entity.freezed.dart';

@freezed
abstract class DraftOrderEntity with _$DraftOrderEntity {
  const factory DraftOrderEntity({
    int? id,
    String? email,
    String? note,
    String? currency,
    required List<LineItemEntity> lineItems,
  }) = _DraftOrderEntity;
}

@freezed
abstract class LineItemEntity with _$LineItemEntity {
  const factory LineItemEntity({
    int? id,
    int? variantId,
    int? productId,
    String? title,
    int? quantity,
    String? price,
    String? sku,
    List<PropertyEntity>? properties,
  }) = _LineItemEntity;
}

@freezed
abstract class PropertyEntity with _$PropertyEntity {
  const factory PropertyEntity({
    String? name,
    String? value,
  }) = _PropertyEntity;
}
