import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/extenstions/context_extenstion.dart';
import 'package:store_app/core/extenstions/widget_extenstion.dart';
import 'package:store_app/features/base/presentation/view/widgets/default_Button.dart';
import 'package:store_app/features/home/presentation/view/widgets/custom_cursor_Image.dart';
import 'package:store_app/features/home/presentation/view/widgets/product_colors_list.dart';
import 'package:store_app/features/home/presentation/view/widgets/product_size_list.dart';
import '../../../domain/entity/product.dart';

class ProductInfoScreen extends StatelessWidget {
  const ProductInfoScreen({super.key, required this.product});

  final ProductEntity product;

  @override
  Widget build(BuildContext context) {
    final sizeOption = product.options.firstWhere((opt) => opt.name == "Size");
    final colorOption = product.options.firstWhere(
      (opt) => opt.name == "Color",
    );

    final showInRow =
        sizeOption.values.length <= 4 && colorOption.values.length <= 4;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product Details"),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.favorite_outline)),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomCursorImage(images: product.images),
                  Padding(
                    padding: EdgeInsets.all(20.0.r),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          product.title.split("|").last.trim(),
                          style: context.textTheme.titleSmall?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10.h),
                        Row(
                          children: [
                            Text(
                            "${product.variants?[0].price} EG",
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
                                  flex:2,
                                  child: ProductSizeList(
                                    options: product.options,
                                  ),
                                ),
                                Expanded(
                                  child: ProductColorsList(
                                    options: product.options,
                                  ),
                                ),
                              ],
                            )
                            : Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ProductSizeList(options: product.options),
                                SizedBox(height: 10.h),
                                ProductColorsList(options: product.options),
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
                          product.description,
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
}
