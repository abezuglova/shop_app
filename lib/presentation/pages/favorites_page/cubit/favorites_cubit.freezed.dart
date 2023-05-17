// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorites_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FavoritesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInProgress,
    required TResult Function(bool isUpdateInProgress, List<Product> products)
        loadSuccess,
    required TResult Function(Object loadError) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInProgress,
    TResult? Function(bool isUpdateInProgress, List<Product> products)?
        loadSuccess,
    TResult? Function(Object loadError)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(bool isUpdateInProgress, List<Product> products)?
        loadSuccess,
    TResult Function(Object loadError)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FavoritesLoadInProgress value) loadInProgress,
    required TResult Function(FavoritesLoadSuccess value) loadSuccess,
    required TResult Function(FavoritesLoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FavoritesLoadInProgress value)? loadInProgress,
    TResult? Function(FavoritesLoadSuccess value)? loadSuccess,
    TResult? Function(FavoritesLoadFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoritesLoadInProgress value)? loadInProgress,
    TResult Function(FavoritesLoadSuccess value)? loadSuccess,
    TResult Function(FavoritesLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoritesStateCopyWith<$Res> {
  factory $FavoritesStateCopyWith(
          FavoritesState value, $Res Function(FavoritesState) then) =
      _$FavoritesStateCopyWithImpl<$Res, FavoritesState>;
}

/// @nodoc
class _$FavoritesStateCopyWithImpl<$Res, $Val extends FavoritesState>
    implements $FavoritesStateCopyWith<$Res> {
  _$FavoritesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FavoritesLoadInProgressCopyWith<$Res> {
  factory _$$FavoritesLoadInProgressCopyWith(_$FavoritesLoadInProgress value,
          $Res Function(_$FavoritesLoadInProgress) then) =
      __$$FavoritesLoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FavoritesLoadInProgressCopyWithImpl<$Res>
    extends _$FavoritesStateCopyWithImpl<$Res, _$FavoritesLoadInProgress>
    implements _$$FavoritesLoadInProgressCopyWith<$Res> {
  __$$FavoritesLoadInProgressCopyWithImpl(_$FavoritesLoadInProgress _value,
      $Res Function(_$FavoritesLoadInProgress) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FavoritesLoadInProgress implements FavoritesLoadInProgress {
  const _$FavoritesLoadInProgress();

  @override
  String toString() {
    return 'FavoritesState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoritesLoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInProgress,
    required TResult Function(bool isUpdateInProgress, List<Product> products)
        loadSuccess,
    required TResult Function(Object loadError) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInProgress,
    TResult? Function(bool isUpdateInProgress, List<Product> products)?
        loadSuccess,
    TResult? Function(Object loadError)? loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(bool isUpdateInProgress, List<Product> products)?
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
    required TResult Function(FavoritesLoadInProgress value) loadInProgress,
    required TResult Function(FavoritesLoadSuccess value) loadSuccess,
    required TResult Function(FavoritesLoadFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FavoritesLoadInProgress value)? loadInProgress,
    TResult? Function(FavoritesLoadSuccess value)? loadSuccess,
    TResult? Function(FavoritesLoadFailure value)? loadFailure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoritesLoadInProgress value)? loadInProgress,
    TResult Function(FavoritesLoadSuccess value)? loadSuccess,
    TResult Function(FavoritesLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class FavoritesLoadInProgress implements FavoritesState {
  const factory FavoritesLoadInProgress() = _$FavoritesLoadInProgress;
}

/// @nodoc
abstract class _$$FavoritesLoadSuccessCopyWith<$Res> {
  factory _$$FavoritesLoadSuccessCopyWith(_$FavoritesLoadSuccess value,
          $Res Function(_$FavoritesLoadSuccess) then) =
      __$$FavoritesLoadSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isUpdateInProgress, List<Product> products});
}

/// @nodoc
class __$$FavoritesLoadSuccessCopyWithImpl<$Res>
    extends _$FavoritesStateCopyWithImpl<$Res, _$FavoritesLoadSuccess>
    implements _$$FavoritesLoadSuccessCopyWith<$Res> {
  __$$FavoritesLoadSuccessCopyWithImpl(_$FavoritesLoadSuccess _value,
      $Res Function(_$FavoritesLoadSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isUpdateInProgress = null,
    Object? products = null,
  }) {
    return _then(_$FavoritesLoadSuccess(
      isUpdateInProgress: null == isUpdateInProgress
          ? _value.isUpdateInProgress
          : isUpdateInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc

class _$FavoritesLoadSuccess implements FavoritesLoadSuccess {
  const _$FavoritesLoadSuccess(
      {this.isUpdateInProgress = false, required final List<Product> products})
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
  String toString() {
    return 'FavoritesState.loadSuccess(isUpdateInProgress: $isUpdateInProgress, products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoritesLoadSuccess &&
            (identical(other.isUpdateInProgress, isUpdateInProgress) ||
                other.isUpdateInProgress == isUpdateInProgress) &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isUpdateInProgress,
      const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoritesLoadSuccessCopyWith<_$FavoritesLoadSuccess> get copyWith =>
      __$$FavoritesLoadSuccessCopyWithImpl<_$FavoritesLoadSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInProgress,
    required TResult Function(bool isUpdateInProgress, List<Product> products)
        loadSuccess,
    required TResult Function(Object loadError) loadFailure,
  }) {
    return loadSuccess(isUpdateInProgress, products);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInProgress,
    TResult? Function(bool isUpdateInProgress, List<Product> products)?
        loadSuccess,
    TResult? Function(Object loadError)? loadFailure,
  }) {
    return loadSuccess?.call(isUpdateInProgress, products);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(bool isUpdateInProgress, List<Product> products)?
        loadSuccess,
    TResult Function(Object loadError)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(isUpdateInProgress, products);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FavoritesLoadInProgress value) loadInProgress,
    required TResult Function(FavoritesLoadSuccess value) loadSuccess,
    required TResult Function(FavoritesLoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FavoritesLoadInProgress value)? loadInProgress,
    TResult? Function(FavoritesLoadSuccess value)? loadSuccess,
    TResult? Function(FavoritesLoadFailure value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoritesLoadInProgress value)? loadInProgress,
    TResult Function(FavoritesLoadSuccess value)? loadSuccess,
    TResult Function(FavoritesLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class FavoritesLoadSuccess implements FavoritesState {
  const factory FavoritesLoadSuccess(
      {final bool isUpdateInProgress,
      required final List<Product> products}) = _$FavoritesLoadSuccess;

  bool get isUpdateInProgress;
  List<Product> get products;
  @JsonKey(ignore: true)
  _$$FavoritesLoadSuccessCopyWith<_$FavoritesLoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FavoritesLoadFailureCopyWith<$Res> {
  factory _$$FavoritesLoadFailureCopyWith(_$FavoritesLoadFailure value,
          $Res Function(_$FavoritesLoadFailure) then) =
      __$$FavoritesLoadFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({Object loadError});
}

/// @nodoc
class __$$FavoritesLoadFailureCopyWithImpl<$Res>
    extends _$FavoritesStateCopyWithImpl<$Res, _$FavoritesLoadFailure>
    implements _$$FavoritesLoadFailureCopyWith<$Res> {
  __$$FavoritesLoadFailureCopyWithImpl(_$FavoritesLoadFailure _value,
      $Res Function(_$FavoritesLoadFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loadError = null,
  }) {
    return _then(_$FavoritesLoadFailure(
      loadError: null == loadError ? _value.loadError : loadError,
    ));
  }
}

/// @nodoc

class _$FavoritesLoadFailure implements FavoritesLoadFailure {
  const _$FavoritesLoadFailure({required this.loadError});

  @override
  final Object loadError;

  @override
  String toString() {
    return 'FavoritesState.loadFailure(loadError: $loadError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoritesLoadFailure &&
            const DeepCollectionEquality().equals(other.loadError, loadError));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(loadError));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoritesLoadFailureCopyWith<_$FavoritesLoadFailure> get copyWith =>
      __$$FavoritesLoadFailureCopyWithImpl<_$FavoritesLoadFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInProgress,
    required TResult Function(bool isUpdateInProgress, List<Product> products)
        loadSuccess,
    required TResult Function(Object loadError) loadFailure,
  }) {
    return loadFailure(loadError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInProgress,
    TResult? Function(bool isUpdateInProgress, List<Product> products)?
        loadSuccess,
    TResult? Function(Object loadError)? loadFailure,
  }) {
    return loadFailure?.call(loadError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(bool isUpdateInProgress, List<Product> products)?
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
    required TResult Function(FavoritesLoadInProgress value) loadInProgress,
    required TResult Function(FavoritesLoadSuccess value) loadSuccess,
    required TResult Function(FavoritesLoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FavoritesLoadInProgress value)? loadInProgress,
    TResult? Function(FavoritesLoadSuccess value)? loadSuccess,
    TResult? Function(FavoritesLoadFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoritesLoadInProgress value)? loadInProgress,
    TResult Function(FavoritesLoadSuccess value)? loadSuccess,
    TResult Function(FavoritesLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class FavoritesLoadFailure implements FavoritesState {
  const factory FavoritesLoadFailure({required final Object loadError}) =
      _$FavoritesLoadFailure;

  Object get loadError;
  @JsonKey(ignore: true)
  _$$FavoritesLoadFailureCopyWith<_$FavoritesLoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
