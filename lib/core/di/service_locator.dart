import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:store_app/features/home/domain/repository/home_repository_impl.dart';

import '../../features/home/data/datasource/home_api_service.dart';
import '../../features/home/data/repository/home_repostory.dart';
import '../networking/api_constants.dart';
import '../networking/dio_factory.dart';

final sl = GetIt.instance;

Future<void> initServiceLocator() async {
  final dio = await DioFactory.getDio();
  sl.registerLazySingleton<Dio>(() => dio);

  sl.registerLazySingleton<HomeApiService>(
          () => HomeApiService(sl<Dio>(),baseUrl: ApiConstants.baseUrl));

  sl.registerLazySingleton<HomeRepository>(() => HomeRepositoryImpl(sl()));
}