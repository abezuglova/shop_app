part of 'entities.dart';

@freezed
class Subcategory with _$Subcategory {
  const factory Subcategory({
    required String name,
    required List<ProductType> productTypes,
  }) = _Subcategory;

  factory Subcategory.fromJson(Map<String, dynamic> json) =>
      _$SubcategoryFromJson(json);
}
