// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Advertisement {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AdvertisementCopyWith<Advertisement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdvertisementCopyWith<$Res> {
  factory $AdvertisementCopyWith(
          Advertisement value, $Res Function(Advertisement) then) =
      _$AdvertisementCopyWithImpl<$Res, Advertisement>;
  @useResult
  $Res call({int id, String name, String description, String image});
}

/// @nodoc
class _$AdvertisementCopyWithImpl<$Res, $Val extends Advertisement>
    implements $AdvertisementCopyWith<$Res> {
  _$AdvertisementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? image = null,
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
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AdvertisementCopyWith<$Res>
    implements $AdvertisementCopyWith<$Res> {
  factory _$$_AdvertisementCopyWith(
          _$_Advertisement value, $Res Function(_$_Advertisement) then) =
      __$$_AdvertisementCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String description, String image});
}

/// @nodoc
class __$$_AdvertisementCopyWithImpl<$Res>
    extends _$AdvertisementCopyWithImpl<$Res, _$_Advertisement>
    implements _$$_AdvertisementCopyWith<$Res> {
  __$$_AdvertisementCopyWithImpl(
      _$_Advertisement _value, $Res Function(_$_Advertisement) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? image = null,
  }) {
    return _then(_$_Advertisement(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Advertisement implements _Advertisement {
  const _$_Advertisement(
      {required this.id,
      required this.name,
      required this.description,
      required this.image});

  @override
  final int id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String image;

  @override
  String toString() {
    return 'Advertisement(id: $id, name: $name, description: $description, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Advertisement &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, description, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AdvertisementCopyWith<_$_Advertisement> get copyWith =>
      __$$_AdvertisementCopyWithImpl<_$_Advertisement>(this, _$identity);
}

abstract class _Advertisement implements Advertisement {
  const factory _Advertisement(
      {required final int id,
      required final String name,
      required final String description,
      required final String image}) = _$_Advertisement;

  @override
  int get id;
  @override
  String get name;
  @override
  String get description;
  @override
  String get image;
  @override
  @JsonKey(ignore: true)
  _$$_AdvertisementCopyWith<_$_Advertisement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Product {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<String> get images => throw _privateConstructorUsedError;
  int? get discount => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get characteristics => throw _privateConstructorUsedError;
  String get reviews => throw _privateConstructorUsedError;
  String get brand => throw _privateConstructorUsedError;
  double get oldPrice => throw _privateConstructorUsedError;
  double get newPrice => throw _privateConstructorUsedError;
  List<Product> get recommendations => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call(
      {int id,
      String name,
      List<String> images,
      int? discount,
      int amount,
      String description,
      String characteristics,
      String reviews,
      String brand,
      double oldPrice,
      double newPrice,
      List<Product> recommendations});
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? images = null,
    Object? discount = freezed,
    Object? amount = null,
    Object? description = null,
    Object? characteristics = null,
    Object? reviews = null,
    Object? brand = null,
    Object? oldPrice = null,
    Object? newPrice = null,
    Object? recommendations = null,
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
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      characteristics: null == characteristics
          ? _value.characteristics
          : characteristics // ignore: cast_nullable_to_non_nullable
              as String,
      reviews: null == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as String,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      oldPrice: null == oldPrice
          ? _value.oldPrice
          : oldPrice // ignore: cast_nullable_to_non_nullable
              as double,
      newPrice: null == newPrice
          ? _value.newPrice
          : newPrice // ignore: cast_nullable_to_non_nullable
              as double,
      recommendations: null == recommendations
          ? _value.recommendations
          : recommendations // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$_ProductCopyWith(
          _$_Product value, $Res Function(_$_Product) then) =
      __$$_ProductCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      List<String> images,
      int? discount,
      int amount,
      String description,
      String characteristics,
      String reviews,
      String brand,
      double oldPrice,
      double newPrice,
      List<Product> recommendations});
}

/// @nodoc
class __$$_ProductCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$_Product>
    implements _$$_ProductCopyWith<$Res> {
  __$$_ProductCopyWithImpl(_$_Product _value, $Res Function(_$_Product) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? images = null,
    Object? discount = freezed,
    Object? amount = null,
    Object? description = null,
    Object? characteristics = null,
    Object? reviews = null,
    Object? brand = null,
    Object? oldPrice = null,
    Object? newPrice = null,
    Object? recommendations = null,
  }) {
    return _then(_$_Product(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      characteristics: null == characteristics
          ? _value.characteristics
          : characteristics // ignore: cast_nullable_to_non_nullable
              as String,
      reviews: null == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as String,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      oldPrice: null == oldPrice
          ? _value.oldPrice
          : oldPrice // ignore: cast_nullable_to_non_nullable
              as double,
      newPrice: null == newPrice
          ? _value.newPrice
          : newPrice // ignore: cast_nullable_to_non_nullable
              as double,
      recommendations: null == recommendations
          ? _value._recommendations
          : recommendations // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc

class _$_Product implements _Product {
  const _$_Product(
      {required this.id,
      required this.name,
      required final List<String> images,
      this.discount,
      required this.amount,
      required this.description,
      required this.characteristics,
      required this.reviews,
      required this.brand,
      required this.oldPrice,
      required this.newPrice,
      required final List<Product> recommendations})
      : _images = images,
        _recommendations = recommendations;

  @override
  final int id;
  @override
  final String name;
  final List<String> _images;
  @override
  List<String> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  final int? discount;
  @override
  final int amount;
  @override
  final String description;
  @override
  final String characteristics;
  @override
  final String reviews;
  @override
  final String brand;
  @override
  final double oldPrice;
  @override
  final double newPrice;
  final List<Product> _recommendations;
  @override
  List<Product> get recommendations {
    if (_recommendations is EqualUnmodifiableListView) return _recommendations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recommendations);
  }

  @override
  String toString() {
    return 'Product(id: $id, name: $name, images: $images, discount: $discount, amount: $amount, description: $description, characteristics: $characteristics, reviews: $reviews, brand: $brand, oldPrice: $oldPrice, newPrice: $newPrice, recommendations: $recommendations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Product &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.characteristics, characteristics) ||
                other.characteristics == characteristics) &&
            (identical(other.reviews, reviews) || other.reviews == reviews) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.oldPrice, oldPrice) ||
                other.oldPrice == oldPrice) &&
            (identical(other.newPrice, newPrice) ||
                other.newPrice == newPrice) &&
            const DeepCollectionEquality()
                .equals(other._recommendations, _recommendations));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      const DeepCollectionEquality().hash(_images),
      discount,
      amount,
      description,
      characteristics,
      reviews,
      brand,
      oldPrice,
      newPrice,
      const DeepCollectionEquality().hash(_recommendations));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductCopyWith<_$_Product> get copyWith =>
      __$$_ProductCopyWithImpl<_$_Product>(this, _$identity);
}

abstract class _Product implements Product {
  const factory _Product(
      {required final int id,
      required final String name,
      required final List<String> images,
      final int? discount,
      required final int amount,
      required final String description,
      required final String characteristics,
      required final String reviews,
      required final String brand,
      required final double oldPrice,
      required final double newPrice,
      required final List<Product> recommendations}) = _$_Product;

  @override
  int get id;
  @override
  String get name;
  @override
  List<String> get images;
  @override
  int? get discount;
  @override
  int get amount;
  @override
  String get description;
  @override
  String get characteristics;
  @override
  String get reviews;
  @override
  String get brand;
  @override
  double get oldPrice;
  @override
  double get newPrice;
  @override
  List<Product> get recommendations;
  @override
  @JsonKey(ignore: true)
  _$$_ProductCopyWith<_$_Product> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Category {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<Category> get subcategories => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoryCopyWith<Category> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryCopyWith<$Res> {
  factory $CategoryCopyWith(Category value, $Res Function(Category) then) =
      _$CategoryCopyWithImpl<$Res, Category>;
  @useResult
  $Res call({String id, String name, List<Category> subcategories});
}

/// @nodoc
class _$CategoryCopyWithImpl<$Res, $Val extends Category>
    implements $CategoryCopyWith<$Res> {
  _$CategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? subcategories = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      subcategories: null == subcategories
          ? _value.subcategories
          : subcategories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CategoryCopyWith<$Res> implements $CategoryCopyWith<$Res> {
  factory _$$_CategoryCopyWith(
          _$_Category value, $Res Function(_$_Category) then) =
      __$$_CategoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, List<Category> subcategories});
}

/// @nodoc
class __$$_CategoryCopyWithImpl<$Res>
    extends _$CategoryCopyWithImpl<$Res, _$_Category>
    implements _$$_CategoryCopyWith<$Res> {
  __$$_CategoryCopyWithImpl(
      _$_Category _value, $Res Function(_$_Category) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? subcategories = null,
  }) {
    return _then(_$_Category(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      subcategories: null == subcategories
          ? _value._subcategories
          : subcategories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
    ));
  }
}

/// @nodoc

class _$_Category implements _Category {
  const _$_Category(
      {required this.id,
      required this.name,
      required final List<Category> subcategories})
      : _subcategories = subcategories;

  @override
  final String id;
  @override
  final String name;
  final List<Category> _subcategories;
  @override
  List<Category> get subcategories {
    if (_subcategories is EqualUnmodifiableListView) return _subcategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subcategories);
  }

  @override
  String toString() {
    return 'Category(id: $id, name: $name, subcategories: $subcategories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Category &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._subcategories, _subcategories));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name,
      const DeepCollectionEquality().hash(_subcategories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoryCopyWith<_$_Category> get copyWith =>
      __$$_CategoryCopyWithImpl<_$_Category>(this, _$identity);
}

abstract class _Category implements Category {
  const factory _Category(
      {required final String id,
      required final String name,
      required final List<Category> subcategories}) = _$_Category;

  @override
  String get id;
  @override
  String get name;
  @override
  List<Category> get subcategories;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryCopyWith<_$_Category> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ShoppingCart {
  int get id => throw _privateConstructorUsedError;
  List<ShoppingCartItem> get products => throw _privateConstructorUsedError;
  double get generalPrice => throw _privateConstructorUsedError;
  int? get discount => throw _privateConstructorUsedError;
  double get generalDiscount => throw _privateConstructorUsedError;
  List<Product> get recommendations => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShoppingCartCopyWith<ShoppingCart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShoppingCartCopyWith<$Res> {
  factory $ShoppingCartCopyWith(
          ShoppingCart value, $Res Function(ShoppingCart) then) =
      _$ShoppingCartCopyWithImpl<$Res, ShoppingCart>;
  @useResult
  $Res call(
      {int id,
      List<ShoppingCartItem> products,
      double generalPrice,
      int? discount,
      double generalDiscount,
      List<Product> recommendations});
}

/// @nodoc
class _$ShoppingCartCopyWithImpl<$Res, $Val extends ShoppingCart>
    implements $ShoppingCartCopyWith<$Res> {
  _$ShoppingCartCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? products = null,
    Object? generalPrice = null,
    Object? discount = freezed,
    Object? generalDiscount = null,
    Object? recommendations = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ShoppingCartItem>,
      generalPrice: null == generalPrice
          ? _value.generalPrice
          : generalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      generalDiscount: null == generalDiscount
          ? _value.generalDiscount
          : generalDiscount // ignore: cast_nullable_to_non_nullable
              as double,
      recommendations: null == recommendations
          ? _value.recommendations
          : recommendations // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ShoppingCartCopyWith<$Res>
    implements $ShoppingCartCopyWith<$Res> {
  factory _$$_ShoppingCartCopyWith(
          _$_ShoppingCart value, $Res Function(_$_ShoppingCart) then) =
      __$$_ShoppingCartCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      List<ShoppingCartItem> products,
      double generalPrice,
      int? discount,
      double generalDiscount,
      List<Product> recommendations});
}

/// @nodoc
class __$$_ShoppingCartCopyWithImpl<$Res>
    extends _$ShoppingCartCopyWithImpl<$Res, _$_ShoppingCart>
    implements _$$_ShoppingCartCopyWith<$Res> {
  __$$_ShoppingCartCopyWithImpl(
      _$_ShoppingCart _value, $Res Function(_$_ShoppingCart) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? products = null,
    Object? generalPrice = null,
    Object? discount = freezed,
    Object? generalDiscount = null,
    Object? recommendations = null,
  }) {
    return _then(_$_ShoppingCart(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ShoppingCartItem>,
      generalPrice: null == generalPrice
          ? _value.generalPrice
          : generalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      generalDiscount: null == generalDiscount
          ? _value.generalDiscount
          : generalDiscount // ignore: cast_nullable_to_non_nullable
              as double,
      recommendations: null == recommendations
          ? _value._recommendations
          : recommendations // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc

class _$_ShoppingCart implements _ShoppingCart {
  _$_ShoppingCart(
      {required this.id,
      required final List<ShoppingCartItem> products,
      required this.generalPrice,
      this.discount,
      required this.generalDiscount,
      required final List<Product> recommendations})
      : _products = products,
        _recommendations = recommendations;

  @override
  final int id;
  final List<ShoppingCartItem> _products;
  @override
  List<ShoppingCartItem> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  final double generalPrice;
  @override
  final int? discount;
  @override
  final double generalDiscount;
  final List<Product> _recommendations;
  @override
  List<Product> get recommendations {
    if (_recommendations is EqualUnmodifiableListView) return _recommendations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recommendations);
  }

  @override
  String toString() {
    return 'ShoppingCart(id: $id, products: $products, generalPrice: $generalPrice, discount: $discount, generalDiscount: $generalDiscount, recommendations: $recommendations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShoppingCart &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.generalPrice, generalPrice) ||
                other.generalPrice == generalPrice) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.generalDiscount, generalDiscount) ||
                other.generalDiscount == generalDiscount) &&
            const DeepCollectionEquality()
                .equals(other._recommendations, _recommendations));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_products),
      generalPrice,
      discount,
      generalDiscount,
      const DeepCollectionEquality().hash(_recommendations));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShoppingCartCopyWith<_$_ShoppingCart> get copyWith =>
      __$$_ShoppingCartCopyWithImpl<_$_ShoppingCart>(this, _$identity);
}

abstract class _ShoppingCart implements ShoppingCart {
  factory _ShoppingCart(
      {required final int id,
      required final List<ShoppingCartItem> products,
      required final double generalPrice,
      final int? discount,
      required final double generalDiscount,
      required final List<Product> recommendations}) = _$_ShoppingCart;

  @override
  int get id;
  @override
  List<ShoppingCartItem> get products;
  @override
  double get generalPrice;
  @override
  int? get discount;
  @override
  double get generalDiscount;
  @override
  List<Product> get recommendations;
  @override
  @JsonKey(ignore: true)
  _$$_ShoppingCartCopyWith<_$_ShoppingCart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ShoppingCartItem {
  Product get product => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShoppingCartItemCopyWith<ShoppingCartItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShoppingCartItemCopyWith<$Res> {
  factory $ShoppingCartItemCopyWith(
          ShoppingCartItem value, $Res Function(ShoppingCartItem) then) =
      _$ShoppingCartItemCopyWithImpl<$Res, ShoppingCartItem>;
  @useResult
  $Res call({Product product, int quantity});

  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class _$ShoppingCartItemCopyWithImpl<$Res, $Val extends ShoppingCartItem>
    implements $ShoppingCartItemCopyWith<$Res> {
  _$ShoppingCartItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? quantity = null,
  }) {
    return _then(_value.copyWith(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductCopyWith<$Res> get product {
    return $ProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ShoppingCartItemCopyWith<$Res>
    implements $ShoppingCartItemCopyWith<$Res> {
  factory _$$_ShoppingCartItemCopyWith(
          _$_ShoppingCartItem value, $Res Function(_$_ShoppingCartItem) then) =
      __$$_ShoppingCartItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Product product, int quantity});

  @override
  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class __$$_ShoppingCartItemCopyWithImpl<$Res>
    extends _$ShoppingCartItemCopyWithImpl<$Res, _$_ShoppingCartItem>
    implements _$$_ShoppingCartItemCopyWith<$Res> {
  __$$_ShoppingCartItemCopyWithImpl(
      _$_ShoppingCartItem _value, $Res Function(_$_ShoppingCartItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? quantity = null,
  }) {
    return _then(_$_ShoppingCartItem(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ShoppingCartItem implements _ShoppingCartItem {
  _$_ShoppingCartItem({required this.product, required this.quantity});

  @override
  final Product product;
  @override
  final int quantity;

  @override
  String toString() {
    return 'ShoppingCartItem(product: $product, quantity: $quantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShoppingCartItem &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product, quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShoppingCartItemCopyWith<_$_ShoppingCartItem> get copyWith =>
      __$$_ShoppingCartItemCopyWithImpl<_$_ShoppingCartItem>(this, _$identity);
}

abstract class _ShoppingCartItem implements ShoppingCartItem {
  factory _ShoppingCartItem(
      {required final Product product,
      required final int quantity}) = _$_ShoppingCartItem;

  @override
  Product get product;
  @override
  int get quantity;
  @override
  @JsonKey(ignore: true)
  _$$_ShoppingCartItemCopyWith<_$_ShoppingCartItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Order {
  int get number => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  int get deliveryPrice => throw _privateConstructorUsedError;
  Address get deliveryAddress => throw _privateConstructorUsedError;
  DateTime get orderingDateTime => throw _privateConstructorUsedError;
  DateTime get deliveryDateTime => throw _privateConstructorUsedError;
  PaymentMethod get paymentMethod => throw _privateConstructorUsedError;
  ShoppingCart get shoppingCart => throw _privateConstructorUsedError;
  bool get writeOffPoints => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderCopyWith<Order> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderCopyWith<$Res> {
  factory $OrderCopyWith(Order value, $Res Function(Order) then) =
      _$OrderCopyWithImpl<$Res, Order>;
  @useResult
  $Res call(
      {int number,
      String status,
      int deliveryPrice,
      Address deliveryAddress,
      DateTime orderingDateTime,
      DateTime deliveryDateTime,
      PaymentMethod paymentMethod,
      ShoppingCart shoppingCart,
      bool writeOffPoints,
      String? comment});

  $AddressCopyWith<$Res> get deliveryAddress;
  $PaymentMethodCopyWith<$Res> get paymentMethod;
  $ShoppingCartCopyWith<$Res> get shoppingCart;
}

/// @nodoc
class _$OrderCopyWithImpl<$Res, $Val extends Order>
    implements $OrderCopyWith<$Res> {
  _$OrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? status = null,
    Object? deliveryPrice = null,
    Object? deliveryAddress = null,
    Object? orderingDateTime = null,
    Object? deliveryDateTime = null,
    Object? paymentMethod = null,
    Object? shoppingCart = null,
    Object? writeOffPoints = null,
    Object? comment = freezed,
  }) {
    return _then(_value.copyWith(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryPrice: null == deliveryPrice
          ? _value.deliveryPrice
          : deliveryPrice // ignore: cast_nullable_to_non_nullable
              as int,
      deliveryAddress: null == deliveryAddress
          ? _value.deliveryAddress
          : deliveryAddress // ignore: cast_nullable_to_non_nullable
              as Address,
      orderingDateTime: null == orderingDateTime
          ? _value.orderingDateTime
          : orderingDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deliveryDateTime: null == deliveryDateTime
          ? _value.deliveryDateTime
          : deliveryDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethod,
      shoppingCart: null == shoppingCart
          ? _value.shoppingCart
          : shoppingCart // ignore: cast_nullable_to_non_nullable
              as ShoppingCart,
      writeOffPoints: null == writeOffPoints
          ? _value.writeOffPoints
          : writeOffPoints // ignore: cast_nullable_to_non_nullable
              as bool,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get deliveryAddress {
    return $AddressCopyWith<$Res>(_value.deliveryAddress, (value) {
      return _then(_value.copyWith(deliveryAddress: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PaymentMethodCopyWith<$Res> get paymentMethod {
    return $PaymentMethodCopyWith<$Res>(_value.paymentMethod, (value) {
      return _then(_value.copyWith(paymentMethod: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ShoppingCartCopyWith<$Res> get shoppingCart {
    return $ShoppingCartCopyWith<$Res>(_value.shoppingCart, (value) {
      return _then(_value.copyWith(shoppingCart: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_OrderCopyWith<$Res> implements $OrderCopyWith<$Res> {
  factory _$$_OrderCopyWith(_$_Order value, $Res Function(_$_Order) then) =
      __$$_OrderCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int number,
      String status,
      int deliveryPrice,
      Address deliveryAddress,
      DateTime orderingDateTime,
      DateTime deliveryDateTime,
      PaymentMethod paymentMethod,
      ShoppingCart shoppingCart,
      bool writeOffPoints,
      String? comment});

  @override
  $AddressCopyWith<$Res> get deliveryAddress;
  @override
  $PaymentMethodCopyWith<$Res> get paymentMethod;
  @override
  $ShoppingCartCopyWith<$Res> get shoppingCart;
}

/// @nodoc
class __$$_OrderCopyWithImpl<$Res> extends _$OrderCopyWithImpl<$Res, _$_Order>
    implements _$$_OrderCopyWith<$Res> {
  __$$_OrderCopyWithImpl(_$_Order _value, $Res Function(_$_Order) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? status = null,
    Object? deliveryPrice = null,
    Object? deliveryAddress = null,
    Object? orderingDateTime = null,
    Object? deliveryDateTime = null,
    Object? paymentMethod = null,
    Object? shoppingCart = null,
    Object? writeOffPoints = null,
    Object? comment = freezed,
  }) {
    return _then(_$_Order(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryPrice: null == deliveryPrice
          ? _value.deliveryPrice
          : deliveryPrice // ignore: cast_nullable_to_non_nullable
              as int,
      deliveryAddress: null == deliveryAddress
          ? _value.deliveryAddress
          : deliveryAddress // ignore: cast_nullable_to_non_nullable
              as Address,
      orderingDateTime: null == orderingDateTime
          ? _value.orderingDateTime
          : orderingDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deliveryDateTime: null == deliveryDateTime
          ? _value.deliveryDateTime
          : deliveryDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethod,
      shoppingCart: null == shoppingCart
          ? _value.shoppingCart
          : shoppingCart // ignore: cast_nullable_to_non_nullable
              as ShoppingCart,
      writeOffPoints: null == writeOffPoints
          ? _value.writeOffPoints
          : writeOffPoints // ignore: cast_nullable_to_non_nullable
              as bool,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Order implements _Order {
  _$_Order(
      {required this.number,
      required this.status,
      required this.deliveryPrice,
      required this.deliveryAddress,
      required this.orderingDateTime,
      required this.deliveryDateTime,
      required this.paymentMethod,
      required this.shoppingCart,
      this.writeOffPoints = false,
      this.comment});

  @override
  final int number;
  @override
  final String status;
  @override
  final int deliveryPrice;
  @override
  final Address deliveryAddress;
  @override
  final DateTime orderingDateTime;
  @override
  final DateTime deliveryDateTime;
  @override
  final PaymentMethod paymentMethod;
  @override
  final ShoppingCart shoppingCart;
  @override
  @JsonKey()
  final bool writeOffPoints;
  @override
  final String? comment;

  @override
  String toString() {
    return 'Order(number: $number, status: $status, deliveryPrice: $deliveryPrice, deliveryAddress: $deliveryAddress, orderingDateTime: $orderingDateTime, deliveryDateTime: $deliveryDateTime, paymentMethod: $paymentMethod, shoppingCart: $shoppingCart, writeOffPoints: $writeOffPoints, comment: $comment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Order &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.deliveryPrice, deliveryPrice) ||
                other.deliveryPrice == deliveryPrice) &&
            (identical(other.deliveryAddress, deliveryAddress) ||
                other.deliveryAddress == deliveryAddress) &&
            (identical(other.orderingDateTime, orderingDateTime) ||
                other.orderingDateTime == orderingDateTime) &&
            (identical(other.deliveryDateTime, deliveryDateTime) ||
                other.deliveryDateTime == deliveryDateTime) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.shoppingCart, shoppingCart) ||
                other.shoppingCart == shoppingCart) &&
            (identical(other.writeOffPoints, writeOffPoints) ||
                other.writeOffPoints == writeOffPoints) &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      number,
      status,
      deliveryPrice,
      deliveryAddress,
      orderingDateTime,
      deliveryDateTime,
      paymentMethod,
      shoppingCart,
      writeOffPoints,
      comment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderCopyWith<_$_Order> get copyWith =>
      __$$_OrderCopyWithImpl<_$_Order>(this, _$identity);
}

abstract class _Order implements Order {
  factory _Order(
      {required final int number,
      required final String status,
      required final int deliveryPrice,
      required final Address deliveryAddress,
      required final DateTime orderingDateTime,
      required final DateTime deliveryDateTime,
      required final PaymentMethod paymentMethod,
      required final ShoppingCart shoppingCart,
      final bool writeOffPoints,
      final String? comment}) = _$_Order;

  @override
  int get number;
  @override
  String get status;
  @override
  int get deliveryPrice;
  @override
  Address get deliveryAddress;
  @override
  DateTime get orderingDateTime;
  @override
  DateTime get deliveryDateTime;
  @override
  PaymentMethod get paymentMethod;
  @override
  ShoppingCart get shoppingCart;
  @override
  bool get writeOffPoints;
  @override
  String? get comment;
  @override
  @JsonKey(ignore: true)
  _$$_OrderCopyWith<_$_Order> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Address {
  String get name => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get street => throw _privateConstructorUsedError;
  String get house => throw _privateConstructorUsedError;
  int? get flat => throw _privateConstructorUsedError;
  int? get entrance => throw _privateConstructorUsedError;
  int? get floor => throw _privateConstructorUsedError;
  String? get additionalInformation => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddressCopyWith<Address> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressCopyWith<$Res> {
  factory $AddressCopyWith(Address value, $Res Function(Address) then) =
      _$AddressCopyWithImpl<$Res, Address>;
  @useResult
  $Res call(
      {String name,
      String city,
      String street,
      String house,
      int? flat,
      int? entrance,
      int? floor,
      String? additionalInformation});
}

/// @nodoc
class _$AddressCopyWithImpl<$Res, $Val extends Address>
    implements $AddressCopyWith<$Res> {
  _$AddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? city = null,
    Object? street = null,
    Object? house = null,
    Object? flat = freezed,
    Object? entrance = freezed,
    Object? floor = freezed,
    Object? additionalInformation = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      street: null == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      house: null == house
          ? _value.house
          : house // ignore: cast_nullable_to_non_nullable
              as String,
      flat: freezed == flat
          ? _value.flat
          : flat // ignore: cast_nullable_to_non_nullable
              as int?,
      entrance: freezed == entrance
          ? _value.entrance
          : entrance // ignore: cast_nullable_to_non_nullable
              as int?,
      floor: freezed == floor
          ? _value.floor
          : floor // ignore: cast_nullable_to_non_nullable
              as int?,
      additionalInformation: freezed == additionalInformation
          ? _value.additionalInformation
          : additionalInformation // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddressCopyWith<$Res> implements $AddressCopyWith<$Res> {
  factory _$$_AddressCopyWith(
          _$_Address value, $Res Function(_$_Address) then) =
      __$$_AddressCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String city,
      String street,
      String house,
      int? flat,
      int? entrance,
      int? floor,
      String? additionalInformation});
}

/// @nodoc
class __$$_AddressCopyWithImpl<$Res>
    extends _$AddressCopyWithImpl<$Res, _$_Address>
    implements _$$_AddressCopyWith<$Res> {
  __$$_AddressCopyWithImpl(_$_Address _value, $Res Function(_$_Address) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? city = null,
    Object? street = null,
    Object? house = null,
    Object? flat = freezed,
    Object? entrance = freezed,
    Object? floor = freezed,
    Object? additionalInformation = freezed,
  }) {
    return _then(_$_Address(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      street: null == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      house: null == house
          ? _value.house
          : house // ignore: cast_nullable_to_non_nullable
              as String,
      flat: freezed == flat
          ? _value.flat
          : flat // ignore: cast_nullable_to_non_nullable
              as int?,
      entrance: freezed == entrance
          ? _value.entrance
          : entrance // ignore: cast_nullable_to_non_nullable
              as int?,
      floor: freezed == floor
          ? _value.floor
          : floor // ignore: cast_nullable_to_non_nullable
              as int?,
      additionalInformation: freezed == additionalInformation
          ? _value.additionalInformation
          : additionalInformation // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Address implements _Address {
  _$_Address(
      {required this.name,
      required this.city,
      required this.street,
      required this.house,
      this.flat,
      this.entrance,
      this.floor,
      this.additionalInformation});

  @override
  final String name;
  @override
  final String city;
  @override
  final String street;
  @override
  final String house;
  @override
  final int? flat;
  @override
  final int? entrance;
  @override
  final int? floor;
  @override
  final String? additionalInformation;

  @override
  String toString() {
    return 'Address(name: $name, city: $city, street: $street, house: $house, flat: $flat, entrance: $entrance, floor: $floor, additionalInformation: $additionalInformation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Address &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.house, house) || other.house == house) &&
            (identical(other.flat, flat) || other.flat == flat) &&
            (identical(other.entrance, entrance) ||
                other.entrance == entrance) &&
            (identical(other.floor, floor) || other.floor == floor) &&
            (identical(other.additionalInformation, additionalInformation) ||
                other.additionalInformation == additionalInformation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, city, street, house, flat,
      entrance, floor, additionalInformation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddressCopyWith<_$_Address> get copyWith =>
      __$$_AddressCopyWithImpl<_$_Address>(this, _$identity);
}

abstract class _Address implements Address {
  factory _Address(
      {required final String name,
      required final String city,
      required final String street,
      required final String house,
      final int? flat,
      final int? entrance,
      final int? floor,
      final String? additionalInformation}) = _$_Address;

  @override
  String get name;
  @override
  String get city;
  @override
  String get street;
  @override
  String get house;
  @override
  int? get flat;
  @override
  int? get entrance;
  @override
  int? get floor;
  @override
  String? get additionalInformation;
  @override
  @JsonKey(ignore: true)
  _$$_AddressCopyWith<_$_Address> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PaymentMethod {
  List<BankCard> get cardList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaymentMethodCopyWith<PaymentMethod> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentMethodCopyWith<$Res> {
  factory $PaymentMethodCopyWith(
          PaymentMethod value, $Res Function(PaymentMethod) then) =
      _$PaymentMethodCopyWithImpl<$Res, PaymentMethod>;
  @useResult
  $Res call({List<BankCard> cardList});
}

/// @nodoc
class _$PaymentMethodCopyWithImpl<$Res, $Val extends PaymentMethod>
    implements $PaymentMethodCopyWith<$Res> {
  _$PaymentMethodCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardList = null,
  }) {
    return _then(_value.copyWith(
      cardList: null == cardList
          ? _value.cardList
          : cardList // ignore: cast_nullable_to_non_nullable
              as List<BankCard>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaymentMethodCopyWith<$Res>
    implements $PaymentMethodCopyWith<$Res> {
  factory _$$_PaymentMethodCopyWith(
          _$_PaymentMethod value, $Res Function(_$_PaymentMethod) then) =
      __$$_PaymentMethodCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<BankCard> cardList});
}

/// @nodoc
class __$$_PaymentMethodCopyWithImpl<$Res>
    extends _$PaymentMethodCopyWithImpl<$Res, _$_PaymentMethod>
    implements _$$_PaymentMethodCopyWith<$Res> {
  __$$_PaymentMethodCopyWithImpl(
      _$_PaymentMethod _value, $Res Function(_$_PaymentMethod) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardList = null,
  }) {
    return _then(_$_PaymentMethod(
      cardList: null == cardList
          ? _value._cardList
          : cardList // ignore: cast_nullable_to_non_nullable
              as List<BankCard>,
    ));
  }
}

/// @nodoc

class _$_PaymentMethod implements _PaymentMethod {
  _$_PaymentMethod({required final List<BankCard> cardList})
      : _cardList = cardList;

  final List<BankCard> _cardList;
  @override
  List<BankCard> get cardList {
    if (_cardList is EqualUnmodifiableListView) return _cardList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cardList);
  }

  @override
  String toString() {
    return 'PaymentMethod(cardList: $cardList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentMethod &&
            const DeepCollectionEquality().equals(other._cardList, _cardList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_cardList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentMethodCopyWith<_$_PaymentMethod> get copyWith =>
      __$$_PaymentMethodCopyWithImpl<_$_PaymentMethod>(this, _$identity);
}

abstract class _PaymentMethod implements PaymentMethod {
  factory _PaymentMethod({required final List<BankCard> cardList}) =
      _$_PaymentMethod;

  @override
  List<BankCard> get cardList;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentMethodCopyWith<_$_PaymentMethod> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProductType {
  String get name => throw _privateConstructorUsedError;
  List<Product> get products => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductTypeCopyWith<ProductType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductTypeCopyWith<$Res> {
  factory $ProductTypeCopyWith(
          ProductType value, $Res Function(ProductType) then) =
      _$ProductTypeCopyWithImpl<$Res, ProductType>;
  @useResult
  $Res call({String name, List<Product> products});
}

/// @nodoc
class _$ProductTypeCopyWithImpl<$Res, $Val extends ProductType>
    implements $ProductTypeCopyWith<$Res> {
  _$ProductTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? products = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductTypeCopyWith<$Res>
    implements $ProductTypeCopyWith<$Res> {
  factory _$$_ProductTypeCopyWith(
          _$_ProductType value, $Res Function(_$_ProductType) then) =
      __$$_ProductTypeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, List<Product> products});
}

/// @nodoc
class __$$_ProductTypeCopyWithImpl<$Res>
    extends _$ProductTypeCopyWithImpl<$Res, _$_ProductType>
    implements _$$_ProductTypeCopyWith<$Res> {
  __$$_ProductTypeCopyWithImpl(
      _$_ProductType _value, $Res Function(_$_ProductType) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? products = null,
  }) {
    return _then(_$_ProductType(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc

class _$_ProductType implements _ProductType {
  _$_ProductType({required this.name, required final List<Product> products})
      : _products = products;

  @override
  final String name;
  final List<Product> _products;
  @override
  List<Product> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'ProductType(name: $name, products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductType &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductTypeCopyWith<_$_ProductType> get copyWith =>
      __$$_ProductTypeCopyWithImpl<_$_ProductType>(this, _$identity);
}

abstract class _ProductType implements ProductType {
  factory _ProductType(
      {required final String name,
      required final List<Product> products}) = _$_ProductType;

  @override
  String get name;
  @override
  List<Product> get products;
  @override
  @JsonKey(ignore: true)
  _$$_ProductTypeCopyWith<_$_ProductType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PersonalData {
  String get name => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String? get surname => throw _privateConstructorUsedError;
  DateTime? get birthDateTime => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PersonalDataCopyWith<PersonalData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonalDataCopyWith<$Res> {
  factory $PersonalDataCopyWith(
          PersonalData value, $Res Function(PersonalData) then) =
      _$PersonalDataCopyWithImpl<$Res, PersonalData>;
  @useResult
  $Res call(
      {String name,
      String phone,
      String? surname,
      DateTime? birthDateTime,
      String? email});
}

/// @nodoc
class _$PersonalDataCopyWithImpl<$Res, $Val extends PersonalData>
    implements $PersonalDataCopyWith<$Res> {
  _$PersonalDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? phone = null,
    Object? surname = freezed,
    Object? birthDateTime = freezed,
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      surname: freezed == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String?,
      birthDateTime: freezed == birthDateTime
          ? _value.birthDateTime
          : birthDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PersonalDataCopyWith<$Res>
    implements $PersonalDataCopyWith<$Res> {
  factory _$$_PersonalDataCopyWith(
          _$_PersonalData value, $Res Function(_$_PersonalData) then) =
      __$$_PersonalDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String phone,
      String? surname,
      DateTime? birthDateTime,
      String? email});
}

/// @nodoc
class __$$_PersonalDataCopyWithImpl<$Res>
    extends _$PersonalDataCopyWithImpl<$Res, _$_PersonalData>
    implements _$$_PersonalDataCopyWith<$Res> {
  __$$_PersonalDataCopyWithImpl(
      _$_PersonalData _value, $Res Function(_$_PersonalData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? phone = null,
    Object? surname = freezed,
    Object? birthDateTime = freezed,
    Object? email = freezed,
  }) {
    return _then(_$_PersonalData(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      surname: freezed == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String?,
      birthDateTime: freezed == birthDateTime
          ? _value.birthDateTime
          : birthDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_PersonalData implements _PersonalData {
  _$_PersonalData(
      {required this.name,
      required this.phone,
      this.surname,
      this.birthDateTime,
      this.email});

  @override
  final String name;
  @override
  final String phone;
  @override
  final String? surname;
  @override
  final DateTime? birthDateTime;
  @override
  final String? email;

  @override
  String toString() {
    return 'PersonalData(name: $name, phone: $phone, surname: $surname, birthDateTime: $birthDateTime, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PersonalData &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.surname, surname) || other.surname == surname) &&
            (identical(other.birthDateTime, birthDateTime) ||
                other.birthDateTime == birthDateTime) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, phone, surname, birthDateTime, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PersonalDataCopyWith<_$_PersonalData> get copyWith =>
      __$$_PersonalDataCopyWithImpl<_$_PersonalData>(this, _$identity);
}

abstract class _PersonalData implements PersonalData {
  factory _PersonalData(
      {required final String name,
      required final String phone,
      final String? surname,
      final DateTime? birthDateTime,
      final String? email}) = _$_PersonalData;

  @override
  String get name;
  @override
  String get phone;
  @override
  String? get surname;
  @override
  DateTime? get birthDateTime;
  @override
  String? get email;
  @override
  @JsonKey(ignore: true)
  _$$_PersonalDataCopyWith<_$_PersonalData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MainPageData {
  List<Advertisement> get advertisementList =>
      throw _privateConstructorUsedError;
  List<Category> get popularCategories => throw _privateConstructorUsedError;
  List<Product> get bestDeals => throw _privateConstructorUsedError;
  List<Product> get alreadyBoughtList => throw _privateConstructorUsedError;
  List<Brand> get brandList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MainPageDataCopyWith<MainPageData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainPageDataCopyWith<$Res> {
  factory $MainPageDataCopyWith(
          MainPageData value, $Res Function(MainPageData) then) =
      _$MainPageDataCopyWithImpl<$Res, MainPageData>;
  @useResult
  $Res call(
      {List<Advertisement> advertisementList,
      List<Category> popularCategories,
      List<Product> bestDeals,
      List<Product> alreadyBoughtList,
      List<Brand> brandList});
}

/// @nodoc
class _$MainPageDataCopyWithImpl<$Res, $Val extends MainPageData>
    implements $MainPageDataCopyWith<$Res> {
  _$MainPageDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? advertisementList = null,
    Object? popularCategories = null,
    Object? bestDeals = null,
    Object? alreadyBoughtList = null,
    Object? brandList = null,
  }) {
    return _then(_value.copyWith(
      advertisementList: null == advertisementList
          ? _value.advertisementList
          : advertisementList // ignore: cast_nullable_to_non_nullable
              as List<Advertisement>,
      popularCategories: null == popularCategories
          ? _value.popularCategories
          : popularCategories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      bestDeals: null == bestDeals
          ? _value.bestDeals
          : bestDeals // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      alreadyBoughtList: null == alreadyBoughtList
          ? _value.alreadyBoughtList
          : alreadyBoughtList // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      brandList: null == brandList
          ? _value.brandList
          : brandList // ignore: cast_nullable_to_non_nullable
              as List<Brand>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MainPageDataCopyWith<$Res>
    implements $MainPageDataCopyWith<$Res> {
  factory _$$_MainPageDataCopyWith(
          _$_MainPageData value, $Res Function(_$_MainPageData) then) =
      __$$_MainPageDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Advertisement> advertisementList,
      List<Category> popularCategories,
      List<Product> bestDeals,
      List<Product> alreadyBoughtList,
      List<Brand> brandList});
}

/// @nodoc
class __$$_MainPageDataCopyWithImpl<$Res>
    extends _$MainPageDataCopyWithImpl<$Res, _$_MainPageData>
    implements _$$_MainPageDataCopyWith<$Res> {
  __$$_MainPageDataCopyWithImpl(
      _$_MainPageData _value, $Res Function(_$_MainPageData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? advertisementList = null,
    Object? popularCategories = null,
    Object? bestDeals = null,
    Object? alreadyBoughtList = null,
    Object? brandList = null,
  }) {
    return _then(_$_MainPageData(
      advertisementList: null == advertisementList
          ? _value._advertisementList
          : advertisementList // ignore: cast_nullable_to_non_nullable
              as List<Advertisement>,
      popularCategories: null == popularCategories
          ? _value._popularCategories
          : popularCategories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      bestDeals: null == bestDeals
          ? _value._bestDeals
          : bestDeals // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      alreadyBoughtList: null == alreadyBoughtList
          ? _value._alreadyBoughtList
          : alreadyBoughtList // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      brandList: null == brandList
          ? _value._brandList
          : brandList // ignore: cast_nullable_to_non_nullable
              as List<Brand>,
    ));
  }
}

/// @nodoc

class _$_MainPageData implements _MainPageData {
  _$_MainPageData(
      {required final List<Advertisement> advertisementList,
      required final List<Category> popularCategories,
      required final List<Product> bestDeals,
      required final List<Product> alreadyBoughtList,
      required final List<Brand> brandList})
      : _advertisementList = advertisementList,
        _popularCategories = popularCategories,
        _bestDeals = bestDeals,
        _alreadyBoughtList = alreadyBoughtList,
        _brandList = brandList;

  final List<Advertisement> _advertisementList;
  @override
  List<Advertisement> get advertisementList {
    if (_advertisementList is EqualUnmodifiableListView)
      return _advertisementList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_advertisementList);
  }

  final List<Category> _popularCategories;
  @override
  List<Category> get popularCategories {
    if (_popularCategories is EqualUnmodifiableListView)
      return _popularCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_popularCategories);
  }

  final List<Product> _bestDeals;
  @override
  List<Product> get bestDeals {
    if (_bestDeals is EqualUnmodifiableListView) return _bestDeals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bestDeals);
  }

  final List<Product> _alreadyBoughtList;
  @override
  List<Product> get alreadyBoughtList {
    if (_alreadyBoughtList is EqualUnmodifiableListView)
      return _alreadyBoughtList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_alreadyBoughtList);
  }

  final List<Brand> _brandList;
  @override
  List<Brand> get brandList {
    if (_brandList is EqualUnmodifiableListView) return _brandList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_brandList);
  }

  @override
  String toString() {
    return 'MainPageData(advertisementList: $advertisementList, popularCategories: $popularCategories, bestDeals: $bestDeals, alreadyBoughtList: $alreadyBoughtList, brandList: $brandList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MainPageData &&
            const DeepCollectionEquality()
                .equals(other._advertisementList, _advertisementList) &&
            const DeepCollectionEquality()
                .equals(other._popularCategories, _popularCategories) &&
            const DeepCollectionEquality()
                .equals(other._bestDeals, _bestDeals) &&
            const DeepCollectionEquality()
                .equals(other._alreadyBoughtList, _alreadyBoughtList) &&
            const DeepCollectionEquality()
                .equals(other._brandList, _brandList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_advertisementList),
      const DeepCollectionEquality().hash(_popularCategories),
      const DeepCollectionEquality().hash(_bestDeals),
      const DeepCollectionEquality().hash(_alreadyBoughtList),
      const DeepCollectionEquality().hash(_brandList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MainPageDataCopyWith<_$_MainPageData> get copyWith =>
      __$$_MainPageDataCopyWithImpl<_$_MainPageData>(this, _$identity);
}

abstract class _MainPageData implements MainPageData {
  factory _MainPageData(
      {required final List<Advertisement> advertisementList,
      required final List<Category> popularCategories,
      required final List<Product> bestDeals,
      required final List<Product> alreadyBoughtList,
      required final List<Brand> brandList}) = _$_MainPageData;

  @override
  List<Advertisement> get advertisementList;
  @override
  List<Category> get popularCategories;
  @override
  List<Product> get bestDeals;
  @override
  List<Product> get alreadyBoughtList;
  @override
  List<Brand> get brandList;
  @override
  @JsonKey(ignore: true)
  _$$_MainPageDataCopyWith<_$_MainPageData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Brand {
  String get name => throw _privateConstructorUsedError;
  String get logo => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BrandCopyWith<Brand> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandCopyWith<$Res> {
  factory $BrandCopyWith(Brand value, $Res Function(Brand) then) =
      _$BrandCopyWithImpl<$Res, Brand>;
  @useResult
  $Res call({String name, String logo});
}

/// @nodoc
class _$BrandCopyWithImpl<$Res, $Val extends Brand>
    implements $BrandCopyWith<$Res> {
  _$BrandCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? logo = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      logo: null == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BrandCopyWith<$Res> implements $BrandCopyWith<$Res> {
  factory _$$_BrandCopyWith(_$_Brand value, $Res Function(_$_Brand) then) =
      __$$_BrandCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String logo});
}

/// @nodoc
class __$$_BrandCopyWithImpl<$Res> extends _$BrandCopyWithImpl<$Res, _$_Brand>
    implements _$$_BrandCopyWith<$Res> {
  __$$_BrandCopyWithImpl(_$_Brand _value, $Res Function(_$_Brand) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? logo = null,
  }) {
    return _then(_$_Brand(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      logo: null == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Brand implements _Brand {
  const _$_Brand({required this.name, required this.logo});

  @override
  final String name;
  @override
  final String logo;

  @override
  String toString() {
    return 'Brand(name: $name, logo: $logo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Brand &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.logo, logo) || other.logo == logo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, logo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BrandCopyWith<_$_Brand> get copyWith =>
      __$$_BrandCopyWithImpl<_$_Brand>(this, _$identity);
}

abstract class _Brand implements Brand {
  const factory _Brand(
      {required final String name, required final String logo}) = _$_Brand;

  @override
  String get name;
  @override
  String get logo;
  @override
  @JsonKey(ignore: true)
  _$$_BrandCopyWith<_$_Brand> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Bonuses {
  int get points => throw _privateConstructorUsedError;
  int get level => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BonusesCopyWith<Bonuses> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BonusesCopyWith<$Res> {
  factory $BonusesCopyWith(Bonuses value, $Res Function(Bonuses) then) =
      _$BonusesCopyWithImpl<$Res, Bonuses>;
  @useResult
  $Res call({int points, int level});
}

/// @nodoc
class _$BonusesCopyWithImpl<$Res, $Val extends Bonuses>
    implements $BonusesCopyWith<$Res> {
  _$BonusesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? points = null,
    Object? level = null,
  }) {
    return _then(_value.copyWith(
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BonusesCopyWith<$Res> implements $BonusesCopyWith<$Res> {
  factory _$$_BonusesCopyWith(
          _$_Bonuses value, $Res Function(_$_Bonuses) then) =
      __$$_BonusesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int points, int level});
}

/// @nodoc
class __$$_BonusesCopyWithImpl<$Res>
    extends _$BonusesCopyWithImpl<$Res, _$_Bonuses>
    implements _$$_BonusesCopyWith<$Res> {
  __$$_BonusesCopyWithImpl(_$_Bonuses _value, $Res Function(_$_Bonuses) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? points = null,
    Object? level = null,
  }) {
    return _then(_$_Bonuses(
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Bonuses implements _Bonuses {
  _$_Bonuses({required this.points, required this.level});

  @override
  final int points;
  @override
  final int level;

  @override
  String toString() {
    return 'Bonuses(points: $points, level: $level)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Bonuses &&
            (identical(other.points, points) || other.points == points) &&
            (identical(other.level, level) || other.level == level));
  }

  @override
  int get hashCode => Object.hash(runtimeType, points, level);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BonusesCopyWith<_$_Bonuses> get copyWith =>
      __$$_BonusesCopyWithImpl<_$_Bonuses>(this, _$identity);
}

abstract class _Bonuses implements Bonuses {
  factory _Bonuses({required final int points, required final int level}) =
      _$_Bonuses;

  @override
  int get points;
  @override
  int get level;
  @override
  @JsonKey(ignore: true)
  _$$_BonusesCopyWith<_$_Bonuses> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BankCard {}

/// @nodoc
abstract class $BankCardCopyWith<$Res> {
  factory $BankCardCopyWith(BankCard value, $Res Function(BankCard) then) =
      _$BankCardCopyWithImpl<$Res, BankCard>;
}

/// @nodoc
class _$BankCardCopyWithImpl<$Res, $Val extends BankCard>
    implements $BankCardCopyWith<$Res> {
  _$BankCardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_BankCardCopyWith<$Res> {
  factory _$$_BankCardCopyWith(
          _$_BankCard value, $Res Function(_$_BankCard) then) =
      __$$_BankCardCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_BankCardCopyWithImpl<$Res>
    extends _$BankCardCopyWithImpl<$Res, _$_BankCard>
    implements _$$_BankCardCopyWith<$Res> {
  __$$_BankCardCopyWithImpl(
      _$_BankCard _value, $Res Function(_$_BankCard) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_BankCard implements _BankCard {
  _$_BankCard();

  @override
  String toString() {
    return 'BankCard()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_BankCard);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _BankCard implements BankCard {
  factory _BankCard() = _$_BankCard;
}
