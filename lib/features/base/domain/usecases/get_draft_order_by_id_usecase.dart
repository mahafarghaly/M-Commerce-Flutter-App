import '../../../../core/networking/api_result.dart';
import '../../data/repository/base_repository.dart';
import '../entity/draft_order_entity.dart';

class GetDraftOrderByIdUseCase {
  final BaseRepository _baseRepository;

  GetDraftOrderByIdUseCase(this._baseRepository);

  Future<ApiResult<DraftOrderEntity>> getDraftOrderById({
    required int id,
  }) async {
    return await _baseRepository.getDraftOrderById(id: id);
  }
}
