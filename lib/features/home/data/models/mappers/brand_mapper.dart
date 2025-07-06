import '../../../domain/entity/brand.dart';
import '../brands/brand_model.dart';

extension BrandMapper on BrandModel {
  Brand toEntity() {
    return Brand(
      id: id,
      title: title,
      bodyHtml: bodyHtml,
      imageUrl: brandImage?.src,
    );
  }
}
