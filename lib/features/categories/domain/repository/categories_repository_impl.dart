import 'package:store_app/core/networking/api_error_handler.dart';
import 'package:store_app/core/networking/api_result.dart';
import 'package:store_app/features/categories/data/datasource/categories_api_servise.dart';
import 'package:store_app/features/categories/data/mappers/category_mapper.dart';
import 'package:store_app/features/categories/data/repository/categories_repository.dart';
import 'package:store_app/features/categories/domain/entities/category.dart';
import 'package:store_app/features/home/data/mappers/product_model_mapper.dart';
import 'package:store_app/features/home/domain/entity/product.dart';

class CategoriesRepositoryImpl extends CategoriesRepository {
  final CategoriesApiService _categoriesApiService;

  CategoriesRepositoryImpl(this._categoriesApiService);

  @override
  Future<ApiResult<List<CategoryEntity>>> getCategories() async {
    try {
      final response = await _categoriesApiService.getCategories();
      return ApiResult.success(
        response.customCollections
            .map((categoryModel) => categoryModel.toEntity())
            .toList(),
      );
    } catch (error) {
      final apiError = parseApiError(error);
      return ApiResult.failure(apiError.errorMessage);
    }
  }

  @override
  Future<ApiResult<List<ProductEntity>>> getCategoryProducts(int id) async {
    try {
      final response = await _categoriesApiService.getCategoryProducts(id);
      return ApiResult.success(
        response.products
            .map((productModel) => productModel.toEntity())
            .toList(),
      );
    } catch (error) {
      final apiError = parseApiError(error);
      return ApiResult.failure(apiError.errorMessage);
    }
  }
}
