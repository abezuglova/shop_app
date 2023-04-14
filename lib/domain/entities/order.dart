part of 'entities.dart';

@freezed
class Order with _$Order {
  factory Order({
    required int number,
    required String status,
    required int productsNumber,
    required int generalDiscount,
    required int deliveryPrice,
    required int generalPrice,
    required List<Product> productList,
    required Address deliveryAddress,
    required DateTime orderingDateTime,
    required DateTime deliveryDateTime,
    required PaymentMethod paymentMethod,
    @Default(false) bool writeOffPoints,
    String? comment,
  }) = _Order;

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);
}
