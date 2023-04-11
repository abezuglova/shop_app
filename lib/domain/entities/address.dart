part of 'entities.dart';

@freezed
class Address with _$Address {
  factory Address() = _Address;

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);
}
