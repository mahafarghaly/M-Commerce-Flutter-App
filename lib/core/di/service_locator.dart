import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:store_app/features/auth/data/datasource/auth_api_service.dart';
import 'package:store_app/features/auth/data/repository/auth_repository.dart';
import 'package:store_app/features/auth/domain/repository/auth_repository_impl.dart';
import 'package:store_app/features/auth/domain/usecases/add_customer_usecase.dart';
import 'package:store_app/features/auth/domain/usecases/create_draft_order_usecase.dart';
import 'package:store_app/features/auth/domain/usecases/get_customers_usecase.dart';
import 'package:store_app/features/categories/data/datasource/categories_api_servise.dart';
import 'package:store_app/features/categories/data/repository/categories_repository.dart';
import 'package:store_app/features/categories/domain/repository/categories_repository_impl.dart';
import 'package:store_app/features/categories/domain/usecases/get_categories_usecase.dart';
import 'package:store_app/features/categories/domain/usecases/get_category_products.dart';
import 'package:store_app/features/home/domain/repository/home_repository_impl.dart';
import 'package:store_app/features/home/domain/usecases/brands_usecase.dart';
import 'package:store_app/features/home/domain/usecases/products_usecase.dart';

import '../../features/auth/domain/usecases/update_customer_note_usecase.dart';
import '../../features/home/data/datasource/home_api_service.dart';
import '../../features/home/data/repository/home_repostory.dart';
import '../networking/api_constants.dart';
import '../networking/dio_factory.dart';

final sl = GetIt.instance;

Future<void> initServiceLocator() async {
  final dio = await DioFactory.getDio();
  sl.registerLazySingleton<Dio>(() => dio);

  sl.registerLazySingleton<HomeApiService>(
    () => HomeApiService(sl<Dio>(), baseUrl: ApiConstants.baseUrl),
  );
  sl.registerLazySingleton<AuthApiService>(
        () => AuthApiService(sl<Dio>(), baseUrl: ApiConstants.baseUrl),
  );
  sl.registerLazySingleton<CategoriesApiService>(
        () => CategoriesApiService(sl<Dio>(), baseUrl: ApiConstants.baseUrl),
  );
  //repository
  sl.registerLazySingleton<HomeRepository>(() => HomeRepositoryImpl(sl()));
  sl.registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl(sl()));
  sl.registerLazySingleton<CategoriesRepository>(() => CategoriesRepositoryImpl(sl()));
  //use cases
  sl.registerLazySingleton<GetBrandsUseCase>(() => GetBrandsUseCase(sl()));
  sl.registerLazySingleton<GetProductsUseCase>(() => GetProductsUseCase(sl()));
  sl.registerLazySingleton<GetCustomersUseCase>(() => GetCustomersUseCase(sl()));
  sl.registerLazySingleton<AddCustomerUseCase>(() => AddCustomerUseCase(sl()));
  sl.registerLazySingleton<GetCategoriesUseCase>(() => GetCategoriesUseCase(sl()));
  sl.registerLazySingleton<GetCategoryProductsUseCase>(() => GetCategoryProductsUseCase(sl()));
  sl.registerLazySingleton<CreateDraftOrderUseCase>(() => CreateDraftOrderUseCase(sl()));
  sl.registerLazySingleton<UpdateCustomerNoteUesCase>(() => UpdateCustomerNoteUesCase(sl()));
}
