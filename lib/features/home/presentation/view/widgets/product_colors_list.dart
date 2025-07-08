import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/di/injection_container.dart';
import 'package:store_app/features/home/presentation/view/widgets/product_color_item.dart';
import '../../../../../core/utils/color_parser.dart';
import '../../../domain/entity/product.dart';

class ProductColorsList extends ConsumerWidget {
  const ProductColorsList( {super.key,required this.options});

  final List<OptionEntity> options;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = ref.watch(selectedColorIndexProvider);
    final colorOption = options.firstWhere((opt) => opt.name == "Color");

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 40.h,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder:
                (context, index) =>
                ProductColorItem(
                  isSelected: index== selectedIndex,
                  onTap: (){
                    ref.read(selectedColorIndexProvider.notifier).state = index;
                  },
                  color: ColorParser.fromName(colorOption.values[index]),),
            itemCount: colorOption.values.length,
            separatorBuilder:
                (BuildContext context, int index) => SizedBox(width: 5.w),
          ),
        ),
      ],
    );
  }
}