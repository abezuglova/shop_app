part of 'entities.dart';

@freezed
class Address with _$Address {
  factory Address({
    required String name,
    required String city,
    required String street,
    required String house,
    int? flat,
    int? entrance,
    int? floor,
    String? additionalInformation,
  }) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);
}
