import 'package:store_app/features/home/domain/entity/product.dart';

import '../../../../core/networking/api_result.dart';
import '../../data/repository/home_repostory.dart';


class GetProductsUseCase{
  final HomeRepository repository;
  GetProductsUseCase(this.repository);
  Future<ApiResult<List<ProductEntity>>>call(String? vendor) async {
    return await repository.getProductsByVendor(vendor);
  }
}