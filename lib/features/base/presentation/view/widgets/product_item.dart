import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/extenstions/context_extenstion.dart';
import 'package:store_app/core/utils/app_assets.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.w,
      height: 220.h,
      decoration: BoxDecoration(
        color: context.colorScheme.secondary.withOpacity(0.3),
        borderRadius: BorderRadius.circular(16.r),
      ),

      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            flex: 3,
            child: Container(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadiusDirectional.only(
                  bottomStart: Radius.circular(20.r),
                  bottomEnd: Radius.circular(20.r),
                ),
              ),
              child: Image.asset(AppAssets.testImage, fit: BoxFit.fill),
            ),
          ),
          SizedBox(height: 5.h),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0.w),
              child: Text(
                "Adidas",
                style: context.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(
              start: 16.w,
              end: 16.w,
              bottom: 10.h,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,

              children: [
                Expanded(
                  child: Text(
                    "500 EG",
                    style: context.textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.favorite_outline, size: 28.sp),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
