part of 'entities.dart';

@freezed
class ShoppingCart with _$ShoppingCart {
  factory ShoppingCart({
    required List<Product> products,
  }) = _ShoppingCart;

  factory ShoppingCart.fromJson(Map<String, dynamic> json) =>
      _$ShoppingCartFromJson(json);
}
