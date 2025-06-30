import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/features/home/presentation/view/widgets/brand_item.dart';
import '../../../../../core/networking/api_result.dart';
import '../../controller/home_provider.dart';

class BrandsList extends ConsumerWidget {
  const BrandsList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final brandsAsync = ref.watch(brandProvider);
    return brandsAsync.when(
      error: (e, s) => SliverToBoxAdapter(child: Text("Error: $e")),
      loading:
          () => const SliverToBoxAdapter(
            child: Center(child: CircularProgressIndicator()),
          ),
      data: (result) {
        switch (result) {
          case Success(:final data):
            if (data.isEmpty) {
              return const SliverToBoxAdapter(child: Text("No brands found."));
            }
            return SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 16.r),
              sliver: SliverGrid(
                delegate: SliverChildBuilderDelegate((context, index) {
                  return BrandItem(brand: data[index]);
                }, childCount: data.length),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  childAspectRatio: 3 / 2.3,
                ),
              ),
            );
          case Failure(:final message):
            return SliverToBoxAdapter(child: Text("Error: $message"));

          default:
            return const SliverToBoxAdapter(child: Text("Unknown state"));
        }
      },
    );
  }
}
