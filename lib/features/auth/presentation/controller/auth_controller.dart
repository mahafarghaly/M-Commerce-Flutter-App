import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:store_app/features/auth/domain/entities/customer.dart';
import '../../../../core/di/service_locator.dart';
import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../../domain/usecases/add_customer_usecase.dart';
import '../../domain/usecases/get_customers_usecase.dart';
part 'auth_controller.g.dart';
@riverpod
class AuthController extends _$AuthController {
  @override
  FutureOr<ApiResult<Customer>?> build() => null;
  Future<ApiResult<Customer>> signUp(String email, String password) async {
    final useCase = sl<AddCustomerUseCase>();

    try {
      final customer = await useCase.addCustomer(email: email, password: password);
      return customer;
    } catch (e) {
      final apiError = parseApiError(e);
      return ApiResult.failure(apiError.errorMessage);
    }
  }

  Future<ApiResult<List<Customer>>> getCustomers() async {
    final useCase = sl<GetCustomersUseCase>();

    try {
      final result = await useCase.getCustomers();
   return result;
    } catch (e) {
      final apiError = parseApiError(e);
      return ApiResult.failure(apiError.errorMessage);
    }
  }
}
