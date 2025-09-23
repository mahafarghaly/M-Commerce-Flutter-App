import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/extenstions/context_extenstion.dart';
import 'package:store_app/core/extenstions/widget_extenstion.dart';
import 'package:store_app/features/base/domain/entity/draft_order_entity.dart';
import 'package:store_app/features/cart/presentation/view/widgets/change_product_number.dart';
import 'package:store_app/features/home/presentation/controller/products/products_controller.dart';

import '../../../../../core/networking/api_result.dart';
import '../../../../home/domain/entity/product.dart';

class CartItem extends ConsumerWidget {
  const CartItem({super.key, required this.lineItemEntity});

  final LineItemEntity lineItemEntity;
  @override
  Widget build(BuildContext context, WidgetRef ref) {;
   final variantQuantity=ref.watch(productsControllerProvider().notifier).getVariantQuantity(productId: lineItemEntity.productId, variantId: lineItemEntity.variantId);
    print("!!!variantQuantity: $variantQuantity : ${lineItemEntity.productId}");

    return Padding(
      padding:  EdgeInsets.only(top:5.h,bottom: 5.h),
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(16.r),
        color: context.colorScheme.onPrimary),
        child: Column(
          children: [
            Row(
              children: [
                CachedNetworkImage(
                  imageUrl: lineItemEntity.properties?[2].value ?? "",
                  fit: BoxFit.fill,
                  height: 120.h,
                  width: 120.w,
                  progressIndicatorBuilder:
                      (context, url, downloadProgress) => Center(
                        child: CircularProgressIndicator(
                          value: downloadProgress.progress,
                          color: context.colorScheme.secondary,
                        ),
                      ),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
                SizedBox(width: 10.w,),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(lineItemEntity.title?.split("|").last.trim() ?? "",style: context.textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.bold
                      ),),
                      Text(
                        "SIZE: ${lineItemEntity.properties?[0].value ?? ""} / COLOR: ${(lineItemEntity.properties?[1].value ?? "").toUpperCase()}",
                        style: context.textTheme.titleSmall?.copyWith(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.bold,)
                      ),
                      Text("Price: ${lineItemEntity.price ?? "0"} EGP",style: context.textTheme.titleSmall?.copyWith(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                        color: context.colorScheme.secondary
                      ),),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding:  EdgeInsets.only(right: 16.w,left: 16.w,bottom: 16.h),
              child: ChangeProductNumber(maxQuantity: variantQuantity??0, variantId: lineItemEntity.variantId??0,),
            ),
          ],
        ),
      ),
    );
  }
}
