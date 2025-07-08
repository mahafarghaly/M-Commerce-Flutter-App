import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/extenstions/context_extenstion.dart';

class ProductColorItem extends StatelessWidget {
  const ProductColorItem({super.key, required this.isSelected, required this.onTap, required this.color});
  final bool isSelected;
  final VoidCallback onTap;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 30.r,
        height: 30.r,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
          border:isSelected? Border.all(
            color: context.colorScheme.primary.withOpacity(0.4),
            width: 2,
          ):null,
        ),

      ),
    );
  }
}
