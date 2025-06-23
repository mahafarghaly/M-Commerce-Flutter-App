import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/features/home/presentation/view/widgets/brand_item.dart';

class BrandsList extends StatelessWidget {
   const BrandsList({super.key});
  @override
  Widget build(BuildContext context) {
    return  SliverPadding(
      padding:  EdgeInsets.symmetric(horizontal: 16.w),
      sliver: SliverGrid(
        delegate: SliverChildBuilderDelegate(
              (context, index) {
            return Card(
              child: Center(child: BrandItem()),
            );
          },
          childCount: 5, // set your real item count here
        ),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 3/ 2.5,
        ),
      ),
    );
  }
}
