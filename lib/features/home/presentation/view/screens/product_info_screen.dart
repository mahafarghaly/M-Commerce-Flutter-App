import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/extenstions/context_extenstion.dart';
import 'package:store_app/core/extenstions/widget_extenstion.dart';
import 'package:store_app/core/utils/constants.dart';
import 'package:store_app/features/base/helpers/base_view.dart';
import 'package:store_app/features/base/helpers/secure_storge_helper.dart';
import 'package:store_app/features/base/presentation/view/widgets/default_Button.dart';
import 'package:store_app/features/favorites/presentation/controller/favorite_controller.dart';
import 'package:store_app/features/home/presentation/view/widgets/custom_cursor_Image.dart';
import 'package:store_app/features/home/presentation/view/widgets/product_colors_list.dart';
import 'package:store_app/features/home/presentation/view/widgets/product_size_list.dart';
import '../../../../../core/networking/api_result.dart';
import '../../../domain/entity/product.dart';

class ProductInfoScreen extends ConsumerStatefulWidget {
  const ProductInfoScreen({super.key,  required this.product});

  final ProductEntity product;

  @override
  ConsumerState<ProductInfoScreen> createState() => _ProductInfoScreenState();
}

class _ProductInfoScreenState extends ConsumerState<ProductInfoScreen>
    with BaseView {
  bool isInFavorite = false;

  @override
  void initState() {
    super.initState();
    _loadFavoriteDraftOrder();
  }

  Future<void> _loadFavoriteDraftOrder() async {
    final favoriteDraftOrderId = await SecureStorageHelper.getDraftOrderId(
      key: Constants.favDraftOrderId,
    );
    if (favoriteDraftOrderId != null) {
      final result = await ref
          .read(favoriteControllerProvider.notifier)
          .getFavDraftOrderById(draftOrderId: int.parse(favoriteDraftOrderId));
      switch (result) {
        case Success(:final data):
          final exists = data.lineItems.any(
            (item) => item.productId == widget.product.id,
          );
          if (exists) {
            setState(() {
              isInFavorite = true;
            });
          }
          break;
        case Failure(:final message):
          debugPrint("Error fetching draft order: $message");
          showToastMessage(message: message, context: context);
          break;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final sizeOption = widget.product.options.firstWhere(
      (opt) => opt.name == "Size",
    );
    final colorOption = widget.product.options.firstWhere(
      (opt) => opt.name == "Color",
    );

    final showInRow =
        sizeOption.values.length <= 4 && colorOption.values.length <= 4;


    return Scaffold(
      appBar: AppBar(
        title: const Text("Product Details"),
        actions: [
          IconButton(
            onPressed: _handleFavoriteToggle,
            icon: Icon(
              isInFavorite ? Icons.favorite_rounded : Icons.favorite_outline,
              color: isInFavorite ? Colors.red : Colors.grey,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomCursorImage(images: widget.product.images),
                  Padding(
                    padding: EdgeInsets.all(20.0.r),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.product.title.split("|").last.trim(),
                          style: context.textTheme.titleSmall?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10.h),
                        Row(
                          children: [
                            Text(
                              "${widget.product.variants?[0].price} EG",
                              style: context.textTheme.titleSmall?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Spacer(),
                            RatingBarIndicator(
                              rating: 3.5,
                              itemBuilder:
                                  (context, index) => Icon(
                                    Icons.star,
                                    color:
                                        context.colorScheme.onTertiaryContainer,
                                  ),
                              itemCount: 5,
                              itemSize: 30.0,
                              direction: Axis.horizontal,
                            ),
                          ],
                        ),
                        Text(
                          "Available Sizes and Colors",
                          style: context.textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: context.colorScheme.primary.withOpacity(0.5),
                            fontSize: 20.sp,
                          ),
                        ).paddingVertical(10.h),
                        showInRow
                            ? Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: ProductSizeList(
                                    options: widget.product.options,
                                  ),
                                ),
                                Expanded(
                                  child: ProductColorsList(
                                    options: widget.product.options,
                                  ),
                                ),
                              ],
                            )
                            : Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ProductSizeList(
                                  options: widget.product.options,
                                ),
                                SizedBox(height: 10.h),
                                ProductColorsList(
                                  options: widget.product.options,
                                ),
                              ],
                            ),
                        Text(
                          "Details",
                          style: context.textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: context.colorScheme.primary.withOpacity(0.5),
                            fontSize: 20.sp,
                          ),
                        ).paddingTop(10.h),
                        Text(
                          widget.product.description,
                          style: context.textTheme.bodyLarge?.copyWith(
                            fontSize: 16.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.w,
              right: 16.w,
              bottom: 16.h,
              top: 8.h,
            ),
            child: DefaultButton(text: "Check Out", onTap: () {}),
          ),
        ],
      ),
    );
  }

  Future<void> _handleFavoriteToggle() async {
    final favController = ref.read(favoriteControllerProvider.notifier);
    final favoriteDraftOrderId = await favController.getFavoriteDraftOrderId();
    if (favoriteDraftOrderId == null) return;
    final result = await favController.getFavDraftOrderById(
      draftOrderId: int.parse(favoriteDraftOrderId),
    );

    switch (result) {
      case Success(:final data):
        final exists = favController.isProductInFavorites(data, widget.product);
        if (!exists) {
          await favController.addProductToFavorites(
            lineItemList: data.lineItems,
            favoriteDraftOrderId: favoriteDraftOrderId,
            product: widget.product,
            showToast: () {
              showToastMessage(message: "Added To Favorite", context: context);
            },
            updateFavButtonColor: () {
              setState(() => isInFavorite = true);
            },
          );
        } else {
          await favController.removeProductFromFavorites(
            lineItemList: data.lineItems,
            favoriteDraftOrderId: favoriteDraftOrderId,
            product: widget.product,
            showToast: () {
              showToastMessage(
                message: "Removed from Favorite",
                context: context,
              );
            }, updateFavButtonColor: () {
            setState(() => isInFavorite = false);
          },
          );
        }
        break;

      case Failure(:final message):
        debugPrint("Error fetching draft order: $message");
        showToastMessage(message: message, context: context);
        break;
    }
  }

}
