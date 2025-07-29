import 'package:store_app/features/base/domain/entity/draft_order_entity.dart';

import '../../../../core/networking/api_result.dart';
import '../../data/repository/auth_repository.dart';

class CreateDraftOrderUseCase {
  final AuthRepository _authRepository;

  const CreateDraftOrderUseCase(this._authRepository);

  Future<ApiResult<DraftOrderEntity>> createDraftOrder({
    required DraftOrderEntity draftOrder,
  }) async {
    return await _authRepository.createDraftOrder(draftOrder: draftOrder);
  }
}
