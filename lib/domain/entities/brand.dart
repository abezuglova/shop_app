part of 'entities.dart';

@freezed
class Brand with _$Brand {
  factory Brand({
    required String name,
    required String logo,
  }) = _Brand;

  factory Brand.fromJson(Map<String, dynamic> json) => _$BrandFromJson(json);
}
