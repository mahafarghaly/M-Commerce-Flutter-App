// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'draft_order_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DraftOrderRequest _$DraftOrderRequestFromJson(Map<String, dynamic> json) =>
    _DraftOrderRequest(
      draftOrder: DraftOrderModel.fromJson(
        json['draft_order'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$DraftOrderRequestToJson(_DraftOrderRequest instance) =>
    <String, dynamic>{'draft_order': instance.draftOrder};
