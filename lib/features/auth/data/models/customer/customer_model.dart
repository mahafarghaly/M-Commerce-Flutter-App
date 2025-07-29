import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_model.g.dart';

@JsonSerializable()
class CustomerModel {
  final int? id;
  final String? email;
  @JsonKey(name: "first_name")
  final String? firstName;
  @JsonKey(name: "last_name")
  final String? lastName;
  @JsonKey(name: "tags")
  final String? password;
  @JsonKey(name: "orders_count")
  final int? ordersCount;
  final String? state;
final String? note;
  const CustomerModel({
    this.id,
    this.email,
    this.firstName,
    this.lastName,
    this.password,
    this.ordersCount,
    this.state,
    this.note,
  });

  factory CustomerModel.fromJson(Map<String, dynamic> json) =>
      _$CustomerModelFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerModelToJson(this);
}
