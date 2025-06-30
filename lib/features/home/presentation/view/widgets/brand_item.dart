import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/extenstions/context_extenstion.dart';
import '../../../data/models/brands/brand_model.dart';

class BrandItem extends StatelessWidget {
  final BrandModel brand;
  const BrandItem({super.key, required this.brand});

  @override
  Widget build(BuildContext context) {
    return  Container(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
          border: Border.all(
            color: context.colorScheme.primary.withOpacity(0.1),
            width: 2.0,
          ),

      ),
      child: Image.network(brand.brandImage!.src!,fit: BoxFit.fill),
    );
  }
}
