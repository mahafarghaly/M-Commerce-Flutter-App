import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../features/home/data/datasource/home_api_service.dart';
import '../../features/home/data/repository/home_repostory.dart';
import '../networking/dio_factory.dart';

final sl = GetIt.instance;

Future<void> initServiceLocator() async {
  final dio = await DioFactory.getDio();
  sl.registerLazySingleton<Dio>(() => dio);

  sl.registerLazySingleton<HomeApiService>(
          () => HomeApiService(sl<Dio>()));

  sl.registerLazySingleton<HomeRepository>(() => HomeRepository(sl()));
}