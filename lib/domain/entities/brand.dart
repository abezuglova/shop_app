part of 'entities.dart';

@freezed
class Brand with _$Brand {
  const factory Brand({
    required String name,
    required String logo,
  }) = _Brand;
}
