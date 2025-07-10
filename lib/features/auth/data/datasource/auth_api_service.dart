import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import 'package:store_app/features/auth/data/models/customer_response.dart';
import '../models/customer_request.dart';

part 'auth_api_service.g.dart';

@RestApi()
abstract class AuthApiService {
  factory AuthApiService(
    Dio dio, {
    String baseUrl,
    ParseErrorLogger errorLogger,
  }) = _AuthApiService;

  @GET("customers.json")
  Future<CustomerResponse> getCustomers();

  @POST("customers.json")
  Future<CustomerResponse> addCustomer(@Body() CustomerRequest request);
}
