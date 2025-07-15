import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'api_error_model.g.dart';
@JsonSerializable()
class ApiErrorModel {
  final dynamic errors;

  const ApiErrorModel({required this.errors});

  factory ApiErrorModel.fromJson(Map<String, dynamic> json) {
    return ApiErrorModel(errors: json['errors'] ?? 'Unknown error');
  }

  Map<String, dynamic> toJson() => _$ApiErrorModelToJson(this);

  String get errorMessage {
    try {
      if (errors is String) return errors as String;

      if (errors is Map<String, dynamic>) {
        return (errors as Map<String, dynamic>).entries.map((entry) {
          final value = entry.value;
          if (value is List) {
            return "${entry.key}: ${value.join(', ')}";
          }
          return "${entry.key}: $value";
        }).join('\n');
      }

      return "Unknown error format";
    } catch (e) {
      return "Error parsing server error";
    }
  }

}
