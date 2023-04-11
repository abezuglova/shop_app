part of 'entities.dart';

@freezed
class ProductType with _$ProductType {
  factory ProductType({
    required String name,
    required List<Product> products,
  }) = _ProductType;

  factory ProductType.fromJson(Map<String, dynamic> json) =>
      _$ProductTypeFromJson(json);
}
