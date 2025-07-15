import 'package:store_app/core/networking/api_result.dart';
import 'package:store_app/features/auth/data/datasource/auth_api_service.dart';
import 'package:store_app/features/auth/data/mappers/customer_model_mapper.dart';
import 'package:store_app/features/auth/data/models/customer_request.dart';
import 'package:store_app/features/auth/data/repository/auth_repository.dart';
import 'package:store_app/features/auth/domain/entities/customer.dart';

import '../../../../core/networking/api_error_handler.dart';
import '../../data/models/customer_model.dart';

class AuthRepositoryImpl extends AuthRepository {
  final AuthApiService _authApiService;

  AuthRepositoryImpl(this._authApiService);

  @override
  Future<ApiResult<List<Customer>>> getCustomers() async {
    try {
      final response = await _authApiService.getCustomers();
      return ApiResult.success(
        response.customers.map((e) => e.toEntity()).toList(),
      );
    } catch (error) {
      final apiError = parseApiError(error);
      return ApiResult.failure(apiError.errorMessage);
    }
  }

  @override
  Future<ApiResult<Customer>> addCustomer({
    required String email,
    required String password,
    String? note,
  }) async {
    try {
      final model = CustomerModel(email: email, password: password, note: note);
      final request = CustomerRequest(customer: model);
      final response = await _authApiService.addCustomer(request);
      final addedCustomer = response.customer.toEntity();
      return ApiResult.success(addedCustomer);
    } catch (error) {
      final apiError = parseApiError(error);
      return ApiResult.failure(apiError.errorMessage);
    }
  }
}
