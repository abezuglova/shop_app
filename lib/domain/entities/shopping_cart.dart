part of 'entities.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class ShoppingCart with _$ShoppingCart {
  factory ShoppingCart({
    required int id,
    required List<ShoppingCartItem> products,
    required double generalPrice,
    required String discount,
    required double generalDiscount,
    required List<Product> recommendations,
  }) = _ShoppingCart;
}
