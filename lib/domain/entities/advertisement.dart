part of 'entities.dart';

@freezed
class Advertisement with _$Advertisement {
  const factory Advertisement({
    required int id,
    required String name,
    required String description,
    required String image,
  }) = _Advertisement;
}
