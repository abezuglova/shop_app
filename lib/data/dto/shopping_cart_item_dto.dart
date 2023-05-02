// ignore_for_file: invalid_annotation_target

part of 'dto.dart';

@freezed
class ShoppingCartItemDTO with _$ShoppingCartItemDTO {
  factory ShoppingCartItemDTO({
    @JsonKey(name: 'productId') required int id,
    @JsonKey(defaultValue: 0) required int quantity,
  }) = _ShoppingCartItemDTO;

  factory ShoppingCartItemDTO.fromJson(Map<String, dynamic> json) =>
      _$ShoppingCartItemDTOFromJson(json);
}
