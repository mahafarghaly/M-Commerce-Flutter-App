import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/extenstions/context_extenstion.dart';
import 'package:store_app/core/utils/app_navigation.dart';
import '../../../domain/entity/brand.dart';
import '../screens/brand_products_screen.dart';

class BrandItem extends StatelessWidget {
  final Brand brand;

  const BrandItem({super.key, required this.brand});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        AppNavigation.navigationTo(
          context,
          BrandProductsScreen(brantName: brand.title!),
        );
      },
      child: Container(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          color: context.colorScheme.onPrimary,
          border: Border.all(
            color: context.colorScheme.primary.withOpacity(0.1),
            width: 2.0,
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: CachedNetworkImage(
                imageUrl: brand.imageUrl!,
                fit: BoxFit.fill,
                height: double.infinity,
                width: double.infinity,
                progressIndicatorBuilder:
                    (context, url, downloadProgress) => Center(
                      child: CircularProgressIndicator(
                        value: downloadProgress.progress,
                        color: context.colorScheme.secondary,
                      ),
                    ),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(top: 5.h, bottom: 10.h),
              child: Text(
                brand.title ?? "",
                style: context.textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
