import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import '../../../base/data/models/draft_order/draft_order_request.dart';
import '../models/customer/customer_request.dart';
import '../models/customer/customer_response.dart';

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
  Future<CustomerRequest> addCustomer(@Body() CustomerRequest request);
  @POST("draft_orders.json")
  Future<DraftOrderRequest> createDraftOrder(@Body()DraftOrderRequest request);
}
