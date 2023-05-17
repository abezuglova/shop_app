// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductDTO _$$_ProductDTOFromJson(Map<String, dynamic> json) =>
    _$_ProductDTO(
      id: json['id'] as int,
      name: json['title'] as String,
      price: (json['price'] as num).toDouble(),
      image: json['image'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$$_ProductDTOToJson(_$_ProductDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.name,
      'price': instance.price,
      'image': instance.image,
      'description': instance.description,
    };

_$_ShoppingCartDTO _$$_ShoppingCartDTOFromJson(Map<String, dynamic> json) =>
    _$_ShoppingCartDTO(
      id: json['id'] as int,
      products: (json['products'] as List<dynamic>)
          .map((e) => ShoppingCartItemDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ShoppingCartDTOToJson(_$_ShoppingCartDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'products': instance.products,
    };

_$_ShoppingCartItemDTO _$$_ShoppingCartItemDTOFromJson(
        Map<String, dynamic> json) =>
    _$_ShoppingCartItemDTO(
      id: json['productId'] as int,
      quantity: json['quantity'] as int? ?? 0,
    );

Map<String, dynamic> _$$_ShoppingCartItemDTOToJson(
        _$_ShoppingCartItemDTO instance) =>
    <String, dynamic>{
      'productId': instance.id,
      'quantity': instance.quantity,
    };
