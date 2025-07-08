import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/features/home/domain/entity/product.dart';
import 'package:store_app/features/home/presentation/view/widgets/product_size_item.dart';
import '../../../../../core/di/injection_container.dart';

class ProductSizeList extends ConsumerWidget {
  const ProductSizeList({super.key, required this.options});

  final List<OptionEntity> options;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = ref.watch(selectedSizeIndexProvider);
    final sizeOption = options.firstWhere((opt) => opt.name == "Size");
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 40.h,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder:
                (context, index) => ProductSizeItem(
                  isSelected: index == selectedIndex,
                  onTap: () {
                    ref.read(selectedSizeIndexProvider.notifier).state = index;
                  },
                  label: sizeOption.values[index],
                ),
            itemCount: sizeOption.values.length,
            separatorBuilder:
                (BuildContext context, int index) => SizedBox(width: 5.w),
          ),
        ),
      ],
    );
  }
}
