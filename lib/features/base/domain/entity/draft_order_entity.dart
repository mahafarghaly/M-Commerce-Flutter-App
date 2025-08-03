class DraftOrderEntity {
  final int? id;
  final String? email;
  final String? note;
  final String? currency;
  final List<LineItemEntity> lineItems;

  DraftOrderEntity({
    this.id,
    required this.email,
    required this.note,
    required this.currency,
    required this.lineItems,
  });
}

class LineItemEntity {
  final int? id;
  final int? variantId;
  final int? productId;
  final String? title;
  final int? quantity;
  final String? price;
  final String? sku;

  LineItemEntity({
    this.id,
    this.variantId,
    this.productId,
    this.title,
    this.quantity,
    this.price,
    this.sku,
  });
}
