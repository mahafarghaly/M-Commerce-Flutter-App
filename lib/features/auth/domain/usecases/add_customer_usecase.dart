import 'package:store_app/core/networking/api_result.dart';
import 'package:store_app/features/auth/data/repository/auth_repository.dart';
import 'package:store_app/features/auth/domain/entities/customer.dart';

class AddCustomerUseCase {
  final AuthRepository _authRepository;

  const AddCustomerUseCase(this._authRepository);

  Future<ApiResult<Customer>> addCustomer({
    required String email,
    required String password,
    String? note,
  }) async {
    return await _authRepository.addCustomer(
      email: email,
      password: password,
      note: note,
    );
  }
}
