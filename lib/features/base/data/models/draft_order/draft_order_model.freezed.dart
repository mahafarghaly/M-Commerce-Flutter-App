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

 int? get id; String? get email; String? get note; String? get currency;@JsonKey(name: 'line_items') List<LineItem> get lineItems;
/// Create a copy of DraftOrderModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DraftOrderModelCopyWith<DraftOrderModel> get copyWith => _$DraftOrderModelCopyWithImpl<DraftOrderModel>(this as DraftOrderModel, _$identity);

  /// Serializes this DraftOrderModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DraftOrderModel&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.note, note) || other.note == note)&&(identical(other.currency, currency) || other.currency == currency)&&const DeepCollectionEquality().equals(other.lineItems, lineItems));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,email,note,currency,const DeepCollectionEquality().hash(lineItems));

@override
String toString() {
  return 'DraftOrderModel(id: $id, email: $email, note: $note, currency: $currency, lineItems: $lineItems)';
}


}

/// @nodoc
abstract mixin class $DraftOrderModelCopyWith<$Res>  {
  factory $DraftOrderModelCopyWith(DraftOrderModel value, $Res Function(DraftOrderModel) _then) = _$DraftOrderModelCopyWithImpl;
@useResult
$Res call({
 int? id, String? email, String? note, String? currency,@JsonKey(name: 'line_items') List<LineItem> lineItems
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? email = freezed,Object? note = freezed,Object? currency = freezed,Object? lineItems = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,lineItems: null == lineItems ? _self.lineItems : lineItems // ignore: cast_nullable_to_non_nullable
as List<LineItem>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _DraftOrderModel implements DraftOrderModel {
   _DraftOrderModel({this.id, this.email, this.note, this.currency, @JsonKey(name: 'line_items') required final  List<LineItem> lineItems}): _lineItems = lineItems;
  factory _DraftOrderModel.fromJson(Map<String, dynamic> json) => _$DraftOrderModelFromJson(json);

@override final  int? id;
@override final  String? email;
@override final  String? note;
@override final  String? currency;
 final  List<LineItem> _lineItems;
@override@JsonKey(name: 'line_items') List<LineItem> get lineItems {
  if (_lineItems is EqualUnmodifiableListView) return _lineItems;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_lineItems);
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DraftOrderModel&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.note, note) || other.note == note)&&(identical(other.currency, currency) || other.currency == currency)&&const DeepCollectionEquality().equals(other._lineItems, _lineItems));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,email,note,currency,const DeepCollectionEquality().hash(_lineItems));

@override
String toString() {
  return 'DraftOrderModel(id: $id, email: $email, note: $note, currency: $currency, lineItems: $lineItems)';
}


}

/// @nodoc
abstract mixin class _$DraftOrderModelCopyWith<$Res> implements $DraftOrderModelCopyWith<$Res> {
  factory _$DraftOrderModelCopyWith(_DraftOrderModel value, $Res Function(_DraftOrderModel) _then) = __$DraftOrderModelCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? email, String? note, String? currency,@JsonKey(name: 'line_items') List<LineItem> lineItems
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
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? email = freezed,Object? note = freezed,Object? currency = freezed,Object? lineItems = null,}) {
  return _then(_DraftOrderModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,lineItems: null == lineItems ? _self._lineItems : lineItems // ignore: cast_nullable_to_non_nullable
as List<LineItem>,
  ));
}


}


/// @nodoc
mixin _$LineItem {

 int? get id;@JsonKey(name: 'variant_id') int? get variantId;@JsonKey(name: 'product_id') int? get productId; String? get title; int? get quantity; String? get price; String? get sku; List<Property>? get properties;
/// Create a copy of LineItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LineItemCopyWith<LineItem> get copyWith => _$LineItemCopyWithImpl<LineItem>(this as LineItem, _$identity);

  /// Serializes this LineItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LineItem&&(identical(other.id, id) || other.id == id)&&(identical(other.variantId, variantId) || other.variantId == variantId)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.title, title) || other.title == title)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.price, price) || other.price == price)&&(identical(other.sku, sku) || other.sku == sku)&&const DeepCollectionEquality().equals(other.properties, properties));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,variantId,productId,title,quantity,price,sku,const DeepCollectionEquality().hash(properties));

@override
String toString() {
  return 'LineItem(id: $id, variantId: $variantId, productId: $productId, title: $title, quantity: $quantity, price: $price, sku: $sku, properties: $properties)';
}


}

/// @nodoc
abstract mixin class $LineItemCopyWith<$Res>  {
  factory $LineItemCopyWith(LineItem value, $Res Function(LineItem) _then) = _$LineItemCopyWithImpl;
@useResult
$Res call({
 int? id,@JsonKey(name: 'variant_id') int? variantId,@JsonKey(name: 'product_id') int? productId, String? title, int? quantity, String? price, String? sku, List<Property>? properties
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? variantId = freezed,Object? productId = freezed,Object? title = freezed,Object? quantity = freezed,Object? price = freezed,Object? sku = freezed,Object? properties = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,variantId: freezed == variantId ? _self.variantId : variantId // ignore: cast_nullable_to_non_nullable
as int?,productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,quantity: freezed == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String?,sku: freezed == sku ? _self.sku : sku // ignore: cast_nullable_to_non_nullable
as String?,properties: freezed == properties ? _self.properties : properties // ignore: cast_nullable_to_non_nullable
as List<Property>?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _LineItem implements LineItem {
   _LineItem({this.id, @JsonKey(name: 'variant_id') this.variantId, @JsonKey(name: 'product_id') this.productId, this.title, this.quantity, this.price, this.sku, final  List<Property>? properties}): _properties = properties;
  factory _LineItem.fromJson(Map<String, dynamic> json) => _$LineItemFromJson(json);

@override final  int? id;
@override@JsonKey(name: 'variant_id') final  int? variantId;
@override@JsonKey(name: 'product_id') final  int? productId;
@override final  String? title;
@override final  int? quantity;
@override final  String? price;
@override final  String? sku;
 final  List<Property>? _properties;
@override List<Property>? get properties {
  final value = _properties;
  if (value == null) return null;
  if (_properties is EqualUnmodifiableListView) return _properties;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LineItem&&(identical(other.id, id) || other.id == id)&&(identical(other.variantId, variantId) || other.variantId == variantId)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.title, title) || other.title == title)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.price, price) || other.price == price)&&(identical(other.sku, sku) || other.sku == sku)&&const DeepCollectionEquality().equals(other._properties, _properties));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,variantId,productId,title,quantity,price,sku,const DeepCollectionEquality().hash(_properties));

@override
String toString() {
  return 'LineItem(id: $id, variantId: $variantId, productId: $productId, title: $title, quantity: $quantity, price: $price, sku: $sku, properties: $properties)';
}


}

/// @nodoc
abstract mixin class _$LineItemCopyWith<$Res> implements $LineItemCopyWith<$Res> {
  factory _$LineItemCopyWith(_LineItem value, $Res Function(_LineItem) _then) = __$LineItemCopyWithImpl;
@override @useResult
$Res call({
 int? id,@JsonKey(name: 'variant_id') int? variantId,@JsonKey(name: 'product_id') int? productId, String? title, int? quantity, String? price, String? sku, List<Property>? properties
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
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? variantId = freezed,Object? productId = freezed,Object? title = freezed,Object? quantity = freezed,Object? price = freezed,Object? sku = freezed,Object? properties = freezed,}) {
  return _then(_LineItem(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,variantId: freezed == variantId ? _self.variantId : variantId // ignore: cast_nullable_to_non_nullable
as int?,productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,quantity: freezed == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String?,sku: freezed == sku ? _self.sku : sku // ignore: cast_nullable_to_non_nullable
as String?,properties: freezed == properties ? _self._properties : properties // ignore: cast_nullable_to_non_nullable
as List<Property>?,
  ));
}


}


/// @nodoc
mixin _$Property {

 String? get name; String? get value;
/// Create a copy of Property
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PropertyCopyWith<Property> get copyWith => _$PropertyCopyWithImpl<Property>(this as Property, _$identity);

  /// Serializes this Property to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Property&&(identical(other.name, name) || other.name == name)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,value);

@override
String toString() {
  return 'Property(name: $name, value: $value)';
}


}

/// @nodoc
abstract mixin class $PropertyCopyWith<$Res>  {
  factory $PropertyCopyWith(Property value, $Res Function(Property) _then) = _$PropertyCopyWithImpl;
@useResult
$Res call({
 String? name, String? value
});




}
/// @nodoc
class _$PropertyCopyWithImpl<$Res>
    implements $PropertyCopyWith<$Res> {
  _$PropertyCopyWithImpl(this._self, this._then);

  final Property _self;
  final $Res Function(Property) _then;

/// Create a copy of Property
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? value = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Property implements Property {
   _Property({required this.name, required this.value});
  factory _Property.fromJson(Map<String, dynamic> json) => _$PropertyFromJson(json);

@override final  String? name;
@override final  String? value;

/// Create a copy of Property
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PropertyCopyWith<_Property> get copyWith => __$PropertyCopyWithImpl<_Property>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PropertyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Property&&(identical(other.name, name) || other.name == name)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,value);

@override
String toString() {
  return 'Property(name: $name, value: $value)';
}


}

/// @nodoc
abstract mixin class _$PropertyCopyWith<$Res> implements $PropertyCopyWith<$Res> {
  factory _$PropertyCopyWith(_Property value, $Res Function(_Property) _then) = __$PropertyCopyWithImpl;
@override @useResult
$Res call({
 String? name, String? value
});




}
/// @nodoc
class __$PropertyCopyWithImpl<$Res>
    implements _$PropertyCopyWith<$Res> {
  __$PropertyCopyWithImpl(this._self, this._then);

  final _Property _self;
  final $Res Function(_Property) _then;

/// Create a copy of Property
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? value = freezed,}) {
  return _then(_Property(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
