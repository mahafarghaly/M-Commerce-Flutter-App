import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:store_app/core/networking/api_result.dart';
import 'package:store_app/features/base/presentation/view/widgets/product_item.dart';
import 'package:store_app/features/home/presentation/controller/products/products_controller.dart';

class ProductsList extends ConsumerWidget {
  const ProductsList({super.key, required this.vendor});

  final String vendor;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productsAsync = ref.watch(productsControllerProvider(vendor));
    return productsAsync.when(
      data: (result) {
        switch (result) {
          case Success(:final data):
            if (data.isEmpty) {
              return const Center(child: Text("No brands found."));
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
      error: (error, s) => Center(child: Text(error.toString())),
      loading: () => Center(child: CircularProgressIndicator()),
    );
  }
}
