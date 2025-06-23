import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/utils/app_assets.dart';

class BrandItem extends StatelessWidget {
  const BrandItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r)
      ),
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          Image.asset(AppAssets.testImage,fit: BoxFit.fill,),
          Text("Adidas")
        ],
      ),
    );
  }
}
