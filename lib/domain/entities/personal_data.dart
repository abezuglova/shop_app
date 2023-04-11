part of 'entities.dart';

@freezed
class PersonalData with _$PersonalData {
  factory PersonalData({
    required String name,
    required String phone,
    String? surname,
    DateTime? birthDateTime,
    String? email,
  }) = _PersonalData;

  factory PersonalData.fromJson(Map<String, dynamic> json) =>
      _$PersonalDataFromJson(json);
}
