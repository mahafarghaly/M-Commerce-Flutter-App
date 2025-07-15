import 'package:dio/dio.dart';
import 'api_error_model.dart';

ApiErrorModel parseApiError(dynamic error) {
  try {
    if (error is DioException) {
      final data = error.response?.data;
      return ApiErrorModel.fromJson(data);
    }
    return const ApiErrorModel(errors: "Server Exception");
  } catch (e) {
    return const ApiErrorModel(errors: 'Unexpected error occurred');
  }
}
