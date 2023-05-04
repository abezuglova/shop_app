part of 'entities.dart';

@freezed
class Order with _$Order {
  factory Order({
    required int number,
    required String status,
    required int deliveryPrice,
    required Address deliveryAddress,
    required DateTime orderingDateTime,
    required DateTime deliveryDateTime,
    required PaymentMethod paymentMethod,
    required ShoppingCart shoppingCart,
    @Default(false) bool writeOffPoints,
    String? comment,
  }) = _Order;
}
