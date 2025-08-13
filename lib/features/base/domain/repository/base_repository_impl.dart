import 'package:store_app/core/networking/api_result.dart';
import 'package:store_app/features/base/data/datasource/base_api_service.dart';
import 'package:store_app/features/base/data/mappers/draft_order_mapper.dart';
import 'package:store_app/features/base/data/models/draft_order/draft_order_request.dart';
import 'package:store_app/features/base/data/repository/base_repository.dart';
import 'package:store_app/features/base/domain/entity/draft_order_entity.dart';

import '../../../../core/networking/api_error_handler.dart';

class BaseRepositoryImpl extends BaseRepository{
  final BaseApiService _baseApiService;
   BaseRepositoryImpl(this._baseApiService);
  @override
  Future<ApiResult<DraftOrderEntity>> getDraftOrderById({required int id}) async{
try{
  final response= await _baseApiService.getDraftOrderById(id);
  return ApiResult.success(DraftOrderMapper.modelToEntity(response.draftOrder));
}catch(error){
  final apiError = parseApiError(error);
  return ApiResult.failure(apiError.errorMessage);
}
  }

  @override
  Future<ApiResult<DraftOrderEntity>> updateDraftOrder({required int id, required DraftOrderEntity draftOrder}) async{
    try{
      final draftOrderModel = DraftOrderMapper.entityToModel(draftOrder);
      final request = DraftOrderRequest(draftOrder: draftOrderModel);
      final response= await _baseApiService.updateDraftOrder(id, request);
      return ApiResult.success(DraftOrderMapper.modelToEntity(response.draftOrder));
    }catch(error){
      final apiError = parseApiError(error);
      return ApiResult.failure(apiError.errorMessage);
    }
  }

}