import 'package:store_app/core/networking/api_result.dart';
import 'package:store_app/features/home/data/datasource/home_api_service.dart';
import 'package:store_app/features/home/data/models/brands/brand_model.dart';

class HomeRepository{
  final HomeApiService _homeApiService;
  HomeRepository(this._homeApiService);
  Future<ApiResult<List<BrandModel>>>getBrands()async {
    try{
final response = await _homeApiService.getBrands();
return ApiResult.success(response.smartCollections);
    }catch(error){
      return ApiResult.failure(error.toString());
    }

  }
}