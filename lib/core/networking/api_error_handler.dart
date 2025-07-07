 import 'package:dio/dio.dart';

import 'api_error_model.dart';

ApiErrorModel parseApiError(dynamic error) {
if (error is DioException) {
try {
final data = error.response?.data;
if (data is Map<String, dynamic>) {
return ApiErrorModel.fromJson(data);
}
} catch (_) {}
return ApiErrorModel(errors: "Network or server error");
}

return ApiErrorModel(errors: error.toString());
}