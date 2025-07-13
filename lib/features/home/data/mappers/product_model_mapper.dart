import '../../domain/entity/product.dart';
import '../models/product/product_model.dart';

extension ProductModelMapper on ProductModel {
  ProductEntity toEntity() {
    return ProductEntity(
      id: id ?? 0,
      title: title ?? '',
      description: description ?? '',
      vendor: vendor ?? '',
      productType: productType ?? '',
      variants: variants?.map((v) => v.toEntity()).toList() ?? [],
      options: options?.map((o) => o.toEntity()).toList() ?? [],
      images: productImages?.map((i) => i.toEntity()).toList() ?? [],
    );
  }
}

extension VariantMapper on Variants {
  VariantEntity toEntity() {
    return VariantEntity(
      id: id ?? 0,
      productId: productId ?? 0,
      title: title ?? '',
      price: price ?? '',
    );
  }
}

extension OptionMapper on Options {
  OptionEntity toEntity() {
    return OptionEntity(
      id: id ?? 0,
      productId: productId ?? 0,
      name: name ?? '',
      position: position ?? 0,
      values: values ?? [],
    );
  }
}

extension ImageMapper on ProductImages {
  ProductImageEntity toEntity() {
    return ProductImageEntity(
      id: id ?? 0,
      productId: productId ?? 0,
      position: position ?? 0,
      src: src ?? '',
    );
  }
}
