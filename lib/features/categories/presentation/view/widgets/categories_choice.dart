import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/extenstions/context_extenstion.dart';
import 'package:store_app/features/categories/presentation/controller/category_products_controller.dart';

import '../../../../../core/di/injection_container.dart';
import '../../../../../core/networking/api_result.dart';
import '../../../domain/entities/category.dart';
import '../../controller/categories_controller.dart';

class CategoriesChoice extends ConsumerWidget {
  const CategoriesChoice({super.key});
@override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(categoriesControllerProvider);
  final selected = ref.watch(selectedCategoryProvider);

  return controller.when(
      data: (result) {
        switch (result) {
          case Success(:final data):
            if (selected == null) {
              WidgetsBinding.instance.addPostFrameCallback((_) {
                ref.watch(selectedCategoryProvider.notifier).state = data[0];
              });
            }
            if (data.isEmpty) return const Text("No categories available");
            return SegmentedButton<CategoryEntity>(
              segments:
                  data
                      .map(
                        (category) => ButtonSegment(
                          value: category,
                          label: Text(
                            category.title,
                            style: TextStyle(
                              fontSize: 14.sp,
                              overflow: TextOverflow.ellipsis,
                            ),
                            maxLines: 1,
                          ),
                        ),
                      )
                      .toList(),
              selected: selected != null ? {selected} : {data[0]},
             emptySelectionAllowed: true,
              onSelectionChanged: (Set<CategoryEntity> newSelection) {

                final selected = newSelection.first;
               ref.read(selectedCategoryProvider.notifier).state = selected;
              },
              style: ButtonStyle(
                side: MaterialStateProperty.resolveWith((states) {
                  return BorderSide(
                    color: context.colorScheme.outlineVariant,
                    width: 1,
                  );
                }),

                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                ),
              ),
            );
          case Failure(:final message):
            return Center(child: Text("Error: $message"));

          default:
            return const Center(child: Text("Unknown state"));
        }
      },
      loading: () => const CircularProgressIndicator(),
      error: (e, _) => Text('Unexpected error: $e'),
    );
  }
}
