part of 'entities.dart';

@freezed
class Bonuses with _$Bonuses {

  factory Bonuses({
    required int points,
    required int level,
  }) = _Bonuses;
}