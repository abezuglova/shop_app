part of 'entities.dart';

@freezed
class Product with _$Product {
  const factory Product({
    required int id,
    required String name,
    required List<String> images,
    required int discount,
    required String amount,
    required String description,
    required String characteristics,
    required String reviews,
    required String brand,
    required double oldPrice,
    required double newPrice,
    required List<Product> recommendations,
  }) = _Product;
}
