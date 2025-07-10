import 'package:store_app/core/networking/api_result.dart';
import 'package:store_app/features/auth/data/repository/auth_repository.dart';
import 'package:store_app/features/auth/domain/entities/customer.dart';

class GetCustomersUseCase {
  final AuthRepository _authRepository;

  const GetCustomersUseCase(this._authRepository);

  Future<ApiResult<List<Customer>>> getCustomers() async {
    return await _authRepository.getCustomers();
  }
}
