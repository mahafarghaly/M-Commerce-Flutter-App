import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/extenstions/context_extenstion.dart';

class ProductSizeItem extends StatelessWidget {
  const ProductSizeItem({super.key, required this.isSelected, required this.onTap, required this.label});
  final bool isSelected;
  final VoidCallback onTap;
  final String label;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 42.r,
        height: 42.r,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: context.colorScheme.secondary.withOpacity(0.2),
          border:isSelected? Border.all(
            color: context.colorScheme.primary.withOpacity(0.4),
            width: 2,
          ):null,
        ),
        child: Text(
         label,
          style: context.textTheme.titleSmall?.copyWith(
            fontWeight: FontWeight.w500,
            fontSize: 18.sp,
          ),
        ),
      ),
    );
  }
}
