import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/extenstions/context_extenstion.dart';
import 'package:store_app/core/extenstions/widget_extenstion.dart';
import 'package:store_app/features/base/presentation/view/widgets/default_Button.dart';

import '../../../../../core/networking/api_result.dart';
import '../../../../base/domain/entity/draft_order_entity.dart';
import '../../controller/cart_controller.dart';
import '../widgets/shopping_cart_list.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Shopping Cart")),
      body: Column(
        children: [
          const Expanded(child: ShoppingCartList()),
          Container(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            height: 40.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.r),
              color: context.colorScheme.primaryContainer.withOpacity(0.3),
            ),
            child: Row(
              children: [
                Consumer(
                  builder: (
                    BuildContext context,
                    WidgetRef ref,
                    Widget? child,
                  ) {
                    final cartState = ref.watch(cartControllerProvider);
                    return cartState.when(
                      data: (apiResult) {
                        double price = 0.0;
                        String? currency = "";

                        if (apiResult is Success<DraftOrderEntity>) {
                          final cart = ref.read(
                            cartControllerProvider.notifier,
                          );
                          price = cart.calculateTotalPrice(apiResult.data);
                          currency = cart.getCurrency(apiResult.data);
                        }

                        return _buildTotalText(context, price, currency ?? "");
                      },
                      loading: () => _buildTotalText(context, 0.0, ""),
                      error: (_, __) => _buildTotalText(context, 0.0, ""),
                    );
                  },
                ),
                Expanded(
                  child: DefaultButton(
                    text: 'Check out',
                    height: 40.h,
                    onTap: () {},
                  ),
                ),
              ],
            ),
          ),
        ],
      ).paddingAll(16.sp),
    );
  }

  Widget _buildTotalText(BuildContext context, double price, String currency) {
    return Expanded(
      child: Text(
        "Total: $price $currency",
        style: context.textTheme.titleSmall?.copyWith(
          fontWeight: FontWeight.bold,
          fontSize: 16.sp,
        ),
      ).paddingHorizontal(10.w),
    );
  }
}
