import 'package:store_app/features/base/data/repository/base_repository.dart';
import 'package:store_app/features/base/domain/entity/draft_order_entity.dart';

import '../../../../core/networking/api_result.dart';

class UpdateDraftOrderUseCase {
  final BaseRepository _baseRepository;

  UpdateDraftOrderUseCase(this._baseRepository);

  Future<ApiResult<DraftOrderEntity>> updateDraftOrder({
    required int id,
    required DraftOrderEntity draftOrder,
  }) async {
    return await _baseRepository.updateDraftOrder(
      id: id,
      draftOrder: draftOrder,
    );
  }
}
