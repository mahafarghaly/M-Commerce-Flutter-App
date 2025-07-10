import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store_app/features/auth/data/models/customer_model.dart';
part 'customer_response.g.dart';
@JsonSerializable()
class CustomerResponse {
  final List<CustomerModel> customers;

  const CustomerResponse(this.customers);
  factory CustomerResponse.fromJson(Map<String,dynamic>json)=>_$CustomerResponseFromJson(json);
}
