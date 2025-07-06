// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) => ProductModel(
  id: (json['id'] as num?)?.toInt(),
  title: json['title'] as String?,
  description: json['body_html'] as String?,
  vendor: json['vendor'] as String?,
  productType: json['product_type'] as String?,
  variants:
      (json['variants'] as List<dynamic>?)
          ?.map((e) => Variants.fromJson(e as Map<String, dynamic>))
          .toList(),
  options:
      (json['options'] as List<dynamic>?)
          ?.map((e) => Options.fromJson(e as Map<String, dynamic>))
          .toList(),
  productImages:
      (json['images'] as List<dynamic>?)
          ?.map((e) => ProductImages.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$ProductModelToJson(ProductModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'body_html': instance.description,
      'vendor': instance.vendor,
      'product_type': instance.productType,
      'variants': instance.variants,
      'options': instance.options,
      'images': instance.productImages,
    };

Variants _$VariantsFromJson(Map<String, dynamic> json) => Variants(
  id: (json['id'] as num?)?.toInt(),
  productId: (json['product_id'] as num?)?.toInt(),
  title: json['title'] as String?,
  price: json['price'] as String?,
);

Map<String, dynamic> _$VariantsToJson(Variants instance) => <String, dynamic>{
  'id': instance.id,
  'product_id': instance.productId,
  'title': instance.title,
  'price': instance.price,
};

Options _$OptionsFromJson(Map<String, dynamic> json) => Options(
  id: (json['id'] as num?)?.toInt(),
  productId: (json['product_id'] as num?)?.toInt(),
  name: json['name'] as String?,
  position: (json['position'] as num?)?.toInt(),
  values: (json['values'] as List<dynamic>?)?.map((e) => e as String).toList(),
);

Map<String, dynamic> _$OptionsToJson(Options instance) => <String, dynamic>{
  'id': instance.id,
  'product_id': instance.productId,
  'name': instance.name,
  'position': instance.position,
  'values': instance.values,
};

ProductImages _$ProductImagesFromJson(Map<String, dynamic> json) =>
    ProductImages(
      id: (json['id'] as num?)?.toInt(),
      productId: (json['product_id'] as num?)?.toInt(),
      position: (json['position'] as num?)?.toInt(),
      src: json['src'] as String?,
    );

Map<String, dynamic> _$ProductImagesToJson(ProductImages instance) =>
    <String, dynamic>{
      'id': instance.id,
      'product_id': instance.productId,
      'position': instance.position,
      'src': instance.src,
    };
