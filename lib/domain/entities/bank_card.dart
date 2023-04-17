part of 'entities.dart';

@freezed
class BankCard with _$BankCard {
  factory BankCard() = _BankCard;

  factory BankCard.fromJson(Map<String, dynamic> json) =>
      _$BankCardFromJson(json);
}
