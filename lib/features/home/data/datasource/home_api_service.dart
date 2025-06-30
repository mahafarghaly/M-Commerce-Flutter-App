import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import '../../../../core/networking/api_constants.dart';
import '../models/brands/brands_response.dart';
part 'home_api_service.g.dart';
@RestApi(baseUrl:ApiConstants.baseUrl)
abstract class HomeApiService{
  factory HomeApiService(Dio dio,{String baseUrl,ParseErrorLogger errorLogger}) = _HomeApiService;
  @GET("smart_collections.json")
  Future<BrandsResponse> getBrands();
}
