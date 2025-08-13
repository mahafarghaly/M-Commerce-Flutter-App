import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:store_app/core/networking/api_constants.dart';

class DioFactory {
   DioFactory._();

  static Dio? dio;

  static Future<Dio> getDio() async {
    Duration timeout = const Duration(seconds: 30);
    if (dio == null) {
      dio = Dio();
      dio!
        ..options.connectTimeout = timeout
        ..options.receiveTimeout = timeout
    ..options.headers = {
    'Content-Type': 'application/json',
    'X-Shopify-Access-Token': ApiConstants.apiPassword,
    };
      addDioInterceptor();
      return dio!;
    } else {
      return dio!;
    }
  }

  static void addDioInterceptor() {
    dio?.interceptors.add(
      PrettyDioLogger(
        requestBody: true,
        requestHeader: true,
        responseHeader: true,
        responseBody: true,
      ),
    );
  }
}
