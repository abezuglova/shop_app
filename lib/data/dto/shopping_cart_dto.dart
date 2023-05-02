part of 'dto.dart';

@freezed
class ShoppingCartDTO with _$ShoppingCartDTO {
  factory ShoppingCartDTO({
    required int id,
    required List<ShoppingCartItemDTO> products,
  }) = _ShoppingCartDTO;

  factory ShoppingCartDTO.fromJson(Map<String, dynamic> json) =>
      _$ShoppingCartDTOFromJson(json);
}
