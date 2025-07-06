import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:store_app/core/networking/api_result.dart';
import 'package:store_app/features/home/domain/usecases/products_usecase.dart';
import '../../../../../core/di/service_locator.dart';
import '../../../domain/entity/product.dart';
part 'products_controller.g.dart';
@riverpod
class ProductsController extends _$ProductsController{
  @override
  Future<ApiResult<List<ProductEntity>>> build(String? vendor) async {
    final useCase= sl<GetProductsUseCase>();
    return await useCase.call(vendor);
  }
  //
  // @override
  // Future<List<ProductEntity>> build() async {
  //   return [];
  // }
}