part of 'entities.dart';

@freezed
class ShoppingCart with _$ShoppingCart {
  factory ShoppingCart({
    required int id,
    required List<ShoppingCartItem> products,
    required double generalPrice,
    int? discount,
    required double generalDiscount,
    required List<Product> recommendations,
  }) = _ShoppingCart;
}
