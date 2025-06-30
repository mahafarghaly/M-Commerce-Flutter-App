// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brands_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BrandsResponse _$BrandsResponseFromJson(Map<String, dynamic> json) =>
    BrandsResponse(
      smartCollections:
          (json['smart_collections'] as List<dynamic>)
              .map((e) => BrandModel.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$BrandsResponseToJson(BrandsResponse instance) =>
    <String, dynamic>{'smart_collections': instance.smartCollections};
