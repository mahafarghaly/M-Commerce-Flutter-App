import '../../../../core/networking/api_result.dart';
import '../../domain/entities/customer.dart';

sealed class AuthResult {}

class SignUpResult extends AuthResult {
  final ApiResult<Customer> result;
  SignUpResult(this.result);
}

class SignInResult extends AuthResult {
  final ApiResult<List<Customer>> result;
  SignInResult(this.result);
}
