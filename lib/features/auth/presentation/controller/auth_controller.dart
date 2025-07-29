import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:store_app/features/auth/domain/entities/customer.dart';
import 'package:store_app/features/auth/domain/usecases/create_draft_order_usecase.dart';
import 'package:store_app/features/base/domain/entity/draft_order_entity.dart';
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
      final customer = await useCase.addCustomer(
        email: email,
        password: password,
      );
      if (customer is Success<Customer>) {
        await createDraftOrder(email: email, note: "fav", currency: "EGP"); // for favorite
        await createDraftOrder(email: email, note: "cart", currency: "EGP"); // for cart
      }
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

  Future<ApiResult<DraftOrderEntity>> createDraftOrder({
    required String email,
    required String note,
    required String currency,
  }) async {
    final useCase = sl<CreateDraftOrderUseCase>();

    try {
      final draftOrder = await useCase.createDraftOrder(
        draftOrder: DraftOrderEntity(
          email: email,
          note: note,
          currency: currency,
          lineItems:
        [  LineItemEntity(title: "test product", quantity: 1, price: 20, sku: "test.png"),]
        ),
      );
      return draftOrder;
    } catch (e) {
      final apiError = parseApiError(e);
      return ApiResult.failure(apiError.errorMessage);
    }
  }
}
