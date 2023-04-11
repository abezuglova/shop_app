part of 'entities.dart';

@freezed
class Profile with _$Profile {
  factory Profile({
    required PersonalData personalData,
    required int bonusPoints,
    required int level,
    List<Order>? myOrders,
    List<Address>? myAddresses,
    List<PaymentMethod>? myPaymentMethods,
  }) = _Profile;

  factory Profile.fromJson(Map<String, dynamic> json) =>
      _$ProfileFromJson(json);
}
