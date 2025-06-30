import 'package:freezed_annotation/freezed_annotation.dart';

part 'brand_model.g.dart';

@JsonSerializable()
class BrandModel{
  final int? id;
  final String? title;
  @JsonKey(name:"body_html")
  final String? bodyHtml;
  @JsonKey(name: 'image')
final BrandImage? brandImage;
  BrandModel({this.id, this.title, this.bodyHtml,this.brandImage});

  factory BrandModel.fromJson(Map<String, dynamic> json) => _$BrandModelFromJson(json);
}

@JsonSerializable()
class BrandImage{
  final String? src;
    BrandImage({this.src});

  factory BrandImage.fromJson(Map<String, dynamic> json) =>
      _$BrandImageFromJson(json);
}
