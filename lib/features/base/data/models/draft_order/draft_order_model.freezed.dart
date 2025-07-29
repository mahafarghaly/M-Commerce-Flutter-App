// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'draft_order_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DraftOrderModel {

 String get email; String get note; String get currency;@JsonKey(name: 'line_items') List<LineItem>? get lineItems;
/// Create a copy of DraftOrderModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DraftOrderModelCopyWith<DraftOrderModel> get copyWith => _$DraftOrderModelCopyWithImpl<DraftOrderModel>(this as DraftOrderModel, _$identity);

  /// Serializes this DraftOrderModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DraftOrderModel&&(identical(other.email, email) || other.email == email)&&(identical(other.note, note) || other.note == note)&&(identical(other.currency, currency) || other.currency == currency)&&const DeepCollectionEquality().equals(other.lineItems, lineItems));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,note,currency,const DeepCollectionEquality().hash(lineItems));

@override
String toString() {
  return 'DraftOrderModel(email: $email, note: $note, currency: $currency, lineItems: $lineItems)';
}


}

/// @nodoc
abstract mixin class $DraftOrderModelCopyWith<$Res>  {
  factory $DraftOrderModelCopyWith(DraftOrderModel value, $Res Function(DraftOrderModel) _then) = _$DraftOrderModelCopyWithImpl;
@useResult
$Res call({
 String email, String note, String currency,@JsonKey(name: 'line_items') List<LineItem>? lineItems
});




}
/// @nodoc
class _$DraftOrderModelCopyWithImpl<$Res>
    implements $DraftOrderModelCopyWith<$Res> {
  _$DraftOrderModelCopyWithImpl(this._self, this._then);

  final DraftOrderModel _self;
  final $Res Function(DraftOrderModel) _then;

/// Create a copy of DraftOrderModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? note = null,Object? currency = null,Object? lineItems = freezed,}) {
  return _then(_self.copyWith(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,note: null == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,lineItems: freezed == lineItems ? _self.lineItems : lineItems // ignore: cast_nullable_to_non_nullable
as List<LineItem>?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _DraftOrderModel implements DraftOrderModel {
   _DraftOrderModel({required this.email, required this.note, required this.currency, @JsonKey(name: 'line_items') required final  List<LineItem>? lineItems}): _lineItems = lineItems;
  factory _DraftOrderModel.fromJson(Map<String, dynamic> json) => _$DraftOrderModelFromJson(json);

@override final  String email;
@override final  String note;
@override final  String currency;
 final  List<LineItem>? _lineItems;
@override@JsonKey(name: 'line_items') List<LineItem>? get lineItems {
  final value = _lineItems;
  if (value == null) return null;
  if (_lineItems is EqualUnmodifiableListView) return _lineItems;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of DraftOrderModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DraftOrderModelCopyWith<_DraftOrderModel> get copyWith => __$DraftOrderModelCopyWithImpl<_DraftOrderModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DraftOrderModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DraftOrderModel&&(identical(other.email, email) || other.email == email)&&(identical(other.note, note) || other.note == note)&&(identical(other.currency, currency) || other.currency == currency)&&const DeepCollectionEquality().equals(other._lineItems, _lineItems));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,note,currency,const DeepCollectionEquality().hash(_lineItems));

@override
String toString() {
  return 'DraftOrderModel(email: $email, note: $note, currency: $currency, lineItems: $lineItems)';
}


}

/// @nodoc
abstract mixin class _$DraftOrderModelCopyWith<$Res> implements $DraftOrderModelCopyWith<$Res> {
  factory _$DraftOrderModelCopyWith(_DraftOrderModel value, $Res Function(_DraftOrderModel) _then) = __$DraftOrderModelCopyWithImpl;
@override @useResult
$Res call({
 String email, String note, String currency,@JsonKey(name: 'line_items') List<LineItem>? lineItems
});




}
/// @nodoc
class __$DraftOrderModelCopyWithImpl<$Res>
    implements _$DraftOrderModelCopyWith<$Res> {
  __$DraftOrderModelCopyWithImpl(this._self, this._then);

  final _DraftOrderModel _self;
  final $Res Function(_DraftOrderModel) _then;

/// Create a copy of DraftOrderModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? note = null,Object? currency = null,Object? lineItems = freezed,}) {
  return _then(_DraftOrderModel(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,note: null == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,lineItems: freezed == lineItems ? _self._lineItems : lineItems // ignore: cast_nullable_to_non_nullable
as List<LineItem>?,
  ));
}


}


/// @nodoc
mixin _$LineItem {

@JsonKey(name: 'variant_id') int? get variantId;@JsonKey(name: 'product_id') int? get productId; String get title; int get quantity; double get price; String get sku;
/// Create a copy of LineItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LineItemCopyWith<LineItem> get copyWith => _$LineItemCopyWithImpl<LineItem>(this as LineItem, _$identity);

  /// Serializes this LineItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LineItem&&(identical(other.variantId, variantId) || other.variantId == variantId)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.title, title) || other.title == title)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.price, price) || other.price == price)&&(identical(other.sku, sku) || other.sku == sku));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,variantId,productId,title,quantity,price,sku);

@override
String toString() {
  return 'LineItem(variantId: $variantId, productId: $productId, title: $title, quantity: $quantity, price: $price, sku: $sku)';
}


}

/// @nodoc
abstract mixin class $LineItemCopyWith<$Res>  {
  factory $LineItemCopyWith(LineItem value, $Res Function(LineItem) _then) = _$LineItemCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'variant_id') int? variantId,@JsonKey(name: 'product_id') int? productId, String title, int quantity, double price, String sku
});




}
/// @nodoc
class _$LineItemCopyWithImpl<$Res>
    implements $LineItemCopyWith<$Res> {
  _$LineItemCopyWithImpl(this._self, this._then);

  final LineItem _self;
  final $Res Function(LineItem) _then;

/// Create a copy of LineItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? variantId = freezed,Object? productId = freezed,Object? title = null,Object? quantity = null,Object? price = null,Object? sku = null,}) {
  return _then(_self.copyWith(
variantId: freezed == variantId ? _self.variantId : variantId // ignore: cast_nullable_to_non_nullable
as int?,productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int?,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,sku: null == sku ? _self.sku : sku // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _LineItem implements LineItem {
   _LineItem({@JsonKey(name: 'variant_id') this.variantId, @JsonKey(name: 'product_id') this.productId, required this.title, required this.quantity, required this.price, required this.sku});
  factory _LineItem.fromJson(Map<String, dynamic> json) => _$LineItemFromJson(json);

@override@JsonKey(name: 'variant_id') final  int? variantId;
@override@JsonKey(name: 'product_id') final  int? productId;
@override final  String title;
@override final  int quantity;
@override final  double price;
@override final  String sku;

/// Create a copy of LineItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LineItemCopyWith<_LineItem> get copyWith => __$LineItemCopyWithImpl<_LineItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LineItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LineItem&&(identical(other.variantId, variantId) || other.variantId == variantId)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.title, title) || other.title == title)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.price, price) || other.price == price)&&(identical(other.sku, sku) || other.sku == sku));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,variantId,productId,title,quantity,price,sku);

@override
String toString() {
  return 'LineItem(variantId: $variantId, productId: $productId, title: $title, quantity: $quantity, price: $price, sku: $sku)';
}


}

/// @nodoc
abstract mixin class _$LineItemCopyWith<$Res> implements $LineItemCopyWith<$Res> {
  factory _$LineItemCopyWith(_LineItem value, $Res Function(_LineItem) _then) = __$LineItemCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'variant_id') int? variantId,@JsonKey(name: 'product_id') int? productId, String title, int quantity, double price, String sku
});




}
/// @nodoc
class __$LineItemCopyWithImpl<$Res>
    implements _$LineItemCopyWith<$Res> {
  __$LineItemCopyWithImpl(this._self, this._then);

  final _LineItem _self;
  final $Res Function(_LineItem) _then;

/// Create a copy of LineItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? variantId = freezed,Object? productId = freezed,Object? title = null,Object? quantity = null,Object? price = null,Object? sku = null,}) {
  return _then(_LineItem(
variantId: freezed == variantId ? _self.variantId : variantId // ignore: cast_nullable_to_non_nullable
as int?,productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int?,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,sku: null == sku ? _self.sku : sku // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
