import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:store_app/features/categories/domain/entities/category.dart';
import 'package:store_app/features/categories/domain/usecases/get_categories_usecase.dart';
import '../../../../core/di/service_locator.dart';
import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';

part 'categories_controller.g.dart';
@Riverpod(keepAlive: true)
class CategoriesController extends _$CategoriesController{

  @override
  Future<ApiResult<List<CategoryEntity>>> build() async {
    final useCase = sl<GetCategoriesUseCase>();
    try{
      final categories =   await useCase.getCategories();
      return categories;
    }catch (e) {
      final apiError = parseApiError(e);
      return ApiResult.failure(apiError.errorMessage);
    }
  }
}
