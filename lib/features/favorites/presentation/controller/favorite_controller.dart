import 'dart:ui';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:store_app/features/base/domain/entity/draft_order_entity.dart';
import 'package:store_app/features/base/domain/usecases/get_draft_order_by_id_usecase.dart';
import 'package:store_app/features/base/domain/usecases/update_draft_order_usecase.dart';
import '../../../../core/di/injection_container.dart';
import '../../../../core/di/service_locator.dart';
import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../../../../core/utils/constants.dart';
import '../../../base/helpers/secure_storge_helper.dart';
import '../../../home/domain/entity/product.dart';

part 'favorite_controller.g.dart';

@riverpod
class FavoriteController extends _$FavoriteController {
  final getUseCase = sl<GetDraftOrderByIdUseCase>();
  final updateUseCase = sl<UpdateDraftOrderUseCase>();

  @override
  Future<ApiResult<DraftOrderEntity>?> build()async {
    final draftOrderId= await  SecureStorageHelper.getDraftOrderId(key: Constants.favDraftOrderId);
    return getFavDraftOrderById(draftOrderId:int.parse(draftOrderId??"") ) ;
  }

  Future<ApiResult<DraftOrderEntity>> getFavDraftOrderById({
    required int draftOrderId,
  }) async {
    try {
      return await getUseCase.getDraftOrderById(id: draftOrderId);
    } catch (e) {
      final apiError = parseApiError(e);
      return ApiResult.failure(apiError.errorMessage);
    }
  }

  Future<ApiResult<DraftOrderEntity>> updateFavoriteLineItems({
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

  Future<String?> getFavoriteDraftOrderId()async {
    return await SecureStorageHelper.getDraftOrderId(key: Constants.favDraftOrderId);
  }

  bool isProductInFavorites(
    DraftOrderEntity draftOrder,
    ProductEntity product,
  ) {
    return draftOrder.lineItems.any((item) => item.productId == product.id);
  }

  Future<void> addProductToFavorites({
    required DraftOrderEntity draftOrder,
    required String favoriteDraftOrderId,
    required ProductEntity product,
    required VoidCallback showToast,
    required VoidCallback updateFavButtonColor,
  }) async {
    final favController = ref.read(favoriteControllerProvider.notifier);

    final sizeOption = product.options.firstWhere((opt) => opt.name == "Size");
    final colorOption = product.options.firstWhere(
      (opt) => opt.name == "Color",
    );

    final selectedSize = sizeOption.values[ref.read(selectedSizeIndexProvider)];
    final selectedColor =
        colorOption.values[ref.read(selectedColorIndexProvider)];

    final updatedLineItems = List.of(draftOrder.lineItems)..add(
      LineItemEntity(
        productId: product.id,
        variantId: product.variants?.first.id,
        quantity: 1,
        properties: [
          PropertyEntity(name: "Size", value: selectedSize),
          PropertyEntity(name: "Color", value: selectedColor),
          PropertyEntity(name: "Image", value: product.images.first.src),
        ],
      ),
    );

    await favController.updateFavoriteLineItems(
      draftOrderId: int.parse(favoriteDraftOrderId),
      lineItems: updatedLineItems,
    );
    updateFavButtonColor();
    showToast();
  }

  Future<void> removeProductFromFavorites({
    required DraftOrderEntity draftOrder,
    required String favoriteDraftOrderId,
    required ProductEntity product,
    required VoidCallback showToast,
    required VoidCallback updateFavButtonColor,
  }) async {
    final favController = ref.read(favoriteControllerProvider.notifier);

    final updatedLineItems = List.of(draftOrder.lineItems)..removeWhere(
      (item) =>
          item.productId == product.id &&
          item.variantId == product.variants?.first.id,
    );

    await favController.updateFavoriteLineItems(
      draftOrderId: int.parse(favoriteDraftOrderId),
      lineItems: updatedLineItems,
    );
    updateFavButtonColor();
    showToast();
  }
}
