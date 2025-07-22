import 'package:store_app/core/networking/api_result.dart';
import 'package:store_app/features/categories/domain/entities/category.dart';
import 'package:store_app/features/home/domain/entity/product.dart';
import 'package:store_app/features/home/presentation/view/widgets/products_list.dart';

abstract class CategoriesRepository{
  Future<ApiResult<List<CategoryEntity>>>getCategories();
  Future<ApiResult<List<ProductEntity>>>getCategoryProducts(int id);
}