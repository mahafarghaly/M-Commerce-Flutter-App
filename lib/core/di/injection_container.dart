import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../features/categories/domain/entities/category.dart';

final selectedSizeIndexProvider = StateProvider<int>((ref) => 0);
final selectedColorIndexProvider = StateProvider<int>((ref) => 0);
final selectedCategoryProvider = StateProvider<CategoryEntity?>((ref) => null);


