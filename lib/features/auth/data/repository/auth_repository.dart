import 'package:store_app/core/networking/api_result.dart';
import 'package:store_app/features/base/domain/entity/draft_order_entity.dart';
import '../../domain/entities/customer.dart';

abstract class AuthRepository {
  Future<ApiResult<List<Customer>>> getCustomers();

  Future<ApiResult<Customer>> addCustomer({
    required String email,
    required String password,
    required String firstName,
    required String lastName,
  });

  Future<ApiResult<DraftOrderEntity>> createDraftOrder({
    required DraftOrderEntity draftOrder,
  });
}
