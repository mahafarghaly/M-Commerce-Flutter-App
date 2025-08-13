// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'draft_order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DraftOrderModel _$DraftOrderModelFromJson(Map<String, dynamic> json) =>
    _DraftOrderModel(
      id: (json['id'] as num?)?.toInt(),
      email: json['email'] as String?,
      note: json['note'] as String?,
      currency: json['currency'] as String?,
      lineItems:
          (json['line_items'] as List<dynamic>)
              .map((e) => LineItem.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$DraftOrderModelToJson(_DraftOrderModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'note': instance.note,
      'currency': instance.currency,
      'line_items': instance.lineItems,
    };

_LineItem _$LineItemFromJson(Map<String, dynamic> json) => _LineItem(
  id: (json['id'] as num?)?.toInt(),
  variantId: (json['variant_id'] as num?)?.toInt(),
  productId: (json['product_id'] as num?)?.toInt(),
  title: json['title'] as String?,
  quantity: (json['quantity'] as num?)?.toInt(),
  price: json['price'] as String?,
  sku: json['sku'] as String?,
  properties:
      (json['properties'] as List<dynamic>?)
          ?.map((e) => Property.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$LineItemToJson(_LineItem instance) => <String, dynamic>{
  'id': instance.id,
  'variant_id': instance.variantId,
  'product_id': instance.productId,
  'title': instance.title,
  'quantity': instance.quantity,
  'price': instance.price,
  'sku': instance.sku,
  'properties': instance.properties,
};

_Property _$PropertyFromJson(Map<String, dynamic> json) =>
    _Property(name: json['name'] as String?, value: json['value'] as String?);

Map<String, dynamic> _$PropertyToJson(_Property instance) => <String, dynamic>{
  'name': instance.name,
  'value': instance.value,
};
