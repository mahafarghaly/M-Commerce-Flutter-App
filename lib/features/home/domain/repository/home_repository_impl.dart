import 'package:store_app/features/home/data/datasource/home_api_service.dart';
import 'package:store_app/features/home/data/models/mappers/brand_mapper.dart';
import 'package:store_app/features/home/data/models/mappers/product_model_mapper.dart';
import 'package:store_app/features/home/data/repository/home_repostory.dart';
import 'package:store_app/features/home/domain/entity/product.dart';

import '../../../../core/networking/api_result.dart';

import '../entity/brand.dart';

class HomeRepositoryImpl extends HomeRepository{
  final HomeApiService _homeApiService;
  HomeRepositoryImpl(this._homeApiService);
  @override
  Future<ApiResult<List<Brand>>>getBrands()async {
    try{
      final response = await _homeApiService.getBrands();
      return ApiResult.success(response.smartCollections.map((e)=>e.toEntity()).toList());
    }catch(error){
      return ApiResult.failure(error.toString());
    }

  }

  @override
  Future<ApiResult<List<ProductEntity>>> getProductsByVendor(String? vendor )async  {
try{
  final response =await _homeApiService.getProductsByVendor(vendor??"");
  return ApiResult.success(response.products.map((e)=>e.toEntity()).toList());
}catch(error){
  return ApiResult.failure(error.toString());
}
  }


}