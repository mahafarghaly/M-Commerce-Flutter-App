// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brand.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Brand _$BrandFromJson(Map<String, dynamic> json) => Brand(
  id: (json['id'] as num?)?.toInt(),
  title: json['title'] as String?,
  bodyHtml: json['body_html'] as String?,
);

Map<String, dynamic> _$BrandToJson(Brand instance) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'body_html': instance.bodyHtml,
};

BrandImage _$BrandImageFromJson(Map<String, dynamic> json) =>
    BrandImage(src: json['src'] as String?);

Map<String, dynamic> _$BrandImageToJson(BrandImage instance) =>
    <String, dynamic>{'src': instance.src};
