import 'dart:ui';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/di/injection_container.dart';
import '../../../../core/di/service_locator.dart';
import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../../../../core/utils/constants.dart';
import '../../../base/domain/entity/draft_order_entity.dart';
import '../../../base/domain/usecases/get_draft_order_by_id_usecase.dart';
import '../../../base/domain/usecases/update_draft_order_usecase.dart';
import '../../../base/helpers/secure_storge_helper.dart';
import '../../../home/domain/entity/product.dart';

part 'cart_controller.g.dart';

@riverpod
class CartController extends _$CartController {
  final getUseCase = sl<GetDraftOrderByIdUseCase>();
  final updateUseCase = sl<UpdateDraftOrderUseCase>();

  @override
  Future<ApiResult<DraftOrderEntity>> build() async {
    final draftOrderId = await getCartDraftOrderId();
    return getCartDraftOrderById(draftOrderId: int.parse(draftOrderId ?? ""));
  }

  Future<ApiResult<DraftOrderEntity>> getCartDraftOrderById({
    required int draftOrderId,
  }) async {
    try {
      return await getUseCase.getDraftOrderById(id: draftOrderId);
    } catch (e) {
      final apiError = parseApiError(e);
      return ApiResult.failure(apiError.errorMessage);
    }
  }

  Future<ApiResult<DraftOrderEntity>> updateCartLineItems({
    required int draftOrderId,
    required List<LineItemEntity> lineItems,
  }) async {
    try {
      final getResult = await getUseCase.getDraftOrderById(id: draftOrderId);
      if (getResult is Success<DraftOrderEntity>) {
        final existingDraftOrder = getResult.data;
        final updatedDraftOrder = existingDraftOrder.copyWith(
          lineItems: lineItems,
        );
        final updateResult = await updateUseCase.updateDraftOrder(
          id: draftOrderId,
          draftOrder: updatedDraftOrder,
        );

        return updateResult;
      } else if (getResult is Failure<DraftOrderEntity>) {
        return ApiResult.failure(getResult.message);
      } else {
        return const ApiResult.failure(
          "Unknown error while fetching draft order",
        );
      }
    } catch (e) {
      final apiError = parseApiError(e);
      return ApiResult.failure(apiError.errorMessage);
    }
  }

  Future<String?> getCartDraftOrderId() async {
    final result = await SecureStorageHelper.getDraftOrderId(
      key: Constants.cartDraftOrderId,
    );
    return result;
  }

  bool isProductInCart(DraftOrderEntity draftOrder, ProductEntity product) {
    //&&item.productId==product.id
    return draftOrder.lineItems.any((item) =>item.variantId ==product.variants?[ref.watch(selectedSizeIndexProvider)].id);
  }

  Future<void> addProductToCart({
    required List<LineItemEntity> lineItemList,
    required String cartDraftOrderId,
    required ProductEntity product,
    VoidCallback? showToast,
  }) async {
    final favController = ref.read(cartControllerProvider.notifier);

    final sizeOption = product.options.firstWhere((opt) => opt.name == "Size");
    final colorOption = product.options.firstWhere(
      (opt) => opt.name == "Color",
    );
    final selectedSize = sizeOption.values[ref.read(selectedSizeIndexProvider)];
    final selectedColor =
        colorOption.values[ref.read(selectedColorIndexProvider)];

    final updatedLineItems = List.of(lineItemList)..add(
      LineItemEntity(
        productId: product.id,
        variantId: product.variants?[ref.read(selectedSizeIndexProvider)].id,
        quantity: 1,
        properties: [
          PropertyEntity(name: "Size", value: selectedSize),
          PropertyEntity(name: "Color", value: selectedColor),
          PropertyEntity(name: "Image", value: product.images.first.src),
        ],
      ),
    );

    await favController.updateCartLineItems(
      draftOrderId: int.parse(cartDraftOrderId),
      lineItems: updatedLineItems,
    );
     state = AsyncValue.data(await getCartDraftOrderById(draftOrderId: int.parse(cartDraftOrderId)));
    if (showToast != null) showToast();
  }

  Future<void> removeProductFromCart({
    required List<LineItemEntity> lineItemList,
    required String cartDraftOrderId,
    required ProductEntity product,
    required int  variantId,
    VoidCallback? showToast,
  }) async {
    final cartController = ref.read(cartControllerProvider.notifier);
    final updatedLineItems = List.of(lineItemList)..removeWhere(
      (item) =>
          item.productId == product.id &&
         item.variantId == variantId,
             //product.variants?[ref.watch(selectedSizeIndexProvider)].id
    );

    final updatedDraftOrder = await cartController.updateCartLineItems(
      draftOrderId: int.parse(cartDraftOrderId),
      lineItems: updatedLineItems,
    );
    state = AsyncValue.data(updatedDraftOrder);
    if (showToast != null) showToast();
  }
  Future<bool> checkIfVariantInCart({
    required ProductEntity product,
  }) async {
    final cartDraftOrderId = await getCartDraftOrderId();

    if (cartDraftOrderId != null) {
      final result = await getCartDraftOrderById(draftOrderId: int.parse(cartDraftOrderId));

      if (result is Success<DraftOrderEntity>) {
        return isProductInCart(result.data, product);
      }
    }
    return false;
  }
  double calculateTotalPrice(DraftOrderEntity draftOrder) {
    double total = 0.0;

    for (final item in draftOrder.lineItems.skip(1)) {
      final price = double.tryParse(item.price ?? "0") ?? 0.0;
      total += price * (item.quantity ?? 1);
    }

    return total;
  }
String? getCurrency(DraftOrderEntity draftOrder){
return draftOrder.currency;
}
}
