part of 'entities.dart';

@freezed
class PaymentMethod with _$PaymentMethod {
  factory PaymentMethod() = _PaymentMethod;

  factory PaymentMethod.fromJson(Map<String, dynamic> json) =>
      _$PaymentMethodFromJson(json);
}
