import 'dart:convert';

import 'package:dio/dio.dart';

import 'api_error_model.dart';
// ApiErrorModel parseApiError(dynamic error) {
//   if (error is DioException) {
//     final data = error.response?.data;
//     if (data is Map<String, dynamic>) {
//       return ApiErrorModel.fromJson(data);
//     }
//     //"Invalid server error format"
//     print("%%% dio");
//     return  ApiErrorModel(errors: data.toString());
//   }
// print("%%% not dio");
//   return ApiErrorModel(errors: error is String ? error : jsonEncode(error));
//   //return ApiErrorModel(errors: error.toString());
// }
ApiErrorModel parseApiError(dynamic error) {
  try {
    if (error is DioException) {
      final data = error.response?.data;

      if (data is Map<String, dynamic>) {
        return ApiErrorModel.fromJson(data);
      }

      return ApiErrorModel(errors: data.toString());
    }

    // Handle StateError or anything else that isn't encodable
    if (error is StateError) {
      return ApiErrorModel(errors: error.message); // ✅ shows actual message
    }

    if (error is Map<String, dynamic>) {
      return ApiErrorModel(errors: jsonEncode(error));
    }

    return ApiErrorModel(errors: error.toString()); // fallback to string
  } catch (e) {
    return ApiErrorModel(errors: 'Unexpected error occurred');
  }
}
