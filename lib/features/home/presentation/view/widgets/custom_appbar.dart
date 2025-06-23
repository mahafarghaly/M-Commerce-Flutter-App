import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomHeader extends StatelessWidget {
  final String title;
  final List<Widget>? actions;

  const CustomHeader({
    super.key,
    required this.title,
    this.actions,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      color: Theme.of(context).appBarTheme.backgroundColor,
      child: Row(
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 25.sp,fontWeight: FontWeight.bold),
          ),
          Spacer(),
          if (actions != null) ...actions!,
        ],
      ),
    );
  }
}
