part of 'entities.dart';

@freezed
class ShoppingCart with _$ShoppingCart {
  factory ShoppingCart({
    required List<Product> products,
    required List<Product> recommendations,
  }) = _ShoppingCart;
}
