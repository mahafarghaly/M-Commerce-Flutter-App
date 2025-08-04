import 'package:store_app/features/auth/domain/entities/customer.dart';

import '../../../../core/networking/api_result.dart';
import '../../data/repository/auth_repository.dart';

class UpdateCustomerNoteUesCase{
  final AuthRepository _authRepository;

  const UpdateCustomerNoteUesCase(this._authRepository);

  Future<ApiResult<Customer>> updateCustomer({
    required int id,
    required Customer customer
  }) async {
    return await _authRepository.updateCustomer(id: id, customer: customer);
  }
}