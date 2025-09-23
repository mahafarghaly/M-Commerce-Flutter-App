import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:store_app/core/networking/api_result.dart';
import 'package:store_app/features/home/domain/usecases/products_usecase.dart';
import '../../../../../core/di/service_locator.dart';
import '../../../domain/entity/product.dart';
part 'products_controller.g.dart';
@riverpod
class ProductsController extends _$ProductsController{
  @override
  Future<ApiResult<List<ProductEntity>>> build({String? vendor}) async {
    final useCase= sl<GetProductsUseCase>();
    final result=await useCase.getProductsByVendor(vendor: vendor);
    return  result;
  }
  int? getVariantQuantity({int? productId, int? variantId}) {
    final productsResult = state.value;
    if (productsResult is Success<List<ProductEntity>>) {
      final products = productsResult.data;
      final matched = products.where((p) => p.id == productId);
      if (matched.isEmpty) return null;
      final product = matched.first;

      final variants = product.variants ?? [];
      final matchedVariant = variants.where((v) => v.id == variantId);
      if (matchedVariant.isEmpty) return null;
      return matchedVariant.first.inventoryQuantity;
    }

    return null;
  }


}