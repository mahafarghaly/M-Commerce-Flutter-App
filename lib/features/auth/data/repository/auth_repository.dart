import 'package:store_app/core/networking/api_result.dart';
import '../../domain/entities/customer.dart';

abstract class AuthRepository{
  Future<ApiResult<List<Customer>>> getCustomers();
  Future<ApiResult<Customer>> addCustomer({required String email, required String password, String? note});
}