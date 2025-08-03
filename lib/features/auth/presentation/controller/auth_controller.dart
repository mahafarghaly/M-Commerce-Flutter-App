import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:store_app/features/auth/domain/entities/customer.dart';
import 'package:store_app/features/auth/domain/usecases/create_draft_order_usecase.dart';
import 'package:store_app/features/base/domain/entity/draft_order_entity.dart';
import '../../../../core/di/service_locator.dart';
import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../../../../core/utils/constants.dart';
import '../../../base/helpers/secure_storge_helper.dart';
import '../../domain/usecases/add_customer_usecase.dart';
import '../../domain/usecases/get_customers_usecase.dart';

part 'auth_controller.g.dart';

@riverpod
class AuthController extends _$AuthController {
  @override
  FutureOr<ApiResult<Customer>?> build() => null;

  Future<ApiResult<Customer>> signUp({required String email, required String password, required String firstName, required String lastName}) async {
    final useCase = sl<AddCustomerUseCase>();
    try {
      final customer = await useCase.addCustomer(
        email: email,
        firstName: firstName,
        lastName:lastName,
        password: password,
      );
      if (customer is Success<Customer>) {
        await SecureStorageHelper.saveCredentials(email: email, password: password);
   await _createAndSaveDraftOrderId(email: email, note: "cart", currency: "EGP", key: Constants.cartDraftOrderId);
   await  _createAndSaveDraftOrderId(email: email, note: "favorite", currency: "EGP", key:  Constants.favDraftOrderId);

    final fav=await SecureStorageHelper.getDraftOrderId(key: Constants.favDraftOrderId);
    final cart= await SecureStorageHelper.getDraftOrderId(key: Constants.cartDraftOrderId);
    print("draftorderids!!!: $fav :: $cart");
    print("saveCredentials: ${await SecureStorageHelper.getEmail()},password: ${await SecureStorageHelper.getEmail()}");
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
        [  LineItemEntity(title: "test product", quantity: 1, price: "30", sku: "test.png"),],

        ),
      );
      return draftOrder;
    } catch (e) {
      final apiError = parseApiError(e);
      print("draft order creation  failure${apiError.errorMessage}");
      return ApiResult.failure(apiError.errorMessage);
    }
  }
  Future<void> _createAndSaveDraftOrderId({
    required String email,
    required String note,
    required String currency,
    required String key,
  }) async {
    final result = await createDraftOrder(email: email, note: note, currency: currency);
    switch (result) {
      case Success(:final data):
        await SecureStorageHelper.saveDraftOrderId(key: key, draftOrderId: data.id.toString());
        break;
      case Failure(:final message):
        print("Failed to create draft order: $message");
        break;
    }
  }

}
