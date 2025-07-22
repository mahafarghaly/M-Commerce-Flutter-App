import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import 'package:store_app/features/categories/data/models/categories_response.dart';
import 'package:store_app/features/categories/data/models/category_model.dart';
import 'package:store_app/features/home/data/models/product/products_response.dart';

part 'categories_api_servise.g.dart';
@RestApi()
abstract class CategoriesApiService {
  factory CategoriesApiService(
    Dio dio, {
    String baseUrl,
    ParseErrorLogger errorLogger,
  }) = _CategoriesApiService;

  @GET("custom_collections.json")
  Future<CategoriesResponse> getCategories();
  @GET("collections/{collectionId}/products.json")
  Future<ProductsResponse> getCategoryProducts(@Path("collectionId") int id);
}
