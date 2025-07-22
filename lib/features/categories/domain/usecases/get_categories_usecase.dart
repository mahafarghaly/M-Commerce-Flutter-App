
import 'package:store_app/core/networking/api_result.dart';

import '../../data/repository/categories_repository.dart';
import '../entities/category.dart';

class GetCategoriesUseCase{
  final CategoriesRepository categoriesRepository;
  GetCategoriesUseCase(this.categoriesRepository);
  Future<ApiResult<List<CategoryEntity>>> getCategories()async {
    return await categoriesRepository.getCategories();
  }
}