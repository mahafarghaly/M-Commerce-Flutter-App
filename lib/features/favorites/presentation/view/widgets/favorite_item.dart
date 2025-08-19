import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/extenstions/context_extenstion.dart';
import 'package:store_app/core/utils/constants.dart';
import 'package:store_app/features/base/domain/entity/draft_order_entity.dart';
import 'package:store_app/features/base/helpers/base_view.dart';
import 'package:store_app/features/base/helpers/secure_storge_helper.dart';
import 'package:store_app/features/favorites/presentation/controller/favorite_controller.dart';
import 'package:store_app/features/home/domain/entity/product.dart';
import 'package:store_app/features/home/presentation/controller/products/products_controller.dart';

import '../../../../../core/networking/api_result.dart';
import '../../../../../core/utils/app_navigation.dart';
import '../../../../home/presentation/view/screens/product_info_screen.dart';
import 'package:collection/collection.dart';

class FavoriteItem extends ConsumerWidget with BaseView{
  const FavoriteItem( {super.key, required this.lineItemEntity,required this.draftOrderEntity,});

  final LineItemEntity lineItemEntity;
  final DraftOrderEntity draftOrderEntity;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productsAsync = ref.watch(productsControllerProvider());

    return productsAsync.when(
      data: (result) {
        switch (result) {
          case Success(:final data):
            final product = data.firstWhereOrNull(
                  (p) => p.id == lineItemEntity.productId,
            );

            if (product == null) {
              return const SizedBox.shrink();
            }

            return _buildItem(context, ref, product);
          case Failure(:final message):
            return Text("Error: $message");
          default:
            return const CircularProgressIndicator();
        }
      },
      error: (e, _) => Text("Error: $e"),
      loading: () => const Center(child: CircularProgressIndicator()),
    );
  }

  Widget _buildItem(BuildContext context, WidgetRef ref, ProductEntity product) {
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
                      imageUrl: lineItemEntity.properties?[2].value ?? "",
                      fit: BoxFit.fill,
                      height: 100,
                      width: 100,
                      progressIndicatorBuilder:
                          (context, url, downloadProgress) => Center(
                            child: CircularProgressIndicator(
                              value: downloadProgress.progress,
                              color:context.colorScheme.secondary,
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
                    lineItemEntity.title!.split('|').last.trim(),
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
                          "${lineItemEntity.price} EG",
                          style: context.textTheme.titleSmall?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                      ),
                      IconButton(
                        onPressed: () async{
                          final favController = ref.watch(favoriteControllerProvider.notifier);
                          final favId=await SecureStorageHelper.getDraftOrderId(key: Constants.favDraftOrderId);
                          favController.removeProductFromFavorites(lineItemList:draftOrderEntity.lineItems,
                              favoriteDraftOrderId: favId??"", product: product,
                            showToast: () {
                              showToastMessage(
                                message: "Removed from Favorite",
                                context: context,
                              );
                            },
                          );
                        },
                        icon: Icon(Icons.favorite,color: Colors.red, size: 28.sp),
                      ),
                    ],
                  ),
                ),
              ],
             )),
    );
  }

}
