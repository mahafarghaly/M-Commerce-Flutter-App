// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'draft_order_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DraftOrderRequest {

@JsonKey(name: 'draft_order') DraftOrderModel get draftOrder;
/// Create a copy of DraftOrderRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DraftOrderRequestCopyWith<DraftOrderRequest> get copyWith => _$DraftOrderRequestCopyWithImpl<DraftOrderRequest>(this as DraftOrderRequest, _$identity);

  /// Serializes this DraftOrderRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DraftOrderRequest&&(identical(other.draftOrder, draftOrder) || other.draftOrder == draftOrder));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,draftOrder);

@override
String toString() {
  return 'DraftOrderRequest(draftOrder: $draftOrder)';
}


}

/// @nodoc
abstract mixin class $DraftOrderRequestCopyWith<$Res>  {
  factory $DraftOrderRequestCopyWith(DraftOrderRequest value, $Res Function(DraftOrderRequest) _then) = _$DraftOrderRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'draft_order') DraftOrderModel draftOrder
});


$DraftOrderModelCopyWith<$Res> get draftOrder;

}
/// @nodoc
class _$DraftOrderRequestCopyWithImpl<$Res>
    implements $DraftOrderRequestCopyWith<$Res> {
  _$DraftOrderRequestCopyWithImpl(this._self, this._then);

  final DraftOrderRequest _self;
  final $Res Function(DraftOrderRequest) _then;

/// Create a copy of DraftOrderRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? draftOrder = null,}) {
  return _then(_self.copyWith(
draftOrder: null == draftOrder ? _self.draftOrder : draftOrder // ignore: cast_nullable_to_non_nullable
as DraftOrderModel,
  ));
}
/// Create a copy of DraftOrderRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DraftOrderModelCopyWith<$Res> get draftOrder {
  
  return $DraftOrderModelCopyWith<$Res>(_self.draftOrder, (value) {
    return _then(_self.copyWith(draftOrder: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _DraftOrderRequest implements DraftOrderRequest {
   _DraftOrderRequest({@JsonKey(name: 'draft_order') required this.draftOrder});
  factory _DraftOrderRequest.fromJson(Map<String, dynamic> json) => _$DraftOrderRequestFromJson(json);

@override@JsonKey(name: 'draft_order') final  DraftOrderModel draftOrder;

/// Create a copy of DraftOrderRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DraftOrderRequestCopyWith<_DraftOrderRequest> get copyWith => __$DraftOrderRequestCopyWithImpl<_DraftOrderRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DraftOrderRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DraftOrderRequest&&(identical(other.draftOrder, draftOrder) || other.draftOrder == draftOrder));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,draftOrder);

@override
String toString() {
  return 'DraftOrderRequest(draftOrder: $draftOrder)';
}


}

/// @nodoc
abstract mixin class _$DraftOrderRequestCopyWith<$Res> implements $DraftOrderRequestCopyWith<$Res> {
  factory _$DraftOrderRequestCopyWith(_DraftOrderRequest value, $Res Function(_DraftOrderRequest) _then) = __$DraftOrderRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'draft_order') DraftOrderModel draftOrder
});


@override $DraftOrderModelCopyWith<$Res> get draftOrder;

}
/// @nodoc
class __$DraftOrderRequestCopyWithImpl<$Res>
    implements _$DraftOrderRequestCopyWith<$Res> {
  __$DraftOrderRequestCopyWithImpl(this._self, this._then);

  final _DraftOrderRequest _self;
  final $Res Function(_DraftOrderRequest) _then;

/// Create a copy of DraftOrderRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? draftOrder = null,}) {
  return _then(_DraftOrderRequest(
draftOrder: null == draftOrder ? _self.draftOrder : draftOrder // ignore: cast_nullable_to_non_nullable
as DraftOrderModel,
  ));
}

/// Create a copy of DraftOrderRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DraftOrderModelCopyWith<$Res> get draftOrder {
  
  return $DraftOrderModelCopyWith<$Res>(_self.draftOrder, (value) {
    return _then(_self.copyWith(draftOrder: value));
  });
}
}

// dart format on
