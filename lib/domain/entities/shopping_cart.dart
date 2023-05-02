part of 'entities.dart';

@freezed
class ShoppingCart with _$ShoppingCart {
  factory ShoppingCart({
    required int id,
    required List<Product> products,
    required double generalPrice,
    required String discount,
    required double generalDiscount,
    required List<Product> recommendations,
  }) = _ShoppingCart;
}
