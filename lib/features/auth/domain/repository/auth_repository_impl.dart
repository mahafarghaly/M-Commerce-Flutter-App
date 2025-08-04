import 'package:store_app/core/networking/api_result.dart';
import 'package:store_app/features/auth/data/datasource/auth_api_service.dart';
import 'package:store_app/features/auth/data/mappers/customer_model_mapper.dart';
import 'package:store_app/features/auth/data/models/customer/customer_request.dart';
import 'package:store_app/features/auth/data/repository/auth_repository.dart';
import 'package:store_app/features/auth/domain/entities/customer.dart';
import 'package:store_app/features/base/data/mappers/draft_order_mapper.dart';
import 'package:store_app/features/base/data/models/draft_order/draft_order_request.dart';
import 'package:store_app/features/base/domain/entity/draft_order_entity.dart';

import '../../../../core/networking/api_error_handler.dart';
import '../../data/models/customer/customer_model.dart';


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
  Future<ApiResult<Customer>> addCustomer ({
    required String email,
    required String password,
    required String firstName,
    required String lastName,
  }) async {
    try {
      final model = CustomerModel(email: email, password: password,firstName: firstName,lastName: lastName);
      final request = CustomerRequest(customer: model);
      final response = await _authApiService.addCustomer(request);
      final addedCustomer = response.customer.toEntity();
      return ApiResult.success(addedCustomer);
    } catch (error) {
      final apiError = parseApiError(error);
      return ApiResult.failure(apiError.errorMessage);
    }
  }

  @override
  Future<ApiResult<DraftOrderEntity>> createDraftOrder({required DraftOrderEntity draftOrder}) async{
    try{
      final request =  DraftOrderRequest(draftOrder: DraftOrderMapper.entityToModel(draftOrder));
      final response = await _authApiService.createDraftOrder(request);
      final order = DraftOrderMapper.modelToEntity(response.draftOrder);
      return ApiResult.success(order);
    }
    catch (error) {
      final apiError = parseApiError(error);
      return ApiResult.failure(apiError.errorMessage);
    }
  }

  // @override
  // Future<ApiResult<Customer>> updateCustomer({  required int id,required Customer customer,}) async{
  //   try {
  //     final request = CustomerRequest(customer: CustomerModel(cutomer));
  //     final result = await _authApiService.updateCustomer(id, request);
  //     final updatedCustomer = result.customer.toEntity();
  //     return ApiResult.success(updatedCustomer);
  //   } catch (error) {
  //     final apiError = parseApiError(error);
  //     return ApiResult.failure(apiError.errorMessage);
  //   }
  //
  // }
  @override
  Future<ApiResult<Customer>> updateCustomer({
    required int id,
    required Customer customer,
  }) async {
    try {
      // Convert the domain entity to the model
      final customerModel = CustomerModelMapper.fromEntity(customer);

      // Wrap it in the request model
      final request = CustomerRequest(customer: customerModel);

      // Send the update request to the API
      final result = await _authApiService.updateCustomer(id, request);

      // Convert the API response back to domain entity
      final updatedCustomer = result.customer.toEntity();

      return ApiResult.success(updatedCustomer);
    } catch (error) {
      final apiError = parseApiError(error);
      return ApiResult.failure(apiError.errorMessage);
    }
  }

}
