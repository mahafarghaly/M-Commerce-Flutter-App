import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:store_app/features/home/domain/usecases/products_usecase.dart';
import '../../../../core/di/service_locator.dart';
import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../../../home/domain/entity/product.dart';
import '../../domain/usecases/get_category_products.dart';
part 'category_products_controller.g.dart';
@Riverpod(keepAlive: true)
class CategoryProductsController extends _$CategoryProductsController {
  @override
  Future<ApiResult<List<ProductEntity>>> build(int id) async {
    final useCase = sl<GetCategoryProductsUseCase>();
    final productUseCase = sl<GetProductsUseCase>();
    try {
      final result = await useCase.getCategoryProducts(id);
      if (result case Success(:final data)) {
        final fullProductResult = await productUseCase.call();
        final categoryProductIds = data.map((e) => e.id).toSet();
        if (fullProductResult case Success(data: final allProducts)) {
          final filtered =
              allProducts
                  .where((product) => categoryProductIds.contains(product.id))
                  .toList();
          return ApiResult.success(filtered);
        } else if (fullProductResult case Failure(:final message)) {
          return ApiResult.failure(message);
        }
      }
      return result;
    } catch (e) {
      final apiError = parseApiError(e);
      return ApiResult.failure(apiError.errorMessage);
    }
  }

}
