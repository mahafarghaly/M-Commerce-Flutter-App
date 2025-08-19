import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/extenstions/context_extenstion.dart';
import 'package:store_app/core/networking/api_result.dart';
import 'package:store_app/core/utils/app_assets.dart';
import 'package:store_app/core/utils/app_navigation.dart';
import 'package:store_app/features/base/domain/entity/draft_order_entity.dart';
import 'package:store_app/features/base/helpers/base_view.dart';
import 'package:store_app/features/home/domain/entity/product.dart';
import 'package:store_app/features/home/presentation/view/screens/product_info_screen.dart';

import '../../../../../core/utils/constants.dart';
import '../../../../base/helpers/secure_storge_helper.dart';
import '../../../../favorites/presentation/controller/favorite_controller.dart';

class ProductItem extends ConsumerWidget with BaseView {
  const ProductItem({super.key, required this.product});

  final ProductEntity product;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favState = ref.watch(favoriteControllerProvider);
    final isInFavorite = favState.maybeWhen(
      data: (result) {
        if (result is Success<DraftOrderEntity>) {
          return ref
              .watch(favoriteControllerProvider.notifier)
              .isProductInFavorites(result.data, product);
        }
        return false;
      },
      orElse: () => false,
    );
    return InkWell(
      onTap: () {
        AppNavigation.navigationTo(
          context,
          ProductInfoScreen(product: product),
        );
      },
      child: Container(
        width: 200.w,
        height: 220.h,
        decoration: BoxDecoration(
          color: context.colorScheme.secondary.withOpacity(0.3),
          borderRadius: BorderRadius.circular(16.r),
        ),

        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: Container(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.only(
                    bottomStart: Radius.circular(20.r),
                    bottomEnd: Radius.circular(20.r),
                  ),
                ),
                child: CachedNetworkImage(
                  imageUrl: product.images[0].src,
                  fit: BoxFit.fill,
                  height: 100,
                  width: 100,
                  progressIndicatorBuilder:
                      (context, url, downloadProgress) => Center(
                        child: CircularProgressIndicator(
                          value: downloadProgress.progress,
                          color: context.colorScheme.secondary,
                        ),
                      ),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ),
            ),
            SizedBox(height: 5.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0.w),
              child: Text(
                product.title.split('|').last.trim(),
                style: context.textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.sp,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(
                start: 16.w,
                end: 16.w,
                bottom: 10.h,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,

                children: [
                  Expanded(
                    child: Text(
                      "${(product.variants?.isNotEmpty ?? false) ? product.variants![0].price : 0} EG",
                      style: context.textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ),
                  IconButton(
                    onPressed: () async {
                      final favController = ref.read(
                        favoriteControllerProvider.notifier,
                      );
                      final favId =
                          await favController.getFavoriteDraftOrderId();
                      final favDraftOrder = await favController
                          .getFavDraftOrderById(
                            draftOrderId: int.parse(favId ?? ""),
                          );

                      if (favDraftOrder is Success<DraftOrderEntity>) {
                        final draftOrder = favDraftOrder.data;
                        if (isInFavorite) {
                          await favController.removeProductFromFavorites(
                            lineItemList: draftOrder.lineItems,
                            favoriteDraftOrderId: favId ?? "",
                            product: product,
                            showToast: () {
                              showToastMessage(
                                message: "Removed from Favorite",
                                context: context,
                              );
                            },
                          );
                        } else {
                          await favController.addProductToFavorites(
                            lineItemList: draftOrder.lineItems,
                            favoriteDraftOrderId: favId ?? "",
                            product: product,
                            showToast: () {
                              showToastMessage(
                                message: "Added to Favorite",
                                context: context,
                              );
                            },
                          );
                        }
                      }
                    },
                    icon: Icon(
                      isInFavorite
                          ? Icons.favorite_rounded
                          : Icons.favorite_outline,
                      color: isInFavorite ? Colors.red : Colors.grey,
                      size: 28.sp,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
