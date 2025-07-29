// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'draft_order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DraftOrderModel _$DraftOrderModelFromJson(Map<String, dynamic> json) =>
    _DraftOrderModel(
      email: json['email'] as String,
      note: json['note'] as String,
      currency: json['currency'] as String,
      lineItems:
          (json['line_items'] as List<dynamic>?)
              ?.map((e) => LineItem.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$DraftOrderModelToJson(_DraftOrderModel instance) =>
    <String, dynamic>{
      'email': instance.email,
      'note': instance.note,
      'currency': instance.currency,
      'line_items': instance.lineItems,
    };

_LineItem _$LineItemFromJson(Map<String, dynamic> json) => _LineItem(
  variantId: (json['variant_id'] as num?)?.toInt(),
  productId: (json['product_id'] as num?)?.toInt(),
  title: json['title'] as String,
  quantity: (json['quantity'] as num).toInt(),
  price: (json['price'] as num).toDouble(),
  sku: json['sku'] as String,
);

Map<String, dynamic> _$LineItemToJson(_LineItem instance) => <String, dynamic>{
  'variant_id': instance.variantId,
  'product_id': instance.productId,
  'title': instance.title,
  'quantity': instance.quantity,
  'price': instance.price,
  'sku': instance.sku,
};
