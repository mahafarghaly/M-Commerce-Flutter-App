import 'package:freezed_annotation/freezed_annotation.dart';

part 'brand.g.dart';

@JsonSerializable()
class Brand{
  final int? id;
  final String? title;
  @JsonKey(name:"body_html")
  final String? bodyHtml;

  Brand({this.id, this.title, this.bodyHtml});

  factory Brand.fromJson(Map<String, dynamic> json) => _$BrandFromJson(json);
}

@JsonSerializable()
class BrandImage{
  final String? src;
    BrandImage({this.src});

  factory BrandImage.fromJson(Map<String, dynamic> json) =>
      _$BrandImageFromJson(json);
}
