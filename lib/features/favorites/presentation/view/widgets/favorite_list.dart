import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:store_app/features/favorites/presentation/controller/favorite_controller.dart';
import 'package:store_app/features/favorites/presentation/view/widgets/favorite_item.dart';
import '../../../../../core/networking/api_result.dart';
class FavoriteList extends ConsumerWidget {
  const FavoriteList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productsAsync= ref.watch(favoriteControllerProvider);;
    return productsAsync.when(
      data: (result) {
        switch (result) {
          case Success(:final data):
            if (data.lineItems.length<=1) {
              return const Center(child: Text("No brands found."));
            }
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: GridView.builder(
                itemCount: data.lineItems.length-1,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: 3 / 4,
                ),
                itemBuilder: (context, index) {
                  return FavoriteItem(lineItemEntity: data.lineItems[index+1]);
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
      loading: () => const Center(child: CircularProgressIndicator()),
    );
  }

}
