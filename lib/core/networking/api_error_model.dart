import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'api_error_model.g.dart';
@JsonSerializable()
class ApiErrorModel{
  @JsonKey(name: "errors")
  final dynamic errors;
  const ApiErrorModel({required this.errors});
  factory ApiErrorModel.fromJson(Map<String,dynamic>json)=>_$ApiErrorModelFromJson(json);
  Map<String, dynamic> toJson() => _$ApiErrorModelToJson(this);
  
  String get errorMessage {
    if (errors is String) return errors;
    if (errors is Map<String, dynamic>) {
      return (errors as Map<String, dynamic>).entries
          .map((e) => "${e.key}: ${(e.value as List).join(', ')}")
          .join('\n');
    }
    return "Unknown error";
  }


}