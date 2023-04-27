part of 'dto.dart';

@freezed
class ProductDTO with _$ProductDTO {
  factory ProductDTO({
    required int id,
    @JsonKey(name: 'title') required String name,
    required String price,
    required String image,
    required String description,
  }) = _ProductDTO;

  factory ProductDTO.fromJson(Map<String, dynamic> json) =>
      _$ProductDTOFromJson(json);
}
