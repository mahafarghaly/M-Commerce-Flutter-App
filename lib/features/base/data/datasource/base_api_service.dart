import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import '../models/draft_order/draft_order_request.dart';

part "base_api_service.g.dart";

@RestApi()
abstract class BaseApiService {
  factory BaseApiService(
    Dio dio, {
    String baseUrl,
    ParseErrorLogger errorLogger,
  }) = _BaseApiService;


  @PUT("draft_orders/{id}.json")
  Future<DraftOrderRequest> updateDraftOrder(
    @Path("id") int draftOrderId,
    @Body() DraftOrderRequest request,
  );
  @GET("draft_orders/{id}.json")
  Future<DraftOrderRequest> getDraftOrderById(
      @Path("id") int draftOrderId,
      );
}
