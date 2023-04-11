part of 'entities.dart';

@freezed
class Profile with _$Profile {
  factory Profile() = _Profile;

  factory Profile.fromJson(Map<String, dynamic> json) =>
      _$ProfileFromJson(json);
}
