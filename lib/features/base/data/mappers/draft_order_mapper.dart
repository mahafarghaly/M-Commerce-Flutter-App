
import '../../domain/entity/draft_order_entity.dart';
import '../models/draft_order/draft_order_model.dart';

class DraftOrderMapper {
  static DraftOrderEntity modelToEntity(DraftOrderModel model) {
    return DraftOrderEntity(
      id: model.id,
      email: model.email,
      note: model.note,
      currency: model.currency,
      lineItems: model.lineItems.map(LineItemMapper.modelToEntity).toList(),
    );
  }

  static DraftOrderModel entityToModel(DraftOrderEntity entity) {
    return DraftOrderModel(
      id: entity.id,
      email: entity.email,
      note: entity.note,
      currency: entity.currency,
      lineItems: entity.lineItems.map(LineItemMapper.entityToModel).toList(),
    );
  }
}

class LineItemMapper {
  static LineItemEntity modelToEntity(LineItem model) {
    return LineItemEntity(
      id: model.id,
      variantId: model.variantId,
      productId: model.productId,
      title: model.title,
      quantity: model.quantity,
      price: model.price,
      sku: model.sku,
    );
  }
  static LineItem entityToModel(LineItemEntity entity) {
    return LineItem(
      id: entity.id,
      variantId: entity.variantId,
      productId: entity.productId,
      title: entity.title,
      quantity: entity.quantity,
      price: entity.price,
      sku: entity.sku,
    );
  }
}
