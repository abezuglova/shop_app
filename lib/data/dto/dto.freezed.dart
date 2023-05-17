// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductDTO _$ProductDTOFromJson(Map<String, dynamic> json) {
  return _ProductDTO.fromJson(json);
}

/// @nodoc
mixin _$ProductDTO {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String get name => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductDTOCopyWith<ProductDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDTOCopyWith<$Res> {
  factory $ProductDTOCopyWith(
          ProductDTO value, $Res Function(ProductDTO) then) =
      _$ProductDTOCopyWithImpl<$Res, ProductDTO>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'title') String name,
      double price,
      String image,
      String description});
}

/// @nodoc
class _$ProductDTOCopyWithImpl<$Res, $Val extends ProductDTO>
    implements $ProductDTOCopyWith<$Res> {
  _$ProductDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? price = null,
    Object? image = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductDTOCopyWith<$Res>
    implements $ProductDTOCopyWith<$Res> {
  factory _$$_ProductDTOCopyWith(
          _$_ProductDTO value, $Res Function(_$_ProductDTO) then) =
      __$$_ProductDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'title') String name,
      double price,
      String image,
      String description});
}

/// @nodoc
class __$$_ProductDTOCopyWithImpl<$Res>
    extends _$ProductDTOCopyWithImpl<$Res, _$_ProductDTO>
    implements _$$_ProductDTOCopyWith<$Res> {
  __$$_ProductDTOCopyWithImpl(
      _$_ProductDTO _value, $Res Function(_$_ProductDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? price = null,
    Object? image = null,
    Object? description = null,
  }) {
    return _then(_$_ProductDTO(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductDTO implements _ProductDTO {
  _$_ProductDTO(
      {required this.id,
      @JsonKey(name: 'title') required this.name,
      required this.price,
      required this.image,
      required this.description});

  factory _$_ProductDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ProductDTOFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'title')
  final String name;
  @override
  final double price;
  @override
  final String image;
  @override
  final String description;

  @override
  String toString() {
    return 'ProductDTO(id: $id, name: $name, price: $price, image: $image, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductDTO &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, price, image, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductDTOCopyWith<_$_ProductDTO> get copyWith =>
      __$$_ProductDTOCopyWithImpl<_$_ProductDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductDTOToJson(
      this,
    );
  }
}

abstract class _ProductDTO implements ProductDTO {
  factory _ProductDTO(
      {required final int id,
      @JsonKey(name: 'title') required final String name,
      required final double price,
      required final String image,
      required final String description}) = _$_ProductDTO;

  factory _ProductDTO.fromJson(Map<String, dynamic> json) =
      _$_ProductDTO.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'title')
  String get name;
  @override
  double get price;
  @override
  String get image;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$_ProductDTOCopyWith<_$_ProductDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

ShoppingCartDTO _$ShoppingCartDTOFromJson(Map<String, dynamic> json) {
  return _ShoppingCartDTO.fromJson(json);
}

/// @nodoc
mixin _$ShoppingCartDTO {
  int get id => throw _privateConstructorUsedError;
  List<ShoppingCartItemDTO> get products => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShoppingCartDTOCopyWith<ShoppingCartDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShoppingCartDTOCopyWith<$Res> {
  factory $ShoppingCartDTOCopyWith(
          ShoppingCartDTO value, $Res Function(ShoppingCartDTO) then) =
      _$ShoppingCartDTOCopyWithImpl<$Res, ShoppingCartDTO>;
  @useResult
  $Res call({int id, List<ShoppingCartItemDTO> products});
}

/// @nodoc
class _$ShoppingCartDTOCopyWithImpl<$Res, $Val extends ShoppingCartDTO>
    implements $ShoppingCartDTOCopyWith<$Res> {
  _$ShoppingCartDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? products = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ShoppingCartItemDTO>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ShoppingCartDTOCopyWith<$Res>
    implements $ShoppingCartDTOCopyWith<$Res> {
  factory _$$_ShoppingCartDTOCopyWith(
          _$_ShoppingCartDTO value, $Res Function(_$_ShoppingCartDTO) then) =
      __$$_ShoppingCartDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, List<ShoppingCartItemDTO> products});
}

/// @nodoc
class __$$_ShoppingCartDTOCopyWithImpl<$Res>
    extends _$ShoppingCartDTOCopyWithImpl<$Res, _$_ShoppingCartDTO>
    implements _$$_ShoppingCartDTOCopyWith<$Res> {
  __$$_ShoppingCartDTOCopyWithImpl(
      _$_ShoppingCartDTO _value, $Res Function(_$_ShoppingCartDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? products = null,
  }) {
    return _then(_$_ShoppingCartDTO(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ShoppingCartItemDTO>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShoppingCartDTO implements _ShoppingCartDTO {
  _$_ShoppingCartDTO(
      {required this.id, required final List<ShoppingCartItemDTO> products})
      : _products = products;

  factory _$_ShoppingCartDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ShoppingCartDTOFromJson(json);

  @override
  final int id;
  final List<ShoppingCartItemDTO> _products;
  @override
  List<ShoppingCartItemDTO> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'ShoppingCartDTO(id: $id, products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShoppingCartDTO &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShoppingCartDTOCopyWith<_$_ShoppingCartDTO> get copyWith =>
      __$$_ShoppingCartDTOCopyWithImpl<_$_ShoppingCartDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShoppingCartDTOToJson(
      this,
    );
  }
}

abstract class _ShoppingCartDTO implements ShoppingCartDTO {
  factory _ShoppingCartDTO(
      {required final int id,
      required final List<ShoppingCartItemDTO> products}) = _$_ShoppingCartDTO;

  factory _ShoppingCartDTO.fromJson(Map<String, dynamic> json) =
      _$_ShoppingCartDTO.fromJson;

  @override
  int get id;
  @override
  List<ShoppingCartItemDTO> get products;
  @override
  @JsonKey(ignore: true)
  _$$_ShoppingCartDTOCopyWith<_$_ShoppingCartDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

ShoppingCartItemDTO _$ShoppingCartItemDTOFromJson(Map<String, dynamic> json) {
  return _ShoppingCartItemDTO.fromJson(json);
}

/// @nodoc
mixin _$ShoppingCartItemDTO {
  @JsonKey(name: 'productId')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 0)
  int get quantity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShoppingCartItemDTOCopyWith<ShoppingCartItemDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShoppingCartItemDTOCopyWith<$Res> {
  factory $ShoppingCartItemDTOCopyWith(
          ShoppingCartItemDTO value, $Res Function(ShoppingCartItemDTO) then) =
      _$ShoppingCartItemDTOCopyWithImpl<$Res, ShoppingCartItemDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'productId') int id,
      @JsonKey(defaultValue: 0) int quantity});
}

/// @nodoc
class _$ShoppingCartItemDTOCopyWithImpl<$Res, $Val extends ShoppingCartItemDTO>
    implements $ShoppingCartItemDTOCopyWith<$Res> {
  _$ShoppingCartItemDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? quantity = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ShoppingCartItemDTOCopyWith<$Res>
    implements $ShoppingCartItemDTOCopyWith<$Res> {
  factory _$$_ShoppingCartItemDTOCopyWith(_$_ShoppingCartItemDTO value,
          $Res Function(_$_ShoppingCartItemDTO) then) =
      __$$_ShoppingCartItemDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'productId') int id,
      @JsonKey(defaultValue: 0) int quantity});
}

/// @nodoc
class __$$_ShoppingCartItemDTOCopyWithImpl<$Res>
    extends _$ShoppingCartItemDTOCopyWithImpl<$Res, _$_ShoppingCartItemDTO>
    implements _$$_ShoppingCartItemDTOCopyWith<$Res> {
  __$$_ShoppingCartItemDTOCopyWithImpl(_$_ShoppingCartItemDTO _value,
      $Res Function(_$_ShoppingCartItemDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? quantity = null,
  }) {
    return _then(_$_ShoppingCartItemDTO(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShoppingCartItemDTO implements _ShoppingCartItemDTO {
  _$_ShoppingCartItemDTO(
      {@JsonKey(name: 'productId') required this.id,
      @JsonKey(defaultValue: 0) required this.quantity});

  factory _$_ShoppingCartItemDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ShoppingCartItemDTOFromJson(json);

  @override
  @JsonKey(name: 'productId')
  final int id;
  @override
  @JsonKey(defaultValue: 0)
  final int quantity;

  @override
  String toString() {
    return 'ShoppingCartItemDTO(id: $id, quantity: $quantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShoppingCartItemDTO &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShoppingCartItemDTOCopyWith<_$_ShoppingCartItemDTO> get copyWith =>
      __$$_ShoppingCartItemDTOCopyWithImpl<_$_ShoppingCartItemDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShoppingCartItemDTOToJson(
      this,
    );
  }
}

abstract class _ShoppingCartItemDTO implements ShoppingCartItemDTO {
  factory _ShoppingCartItemDTO(
          {@JsonKey(name: 'productId') required final int id,
          @JsonKey(defaultValue: 0) required final int quantity}) =
      _$_ShoppingCartItemDTO;

  factory _ShoppingCartItemDTO.fromJson(Map<String, dynamic> json) =
      _$_ShoppingCartItemDTO.fromJson;

  @override
  @JsonKey(name: 'productId')
  int get id;
  @override
  @JsonKey(defaultValue: 0)
  int get quantity;
  @override
  @JsonKey(ignore: true)
  _$$_ShoppingCartItemDTOCopyWith<_$_ShoppingCartItemDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
