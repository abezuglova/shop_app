// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInProgress,
    required TResult Function(bool isUpdateInProgress, List<Product> products,
            ProductsSortType sortType)
        loadSuccess,
    required TResult Function(Object loadError) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInProgress,
    TResult? Function(bool isUpdateInProgress, List<Product> products,
            ProductsSortType sortType)?
        loadSuccess,
    TResult? Function(Object loadError)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(bool isUpdateInProgress, List<Product> products,
            ProductsSortType sortType)?
        loadSuccess,
    TResult Function(Object loadError)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductListLoadInProgress value) loadInProgress,
    required TResult Function(ProductListLoadSuccess value) loadSuccess,
    required TResult Function(ProductListLoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductListLoadInProgress value)? loadInProgress,
    TResult? Function(ProductListLoadSuccess value)? loadSuccess,
    TResult? Function(ProductListLoadFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductListLoadInProgress value)? loadInProgress,
    TResult Function(ProductListLoadSuccess value)? loadSuccess,
    TResult Function(ProductListLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductListStateCopyWith<$Res> {
  factory $ProductListStateCopyWith(
          ProductListState value, $Res Function(ProductListState) then) =
      _$ProductListStateCopyWithImpl<$Res, ProductListState>;
}

/// @nodoc
class _$ProductListStateCopyWithImpl<$Res, $Val extends ProductListState>
    implements $ProductListStateCopyWith<$Res> {
  _$ProductListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ProductListLoadInProgressCopyWith<$Res> {
  factory _$$ProductListLoadInProgressCopyWith(
          _$ProductListLoadInProgress value,
          $Res Function(_$ProductListLoadInProgress) then) =
      __$$ProductListLoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProductListLoadInProgressCopyWithImpl<$Res>
    extends _$ProductListStateCopyWithImpl<$Res, _$ProductListLoadInProgress>
    implements _$$ProductListLoadInProgressCopyWith<$Res> {
  __$$ProductListLoadInProgressCopyWithImpl(_$ProductListLoadInProgress _value,
      $Res Function(_$ProductListLoadInProgress) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProductListLoadInProgress implements ProductListLoadInProgress {
  const _$ProductListLoadInProgress();

  @override
  String toString() {
    return 'ProductListState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductListLoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInProgress,
    required TResult Function(bool isUpdateInProgress, List<Product> products,
            ProductsSortType sortType)
        loadSuccess,
    required TResult Function(Object loadError) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInProgress,
    TResult? Function(bool isUpdateInProgress, List<Product> products,
            ProductsSortType sortType)?
        loadSuccess,
    TResult? Function(Object loadError)? loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(bool isUpdateInProgress, List<Product> products,
            ProductsSortType sortType)?
        loadSuccess,
    TResult Function(Object loadError)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductListLoadInProgress value) loadInProgress,
    required TResult Function(ProductListLoadSuccess value) loadSuccess,
    required TResult Function(ProductListLoadFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductListLoadInProgress value)? loadInProgress,
    TResult? Function(ProductListLoadSuccess value)? loadSuccess,
    TResult? Function(ProductListLoadFailure value)? loadFailure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductListLoadInProgress value)? loadInProgress,
    TResult Function(ProductListLoadSuccess value)? loadSuccess,
    TResult Function(ProductListLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class ProductListLoadInProgress implements ProductListState {
  const factory ProductListLoadInProgress() = _$ProductListLoadInProgress;
}

/// @nodoc
abstract class _$$ProductListLoadSuccessCopyWith<$Res> {
  factory _$$ProductListLoadSuccessCopyWith(_$ProductListLoadSuccess value,
          $Res Function(_$ProductListLoadSuccess) then) =
      __$$ProductListLoadSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {bool isUpdateInProgress,
      List<Product> products,
      ProductsSortType sortType});
}

/// @nodoc
class __$$ProductListLoadSuccessCopyWithImpl<$Res>
    extends _$ProductListStateCopyWithImpl<$Res, _$ProductListLoadSuccess>
    implements _$$ProductListLoadSuccessCopyWith<$Res> {
  __$$ProductListLoadSuccessCopyWithImpl(_$ProductListLoadSuccess _value,
      $Res Function(_$ProductListLoadSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isUpdateInProgress = null,
    Object? products = null,
    Object? sortType = null,
  }) {
    return _then(_$ProductListLoadSuccess(
      isUpdateInProgress: null == isUpdateInProgress
          ? _value.isUpdateInProgress
          : isUpdateInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      sortType: null == sortType
          ? _value.sortType
          : sortType // ignore: cast_nullable_to_non_nullable
              as ProductsSortType,
    ));
  }
}

/// @nodoc

class _$ProductListLoadSuccess implements ProductListLoadSuccess {
  const _$ProductListLoadSuccess(
      {this.isUpdateInProgress = false,
      required final List<Product> products,
      this.sortType = ProductListCubit.defaultSort})
      : _products = products;

  @override
  @JsonKey()
  final bool isUpdateInProgress;
  final List<Product> _products;
  @override
  List<Product> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  @JsonKey()
  final ProductsSortType sortType;

  @override
  String toString() {
    return 'ProductListState.loadSuccess(isUpdateInProgress: $isUpdateInProgress, products: $products, sortType: $sortType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductListLoadSuccess &&
            (identical(other.isUpdateInProgress, isUpdateInProgress) ||
                other.isUpdateInProgress == isUpdateInProgress) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.sortType, sortType) ||
                other.sortType == sortType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isUpdateInProgress,
      const DeepCollectionEquality().hash(_products), sortType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductListLoadSuccessCopyWith<_$ProductListLoadSuccess> get copyWith =>
      __$$ProductListLoadSuccessCopyWithImpl<_$ProductListLoadSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInProgress,
    required TResult Function(bool isUpdateInProgress, List<Product> products,
            ProductsSortType sortType)
        loadSuccess,
    required TResult Function(Object loadError) loadFailure,
  }) {
    return loadSuccess(isUpdateInProgress, products, sortType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInProgress,
    TResult? Function(bool isUpdateInProgress, List<Product> products,
            ProductsSortType sortType)?
        loadSuccess,
    TResult? Function(Object loadError)? loadFailure,
  }) {
    return loadSuccess?.call(isUpdateInProgress, products, sortType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(bool isUpdateInProgress, List<Product> products,
            ProductsSortType sortType)?
        loadSuccess,
    TResult Function(Object loadError)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(isUpdateInProgress, products, sortType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductListLoadInProgress value) loadInProgress,
    required TResult Function(ProductListLoadSuccess value) loadSuccess,
    required TResult Function(ProductListLoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductListLoadInProgress value)? loadInProgress,
    TResult? Function(ProductListLoadSuccess value)? loadSuccess,
    TResult? Function(ProductListLoadFailure value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductListLoadInProgress value)? loadInProgress,
    TResult Function(ProductListLoadSuccess value)? loadSuccess,
    TResult Function(ProductListLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class ProductListLoadSuccess implements ProductListState {
  const factory ProductListLoadSuccess(
      {final bool isUpdateInProgress,
      required final List<Product> products,
      final ProductsSortType sortType}) = _$ProductListLoadSuccess;

  bool get isUpdateInProgress;
  List<Product> get products;
  ProductsSortType get sortType;
  @JsonKey(ignore: true)
  _$$ProductListLoadSuccessCopyWith<_$ProductListLoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProductListLoadFailureCopyWith<$Res> {
  factory _$$ProductListLoadFailureCopyWith(_$ProductListLoadFailure value,
          $Res Function(_$ProductListLoadFailure) then) =
      __$$ProductListLoadFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({Object loadError});
}

/// @nodoc
class __$$ProductListLoadFailureCopyWithImpl<$Res>
    extends _$ProductListStateCopyWithImpl<$Res, _$ProductListLoadFailure>
    implements _$$ProductListLoadFailureCopyWith<$Res> {
  __$$ProductListLoadFailureCopyWithImpl(_$ProductListLoadFailure _value,
      $Res Function(_$ProductListLoadFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loadError = null,
  }) {
    return _then(_$ProductListLoadFailure(
      loadError: null == loadError ? _value.loadError : loadError,
    ));
  }
}

/// @nodoc

class _$ProductListLoadFailure implements ProductListLoadFailure {
  const _$ProductListLoadFailure({required this.loadError});

  @override
  final Object loadError;

  @override
  String toString() {
    return 'ProductListState.loadFailure(loadError: $loadError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductListLoadFailure &&
            const DeepCollectionEquality().equals(other.loadError, loadError));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(loadError));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductListLoadFailureCopyWith<_$ProductListLoadFailure> get copyWith =>
      __$$ProductListLoadFailureCopyWithImpl<_$ProductListLoadFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInProgress,
    required TResult Function(bool isUpdateInProgress, List<Product> products,
            ProductsSortType sortType)
        loadSuccess,
    required TResult Function(Object loadError) loadFailure,
  }) {
    return loadFailure(loadError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInProgress,
    TResult? Function(bool isUpdateInProgress, List<Product> products,
            ProductsSortType sortType)?
        loadSuccess,
    TResult? Function(Object loadError)? loadFailure,
  }) {
    return loadFailure?.call(loadError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(bool isUpdateInProgress, List<Product> products,
            ProductsSortType sortType)?
        loadSuccess,
    TResult Function(Object loadError)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(loadError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductListLoadInProgress value) loadInProgress,
    required TResult Function(ProductListLoadSuccess value) loadSuccess,
    required TResult Function(ProductListLoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductListLoadInProgress value)? loadInProgress,
    TResult? Function(ProductListLoadSuccess value)? loadSuccess,
    TResult? Function(ProductListLoadFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductListLoadInProgress value)? loadInProgress,
    TResult Function(ProductListLoadSuccess value)? loadSuccess,
    TResult Function(ProductListLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class ProductListLoadFailure implements ProductListState {
  const factory ProductListLoadFailure({required final Object loadError}) =
      _$ProductListLoadFailure;

  Object get loadError;
  @JsonKey(ignore: true)
  _$$ProductListLoadFailureCopyWith<_$ProductListLoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
