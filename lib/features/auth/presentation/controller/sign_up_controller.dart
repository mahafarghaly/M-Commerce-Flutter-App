import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:store_app/features/auth/domain/entities/customer.dart';
import 'package:store_app/features/auth/domain/usecases/add_customer_usecase.dart';
import 'package:store_app/features/auth/domain/usecases/get_customers_usecase.dart';
import '../../../../core/di/service_locator.dart';
import '../../../../core/networking/api_result.dart';
part 'sign_up_controller.g.dart';
@riverpod
class SignUpController extends _$SignUpController{
  // @override
  // Future<ApiResult<Customer>> build(String email, String password) async {
  //   final useCase = sl<AddCustomerUseCase>();
  //   return await useCase.addCustomer(email: email, password: password);
  // }
  @override
  FutureOr<ApiResult<Customer>?> build() => null;

  Future<void> signUp(String email, String password) async {
    final useCase = sl<AddCustomerUseCase>();
    state = const AsyncLoading();
    state = await AsyncValue.guard(() => useCase.addCustomer(email: email, password: password));
  }
}
