import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/features/home/presentation/view/widgets/banner_display.dart';
import 'package:store_app/features/home/presentation/view/widgets/brand_item.dart';
import 'package:store_app/features/home/presentation/view/widgets/brands_list.dart';
import 'package:store_app/features/home/presentation/view/widgets/custom_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: CustomHeader(
              title: "Shopify",
              actions: [
                IconButton(icon: Icon(Icons.search), onPressed: () {}),
                IconButton(icon: Icon(Icons.shopping_cart_outlined), onPressed: () {}),
                IconButton(icon: Icon(Icons.favorite_outline), onPressed: () {}),
              ],
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(16.0),
            sliver: SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BannerDisplay(),
                  SizedBox(height: 20),
                  Text(
                    "Brands",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22.sp,
                    ),
                  ),
                ],
              ),
            ),
          ),
          BrandsList()
        ],
      ),
    );
  }
}
