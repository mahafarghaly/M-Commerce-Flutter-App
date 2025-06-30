import 'package:json_annotation/json_annotation.dart';
import 'brand_model.dart';

part 'brands_response.g.dart';

@JsonSerializable()
class BrandsResponse {
  @JsonKey(name: "smart_collections")
  final List<BrandModel> smartCollections;

  BrandsResponse({required this.smartCollections});

  factory BrandsResponse.fromJson(Map<String, dynamic> json) =>
      _$BrandsResponseFromJson(json);
}
