import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/utils/app_assets.dart';

class BannerDisplay extends StatelessWidget {
  const BannerDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
    clipBehavior: Clip.antiAliasWithSaveLayer,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        image: DecorationImage(image:AssetImage(AppAssets.bannerDisplay,),fit: BoxFit.fill )
      ),
    );
  }
}
