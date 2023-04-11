part of 'entities.dart';

@freezed
class Product with _$Product {
  factory Product({
    required String name,
    required String image,
    required String discount,
    required String amount,
    required String description,
    required String characteristics,
    required String reviews,
    required String brand,
    required String price,
    
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}
