import 'package:store_app/features/home/domain/entity/product.dart';

import '../../../../core/networking/api_result.dart';
import '../../data/repository/categories_repository.dart';


class GetCategoryProductsUseCase {
  final CategoriesRepository categoriesRepository;

  GetCategoryProductsUseCase(this.categoriesRepository);

  Future<ApiResult<List<ProductEntity>>> getCategoryProducts(int id) async {
    return await categoriesRepository.getCategoryProducts(id);
  }
}