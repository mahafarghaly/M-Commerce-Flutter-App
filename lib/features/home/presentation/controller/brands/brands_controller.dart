import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:store_app/features/home/domain/usecases/brands_usecase.dart';
import '../../../../../core/di/service_locator.dart';
import '../../../../../core/networking/api_result.dart';
import '../../../domain/entity/brand.dart';
part 'brands_controller.g.dart';

@riverpod
class BrandsController extends _$BrandsController {
  @override
  Future<ApiResult<List<Brand>>> build() async {
    final useCase = sl<GetBrandsUseCase>();
    return await useCase.call();
  }
}
