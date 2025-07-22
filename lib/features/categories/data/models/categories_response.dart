import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store_app/features/categories/data/models/category_model.dart';
part "categories_response.g.dart";
@JsonSerializable()
class CategoriesResponse {
  @JsonKey(name: "custom_collections")
  final List<CategoryModel> customCollections;

  const CategoriesResponse(this.customCollections);

  factory CategoriesResponse.fromJson(Map<String, dynamic>json)=>
      _$CategoriesResponseFromJson(json);
}