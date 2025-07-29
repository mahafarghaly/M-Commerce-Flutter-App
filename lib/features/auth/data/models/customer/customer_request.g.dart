// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerRequest _$CustomerRequestFromJson(Map<String, dynamic> json) =>
    CustomerRequest(
      customer: CustomerModel.fromJson(
        json['customer'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$CustomerRequestToJson(CustomerRequest instance) =>
    <String, dynamic>{'customer': instance.customer};
