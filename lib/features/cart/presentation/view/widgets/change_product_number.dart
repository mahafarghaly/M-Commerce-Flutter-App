import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/extenstions/context_extenstion.dart';
import 'package:store_app/core/extenstions/widget_extenstion.dart';
import '../../controller/cart_quantity_controller.dart';

class ChangeProductNumber extends ConsumerWidget {
  const ChangeProductNumber({
    super.key,
    required this.maxQuantity,
    required this.variantId,
  });

  final int maxQuantity;
  final int variantId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final quantity = ref.watch(cartQuantityProvider.select(
          (map) => map[variantId] ?? 1,
    ));

    return Row(
      children: [
        ElevatedButton(
          onPressed: () {
            if (quantity <= maxQuantity) {
              ref.read(cartQuantityProvider.notifier).increase(variantId, maxQuantity);
            }
          },
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0.r),
            ),
          ),
          child: const Icon(Icons.add),
        ),
        Text(
          "$quantity",
          style: context.textTheme.titleSmall,
        ).paddingHorizontal(10.w),
        ElevatedButton(
          onPressed: () {
            if (quantity > 1) {
              ref.read(cartQuantityProvider.notifier).decrease(variantId);
            }
          },
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0.r),
            ),
          ),
          child: const Icon(Icons.remove),
        ),
      ],
    );
  }
}
