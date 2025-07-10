import 'package:freezed_annotation/freezed_annotation.dart';

import 'customer_model.dart';
part 'customer_request.g.dart';
@JsonSerializable()
class CustomerRequest {
  final CustomerModel customer;

  const CustomerRequest({required this.customer});

  factory CustomerRequest.fromJson(Map<String, dynamic> json) =>
      _$CustomerRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerRequestToJson(this);
}
