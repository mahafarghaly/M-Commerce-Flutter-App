import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/extenstions/widget_extenstion.dart';

import '../../../../base/presentation/view/widgets/custom_appbar.dart';
import '../widgets/categories_choice.dart';
import '../widgets/category_products_list.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Column(
      children: [
        CustomHeader(
          title: "Categories",
          actions: [
            IconButton(icon: const Icon(Icons.search), onPressed: () {}),
            IconButton(icon: const Icon(Icons.shopping_cart_outlined), onPressed: () {}),
          ],
        ),
        const CategoriesChoice().paddingAll(16.sp),
       const Expanded(child: CategoryProductsList()),
      ],
    ));
  }
}
