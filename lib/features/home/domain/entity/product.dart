class ProductEntity{
  final int id;
  final String title;
  final String description;
  final String vendor;
  final String productType;
  final List<VariantEntity>? variants;
  final List<OptionEntity> options;
  final List<ProductImageEntity> images;

  ProductEntity({
    required this.id,
    required this.title,
    required this.description,
    required this.vendor,
    required this.productType,
    required this.variants,
    required this.options,
    required this.images,
  });
}

class VariantEntity {
  final int id;
  final int productId;
  final String title;
  final String price;

  VariantEntity({
    required this.id,
    required this.productId,
    required this.title,
    required this.price,
  });
}

class OptionEntity {
  final int id;
  final int productId;
  final String name;
  final int position;
  final List<String> values;

  OptionEntity({
    required this.id,
    required this.productId,
    required this.name,
    required this.position,
    required this.values,
  });
}

class ProductImageEntity {
  final int id;
  final int productId;
  final int position;
  final String src;

  ProductImageEntity({
    required this.id,
    required this.productId,
    required this.position,
    required this.src,
  });
}
