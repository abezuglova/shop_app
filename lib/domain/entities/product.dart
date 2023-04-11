part of 'entities.dart';

@freezed
class Product with _$Product {
  factory Product() = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}
