import 'package:flutter/material.dart';
import 'package:store_app/features/base/presentation/view/widgets/product_item.dart';

class BrandProductsScreen extends StatelessWidget {
  const BrandProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar:AppBar(),
      body: Center(
        child: ProductItem(),
      ),
    );
  }
}
