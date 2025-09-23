import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:store_app/core/networking/api_result.dart';
import 'package:store_app/features/base/domain/entity/draft_order_entity.dart';
import 'package:store_app/features/cart/presentation/controller/cart_controller.dart';
import 'package:store_app/features/cart/presentation/view/widgets/cart_item.dart';
import 'package:store_app/features/home/domain/entity/product.dart';
import 'package:store_app/features/home/presentation/controller/products/products_controller.dart';

class ShoppingCartList extends ConsumerWidget {
  const ShoppingCartList({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productAsync= ref.watch(cartControllerProvider);
final cartNotifier= ref.watch(cartControllerProvider.notifier);
final allProductsAsync= ref.watch(productsControllerProvider());
    final productsResult = allProductsAsync.maybeWhen(
      data: (result) => result,
      orElse: () => null,
    );
    return productAsync.when(
    data: (result) {
      switch(result){
        case Success(:final data):
          if (data.lineItems.length<=1) {
            return const Center(child: Text("No Cart items found."));
          }
         return  ListView.builder(
              itemCount:data.lineItems.length-1 ,
              itemBuilder: (context,index) {
                final item = data.lineItems[index+1];
                return  Dismissible(
    key: ValueKey(item.id),
    direction: DismissDirection.endToStart,
    background: Container(
      color: Colors.red,
      alignment: Alignment.centerRight,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: const Icon(Icons.delete, color: Colors.white),
    ),
    onDismissed: (_) async {
      if (productsResult is Success<List<ProductEntity>>) {
        final products = productsResult.data;
        final product = products.firstWhere(
              (p) => p.id == item.productId,
          orElse: () => throw Exception("Product not found"),
        );
        final matchedVariant = product.variants?.firstWhere(
              (v) => v.id == item.variantId,
          orElse: () => throw Exception("Variant not found"),
        );

        if (matchedVariant == null) {
          debugPrint("❌ No matching variant found for variantId=${item.variantId}");
          return;
        }
        await cartNotifier.removeProductFromCart(
          lineItemList: data.lineItems,
          cartDraftOrderId: await cartNotifier.getCartDraftOrderId() ?? "",
          product: product,
          variantId: matchedVariant.id,
        );
      }
    },
    child: CartItem(lineItemEntity:data.lineItems[index+1])
);

      }

      );
        case Failure(:final message):
          return Center(child: Text("Error: $message"));

        default:
          return const Center(child: Text("Unknown state"));
      }
    },
        error: (_,error)=>Center(child: Text(error.toString()),),
        loading:()=> const Center(child: CircularProgressIndicator(),));

  }
}
