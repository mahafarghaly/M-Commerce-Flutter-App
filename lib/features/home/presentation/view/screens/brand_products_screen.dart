import 'package:flutter/material.dart';
import 'package:store_app/features/base/presentation/view/widgets/product_item.dart';
import 'package:store_app/features/home/presentation/view/widgets/products_list.dart';

class BrandProductsScreen extends StatelessWidget {
  const BrandProductsScreen({super.key, required this.brantName});
final String brantName;
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar:AppBar(title: Text(brantName),),
      body:ProductsList(vendor:brantName)
      
    );
  }
}
