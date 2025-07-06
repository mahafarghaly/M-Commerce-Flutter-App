import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store_app/features/home/data/models/product/product_model.dart';
part "products_response.g.dart";
@JsonSerializable()
class ProductsResponse{
  final List<ProductModel> products;
  const ProductsResponse({required this.products});
  factory ProductsResponse.fromJson(Map<String,dynamic>json)=>_$ProductsResponseFromJson(json);

}