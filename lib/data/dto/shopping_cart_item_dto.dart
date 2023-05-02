// ignore_for_file: invalid_annotation_target

part of 'dto.dart';

@freezed
class ShoppingCartItemDTO with _$ShoppingCartItemDTO {
  factory ShoppingCartItemDTO({
    @JsonKey(defaultValue: -1) required int id,
    @JsonKey(defaultValue: 0) required int quantity,
  }) = _ShoppingCartItemDTO;

  factory ShoppingCartItemDTO.fromJson(Map<String, dynamic> json) =>
      _$ShoppingCartItemDTOFromJson(json);
}
