part of 'entities.dart';

@freezed
class Order with _$Order {
  factory Order({
    required Address deliveryAddress,
    required DateTime deliveryDateTime,
    required PaymentMethod paymentMethod,
    @Default(false) bool writeOffPoints,
    String? comment,
  }) = _Order;

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);
}
