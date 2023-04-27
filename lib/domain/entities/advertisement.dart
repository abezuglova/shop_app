part of 'entities.dart';

@freezed
class Advertisement with _$Advertisement {
  factory Advertisement({
    required String name,
    required String description,
    required String image,
  }) = _Advertisement;
}
