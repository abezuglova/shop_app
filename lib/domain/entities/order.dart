part of 'entities.dart';

@freezed
class Order with _$Order {
  factory Order() = _Order;

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);
}
