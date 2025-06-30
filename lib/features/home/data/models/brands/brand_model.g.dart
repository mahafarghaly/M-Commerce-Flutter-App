// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brand_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BrandModel _$BrandModelFromJson(Map<String, dynamic> json) => BrandModel(
  id: (json['id'] as num?)?.toInt(),
  title: json['title'] as String?,
  bodyHtml: json['body_html'] as String?,
  brandImage:
      json['image'] == null
          ? null
          : BrandImage.fromJson(json['image'] as Map<String, dynamic>),
);

Map<String, dynamic> _$BrandModelToJson(BrandModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'body_html': instance.bodyHtml,
      'image': instance.brandImage,
    };

BrandImage _$BrandImageFromJson(Map<String, dynamic> json) =>
    BrandImage(src: json['src'] as String?);

Map<String, dynamic> _$BrandImageToJson(BrandImage instance) =>
    <String, dynamic>{'src': instance.src};
