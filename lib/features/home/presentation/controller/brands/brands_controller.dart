import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:store_app/features/home/domain/usecases/brands_usecase.dart';
import '../../../../../core/di/service_locator.dart';
import '../../../../../core/networking/api_error_handler.dart';
import '../../../../../core/networking/api_result.dart';
import '../../../domain/entity/brand.dart';
part 'brands_controller.g.dart';

@Riverpod(keepAlive: true)
class BrandsController extends _$BrandsController {
  @override
  Future<ApiResult<List<Brand>>> build() async {
    final useCase = sl<GetBrandsUseCase>();
    try{
      final brands =   await useCase.call();
      return brands;
    }catch (e) {
      final apiError = parseApiError(e);
      return ApiResult.failure(apiError.errorMessage);
    }

  }
}
