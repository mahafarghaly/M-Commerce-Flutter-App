import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:store_app/features/categories/presentation/controller/categories_controller.dart';
import 'package:store_app/features/categories/presentation/controller/category_products_controller.dart';

import '../../../../../core/di/injection_container.dart';
import '../../../../../core/networking/api_result.dart';
import '../../../../home/presentation/view/widgets/product_item.dart';

class CategoryProductsList extends ConsumerWidget {
  const CategoryProductsList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selected = ref.watch(selectedCategoryProvider);
    if (selected == null) {
      return const Center(child: Text("select category you want"));
    }
    final productsAsync = ref.watch(categoryProductsControllerProvider(selected.id));
    return productsAsync.when(
      data: (result) {
        switch (result) {
          case Success(:final data):
            if (data.isEmpty) {
              return const Center(child: Text("No products found."));
            }
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: GridView.builder(
                itemCount: data.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: 3 / 4,
                ),
                itemBuilder: (context, index) {
                  return ProductItem(product: data[index]);
                },
              ),
            );
          case Failure(:final message):
            return Center(child: Text("Error: $message"));
          default:
            return const Center(child: Text("Unknown state"));
        }
      },
      error: (e, _) => Center(child: Text('Error: $e')),
      loading: () => const Center(child: CircularProgressIndicator()),
    );
  }
}
