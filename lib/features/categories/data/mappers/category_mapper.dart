import '../../domain/entities/category.dart';
import '../models/category_model.dart';

extension CategoryModelMapper on CategoryModel {
  CategoryEntity toEntity() {
    return CategoryEntity(
      id: id ?? 0,
      title: title ?? '',
      sortOrder: sortOrder ?? '',
    );
  }
}
