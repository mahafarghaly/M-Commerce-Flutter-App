// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'draft_order_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DraftOrderEntity {

 int? get id; String? get email; String? get note; String? get currency; List<LineItemEntity> get lineItems;
/// Create a copy of DraftOrderEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DraftOrderEntityCopyWith<DraftOrderEntity> get copyWith => _$DraftOrderEntityCopyWithImpl<DraftOrderEntity>(this as DraftOrderEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DraftOrderEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.note, note) || other.note == note)&&(identical(other.currency, currency) || other.currency == currency)&&const DeepCollectionEquality().equals(other.lineItems, lineItems));
}


@override
int get hashCode => Object.hash(runtimeType,id,email,note,currency,const DeepCollectionEquality().hash(lineItems));

@override
String toString() {
  return 'DraftOrderEntity(id: $id, email: $email, note: $note, currency: $currency, lineItems: $lineItems)';
}


}

/// @nodoc
abstract mixin class $DraftOrderEntityCopyWith<$Res>  {
  factory $DraftOrderEntityCopyWith(DraftOrderEntity value, $Res Function(DraftOrderEntity) _then) = _$DraftOrderEntityCopyWithImpl;
@useResult
$Res call({
 int? id, String? email, String? note, String? currency, List<LineItemEntity> lineItems
});




}
/// @nodoc
class _$DraftOrderEntityCopyWithImpl<$Res>
    implements $DraftOrderEntityCopyWith<$Res> {
  _$DraftOrderEntityCopyWithImpl(this._self, this._then);

  final DraftOrderEntity _self;
  final $Res Function(DraftOrderEntity) _then;

/// Create a copy of DraftOrderEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? email = freezed,Object? note = freezed,Object? currency = freezed,Object? lineItems = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,lineItems: null == lineItems ? _self.lineItems : lineItems // ignore: cast_nullable_to_non_nullable
as List<LineItemEntity>,
  ));
}

}


/// @nodoc


class _DraftOrderEntity implements DraftOrderEntity {
  const _DraftOrderEntity({this.id, this.email, this.note, this.currency, required final  List<LineItemEntity> lineItems}): _lineItems = lineItems;
  

@override final  int? id;
@override final  String? email;
@override final  String? note;
@override final  String? currency;
 final  List<LineItemEntity> _lineItems;
@override List<LineItemEntity> get lineItems {
  if (_lineItems is EqualUnmodifiableListView) return _lineItems;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_lineItems);
}


/// Create a copy of DraftOrderEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DraftOrderEntityCopyWith<_DraftOrderEntity> get copyWith => __$DraftOrderEntityCopyWithImpl<_DraftOrderEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DraftOrderEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.note, note) || other.note == note)&&(identical(other.currency, currency) || other.currency == currency)&&const DeepCollectionEquality().equals(other._lineItems, _lineItems));
}


@override
int get hashCode => Object.hash(runtimeType,id,email,note,currency,const DeepCollectionEquality().hash(_lineItems));

@override
String toString() {
  return 'DraftOrderEntity(id: $id, email: $email, note: $note, currency: $currency, lineItems: $lineItems)';
}


}

/// @nodoc
abstract mixin class _$DraftOrderEntityCopyWith<$Res> implements $DraftOrderEntityCopyWith<$Res> {
  factory _$DraftOrderEntityCopyWith(_DraftOrderEntity value, $Res Function(_DraftOrderEntity) _then) = __$DraftOrderEntityCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? email, String? note, String? currency, List<LineItemEntity> lineItems
});




}
/// @nodoc
class __$DraftOrderEntityCopyWithImpl<$Res>
    implements _$DraftOrderEntityCopyWith<$Res> {
  __$DraftOrderEntityCopyWithImpl(this._self, this._then);

  final _DraftOrderEntity _self;
  final $Res Function(_DraftOrderEntity) _then;

/// Create a copy of DraftOrderEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? email = freezed,Object? note = freezed,Object? currency = freezed,Object? lineItems = null,}) {
  return _then(_DraftOrderEntity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,lineItems: null == lineItems ? _self._lineItems : lineItems // ignore: cast_nullable_to_non_nullable
as List<LineItemEntity>,
  ));
}


}

/// @nodoc
mixin _$LineItemEntity {

 int? get id; int? get variantId; int? get productId; String? get title; int? get quantity; String? get price; String? get sku; List<PropertyEntity>? get properties;
/// Create a copy of LineItemEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LineItemEntityCopyWith<LineItemEntity> get copyWith => _$LineItemEntityCopyWithImpl<LineItemEntity>(this as LineItemEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LineItemEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.variantId, variantId) || other.variantId == variantId)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.title, title) || other.title == title)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.price, price) || other.price == price)&&(identical(other.sku, sku) || other.sku == sku)&&const DeepCollectionEquality().equals(other.properties, properties));
}


@override
int get hashCode => Object.hash(runtimeType,id,variantId,productId,title,quantity,price,sku,const DeepCollectionEquality().hash(properties));

@override
String toString() {
  return 'LineItemEntity(id: $id, variantId: $variantId, productId: $productId, title: $title, quantity: $quantity, price: $price, sku: $sku, properties: $properties)';
}


}

/// @nodoc
abstract mixin class $LineItemEntityCopyWith<$Res>  {
  factory $LineItemEntityCopyWith(LineItemEntity value, $Res Function(LineItemEntity) _then) = _$LineItemEntityCopyWithImpl;
@useResult
$Res call({
 int? id, int? variantId, int? productId, String? title, int? quantity, String? price, String? sku, List<PropertyEntity>? properties
});




}
/// @nodoc
class _$LineItemEntityCopyWithImpl<$Res>
    implements $LineItemEntityCopyWith<$Res> {
  _$LineItemEntityCopyWithImpl(this._self, this._then);

  final LineItemEntity _self;
  final $Res Function(LineItemEntity) _then;

/// Create a copy of LineItemEntity
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
as List<PropertyEntity>?,
  ));
}

}


/// @nodoc


class _LineItemEntity implements LineItemEntity {
  const _LineItemEntity({this.id, this.variantId, this.productId, this.title, this.quantity, this.price, this.sku, final  List<PropertyEntity>? properties}): _properties = properties;
  

@override final  int? id;
@override final  int? variantId;
@override final  int? productId;
@override final  String? title;
@override final  int? quantity;
@override final  String? price;
@override final  String? sku;
 final  List<PropertyEntity>? _properties;
@override List<PropertyEntity>? get properties {
  final value = _properties;
  if (value == null) return null;
  if (_properties is EqualUnmodifiableListView) return _properties;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of LineItemEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LineItemEntityCopyWith<_LineItemEntity> get copyWith => __$LineItemEntityCopyWithImpl<_LineItemEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LineItemEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.variantId, variantId) || other.variantId == variantId)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.title, title) || other.title == title)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.price, price) || other.price == price)&&(identical(other.sku, sku) || other.sku == sku)&&const DeepCollectionEquality().equals(other._properties, _properties));
}


@override
int get hashCode => Object.hash(runtimeType,id,variantId,productId,title,quantity,price,sku,const DeepCollectionEquality().hash(_properties));

@override
String toString() {
  return 'LineItemEntity(id: $id, variantId: $variantId, productId: $productId, title: $title, quantity: $quantity, price: $price, sku: $sku, properties: $properties)';
}


}

/// @nodoc
abstract mixin class _$LineItemEntityCopyWith<$Res> implements $LineItemEntityCopyWith<$Res> {
  factory _$LineItemEntityCopyWith(_LineItemEntity value, $Res Function(_LineItemEntity) _then) = __$LineItemEntityCopyWithImpl;
@override @useResult
$Res call({
 int? id, int? variantId, int? productId, String? title, int? quantity, String? price, String? sku, List<PropertyEntity>? properties
});




}
/// @nodoc
class __$LineItemEntityCopyWithImpl<$Res>
    implements _$LineItemEntityCopyWith<$Res> {
  __$LineItemEntityCopyWithImpl(this._self, this._then);

  final _LineItemEntity _self;
  final $Res Function(_LineItemEntity) _then;

/// Create a copy of LineItemEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? variantId = freezed,Object? productId = freezed,Object? title = freezed,Object? quantity = freezed,Object? price = freezed,Object? sku = freezed,Object? properties = freezed,}) {
  return _then(_LineItemEntity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,variantId: freezed == variantId ? _self.variantId : variantId // ignore: cast_nullable_to_non_nullable
as int?,productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,quantity: freezed == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String?,sku: freezed == sku ? _self.sku : sku // ignore: cast_nullable_to_non_nullable
as String?,properties: freezed == properties ? _self._properties : properties // ignore: cast_nullable_to_non_nullable
as List<PropertyEntity>?,
  ));
}


}

/// @nodoc
mixin _$PropertyEntity {

 String? get name; String? get value;
/// Create a copy of PropertyEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PropertyEntityCopyWith<PropertyEntity> get copyWith => _$PropertyEntityCopyWithImpl<PropertyEntity>(this as PropertyEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PropertyEntity&&(identical(other.name, name) || other.name == name)&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,name,value);

@override
String toString() {
  return 'PropertyEntity(name: $name, value: $value)';
}


}

/// @nodoc
abstract mixin class $PropertyEntityCopyWith<$Res>  {
  factory $PropertyEntityCopyWith(PropertyEntity value, $Res Function(PropertyEntity) _then) = _$PropertyEntityCopyWithImpl;
@useResult
$Res call({
 String? name, String? value
});




}
/// @nodoc
class _$PropertyEntityCopyWithImpl<$Res>
    implements $PropertyEntityCopyWith<$Res> {
  _$PropertyEntityCopyWithImpl(this._self, this._then);

  final PropertyEntity _self;
  final $Res Function(PropertyEntity) _then;

/// Create a copy of PropertyEntity
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


class _PropertyEntity implements PropertyEntity {
  const _PropertyEntity({this.name, this.value});
  

@override final  String? name;
@override final  String? value;

/// Create a copy of PropertyEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PropertyEntityCopyWith<_PropertyEntity> get copyWith => __$PropertyEntityCopyWithImpl<_PropertyEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PropertyEntity&&(identical(other.name, name) || other.name == name)&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,name,value);

@override
String toString() {
  return 'PropertyEntity(name: $name, value: $value)';
}


}

/// @nodoc
abstract mixin class _$PropertyEntityCopyWith<$Res> implements $PropertyEntityCopyWith<$Res> {
  factory _$PropertyEntityCopyWith(_PropertyEntity value, $Res Function(_PropertyEntity) _then) = __$PropertyEntityCopyWithImpl;
@override @useResult
$Res call({
 String? name, String? value
});




}
/// @nodoc
class __$PropertyEntityCopyWithImpl<$Res>
    implements _$PropertyEntityCopyWith<$Res> {
  __$PropertyEntityCopyWithImpl(this._self, this._then);

  final _PropertyEntity _self;
  final $Res Function(_PropertyEntity) _then;

/// Create a copy of PropertyEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? value = freezed,}) {
  return _then(_PropertyEntity(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
