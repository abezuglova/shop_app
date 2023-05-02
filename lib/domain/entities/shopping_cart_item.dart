part of 'entities.dart';

@freezed
class ShoppingCartItem with _$ShoppingCartItem {
  factory ShoppingCartItem({
    required Product product,
    required int quantity,
  }) = _ShoppingCartItem;
}
