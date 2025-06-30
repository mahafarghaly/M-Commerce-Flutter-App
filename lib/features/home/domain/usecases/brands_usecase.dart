import 'package:store_app/features/home/data/models/brands/brand_model.dart';
import 'package:store_app/features/home/data/repository/home_repostory.dart';

import '../../../../core/networking/api_result.dart';
import '../entity/brand.dart';

class GetBrandsUseCase {
  final HomeRepository repository;

  GetBrandsUseCase(this.repository);

  Future<ApiResult<List<Brand>>>call() async {
    return await repository.getBrands();
  }
}