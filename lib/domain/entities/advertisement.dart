part of 'entities.dart';

@freezed
class Advertisement with _$Advertisement {
  factory Advertisement() = _Advertisement;

  factory Advertisement.fromJson(Map<String, dynamic> json) =>
      _$AdvertisementFromJson(json);
}
