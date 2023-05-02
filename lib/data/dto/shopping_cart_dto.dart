part of 'dto.dart';

@freezed
class ShoppingCartDTO with _$ShoppingCartDTO {
  factory ShoppingCartDTO({
    required int id,
    required List<ProductDTO> products,
  }) = _ShoppingCartDTO;

  factory ShoppingCartDTO.fromJson(Map<String, dynamic> json) =>
      _$ShoppingCartDTOFromJson(json);
}
