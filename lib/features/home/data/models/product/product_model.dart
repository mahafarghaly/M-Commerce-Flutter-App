import 'package:freezed_annotation/freezed_annotation.dart';
part 'product_model.g.dart';
@JsonSerializable()
class ProductModel {
  final int? id;
  final String? title;
  @JsonKey(name: "body_html")
  final String? description;
  final String? vendor;
  @JsonKey(name: "product_type")
  final String? productType;
  final List<Variants>? variants;
  final List<Options>? options;
  final List<ProductImages>? productImages;

  const ProductModel({
    this.id,
    this.title,
    this.description,
    this.vendor,
    this.productType,
    this.variants,
    this.options,
    this.productImages,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}

@JsonSerializable()
class Variants {
  final int? id;
  @JsonKey(name: "product_id")
  final int? productId;
  final String? title;
  final String? price;

  const Variants({this.id, this.productId, this.title, this.price});

  factory Variants.fromJson(Map<String, dynamic> json) =>
      _$VariantsFromJson(json);
}

@JsonSerializable()
class Options {
  final int? id;
  @JsonKey(name: "product_id")
  final int? productId;
  final String? name;
  final int? position;
  final List<String>? values;

  const Options({
    this.id,
    this.productId,
    this.name,
    this.position,
    this.values,
  });

  factory Options.fromJson(Map<String, dynamic> json) => _$OptionsFromJson(json);
}

@JsonSerializable()
class ProductImages {
  final int? id;
  @JsonKey(name: "product_id")
  final int? productId;
  final int? position;
  final String? src;

  const ProductImages({this.id, this.productId, this.position, this.src});

  factory ProductImages.fromJson(Map<String, dynamic> json) =>
      _$ProductImagesFromJson(json);
}
