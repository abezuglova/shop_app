part of 'entities.dart';

@freezed
class Category with _$Category {
  factory Category({
    required String name,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}
