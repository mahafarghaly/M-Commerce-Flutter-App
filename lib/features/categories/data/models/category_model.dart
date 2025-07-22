import 'package:json_annotation/json_annotation.dart';
part "category_model.g.dart";
@JsonSerializable()
class CategoryModel{
  final int? id;
  final String? title;
  @JsonKey(name: "sort_order")
  final String? sortOrder;
  const CategoryModel({this.id,this.title,this.sortOrder});
  factory CategoryModel.fromJson(Map<String,dynamic>json)=> _$CategoryModelFromJson(json);
}