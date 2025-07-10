import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/extenstions/context_extenstion.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({super.key, required this.text, required this.onTap, this.width, this.height});
final String text;
final VoidCallback onTap;
final double? width;
final double? height;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth:width?? double.infinity,
      height: height??35.h,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.r),
      ),
      onPressed: onTap,
      color: context.colorScheme.secondary,
      child: Text(
        text,
        style: context.textTheme.titleSmall?.copyWith(
          color: context.colorScheme.onPrimary,
          fontSize: 18.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
