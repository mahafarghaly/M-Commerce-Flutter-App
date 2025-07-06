import 'package:store_app/core/networking/api_result.dart';
import 'package:store_app/features/home/domain/entity/product.dart';
import '../../domain/entity/brand.dart';

abstract class HomeRepository{
  Future<ApiResult<List<Brand>>>getBrands();
  Future<ApiResult<List<ProductEntity>>>getProductsByVendor(String? vendor);
}