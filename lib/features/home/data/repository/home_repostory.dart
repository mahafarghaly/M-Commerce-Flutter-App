import 'package:store_app/core/networking/api_result.dart';
import '../../domain/entity/brand.dart';

abstract class HomeRepository{
  Future<ApiResult<List<Brand>>>getBrands();
}