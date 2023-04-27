part of 'entities.dart';

@freezed
class Category with _$Category {
  const factory Category({
    required String id,
    required String name,
    required List<Category> subcategories,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}
