import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/di/service_locator.dart';
import '../../../../core/networking/api_result.dart';
import '../../data/models/brands/brand_model.dart';
import '../../data/repository/home_repostory.dart';
import '../../domain/entity/brand.dart';

final homeRepositoryProvider = Provider<HomeRepository>((ref) {
  return sl<HomeRepository>();
});

final brandProvider = FutureProvider<ApiResult<List<Brand>>>((ref) async {
  return await ref.watch(homeRepositoryProvider).getBrands();
});
