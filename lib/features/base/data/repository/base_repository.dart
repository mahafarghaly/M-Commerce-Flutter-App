import '../../../../core/networking/api_result.dart';
import '../../domain/entity/draft_order_entity.dart';

abstract class BaseRepository{
  Future<ApiResult<DraftOrderEntity>> updateDraftOrder({
    required int id,
    required DraftOrderEntity draftOrder,
  });
  Future<ApiResult<DraftOrderEntity>> getDraftOrderById({
    required int id,
  });
}