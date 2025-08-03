// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'draft_order_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DraftOrderResponse _$DraftOrderResponseFromJson(Map<String, dynamic> json) =>
    _DraftOrderResponse(
      draftOrder: DraftOrderModel.fromJson(
        json['draft_order'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$DraftOrderResponseToJson(_DraftOrderResponse instance) =>
    <String, dynamic>{'draft_order': instance.draftOrder};
