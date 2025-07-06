import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import '../../../../core/networking/api_constants.dart';
import '../models/brands/brands_response.dart';
import '../models/product/products_response.dart';
part 'home_api_service.g.dart';
@RestApi()
abstract class HomeApiService{
  factory HomeApiService(Dio dio,{String baseUrl,ParseErrorLogger errorLogger}) = _HomeApiService;
  @GET("smart_collections.json")
  Future<BrandsResponse> getBrands();
  @GET("products.json")
  Future<ProductsResponse> getProductsByVendor(
      @Query("vendor") String vendor,
      );

}
