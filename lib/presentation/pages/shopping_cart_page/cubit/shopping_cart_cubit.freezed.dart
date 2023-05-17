// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shopping_cart_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ShoppingCartState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInProgress,
    required TResult Function(
            bool isUpdateInProgress, ShoppingCart shoppingCart)
        loadSuccess,
    required TResult Function(Object loadError) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInProgress,
    TResult? Function(bool isUpdateInProgress, ShoppingCart shoppingCart)?
        loadSuccess,
    TResult? Function(Object loadError)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(bool isUpdateInProgress, ShoppingCart shoppingCart)?
        loadSuccess,
    TResult Function(Object loadError)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShoppingCartLoadInProgress value) loadInProgress,
    required TResult Function(ShoppingCartLoadSuccess value) loadSuccess,
    required TResult Function(ShoppingCartLoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShoppingCartLoadInProgress value)? loadInProgress,
    TResult? Function(ShoppingCartLoadSuccess value)? loadSuccess,
    TResult? Function(ShoppingCartLoadFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShoppingCartLoadInProgress value)? loadInProgress,
    TResult Function(ShoppingCartLoadSuccess value)? loadSuccess,
    TResult Function(ShoppingCartLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShoppingCartStateCopyWith<$Res> {
  factory $ShoppingCartStateCopyWith(
          ShoppingCartState value, $Res Function(ShoppingCartState) then) =
      _$ShoppingCartStateCopyWithImpl<$Res, ShoppingCartState>;
}

/// @nodoc
class _$ShoppingCartStateCopyWithImpl<$Res, $Val extends ShoppingCartState>
    implements $ShoppingCartStateCopyWith<$Res> {
  _$ShoppingCartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ShoppingCartLoadInProgressCopyWith<$Res> {
  factory _$$ShoppingCartLoadInProgressCopyWith(
          _$ShoppingCartLoadInProgress value,
          $Res Function(_$ShoppingCartLoadInProgress) then) =
      __$$ShoppingCartLoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShoppingCartLoadInProgressCopyWithImpl<$Res>
    extends _$ShoppingCartStateCopyWithImpl<$Res, _$ShoppingCartLoadInProgress>
    implements _$$ShoppingCartLoadInProgressCopyWith<$Res> {
  __$$ShoppingCartLoadInProgressCopyWithImpl(
      _$ShoppingCartLoadInProgress _value,
      $Res Function(_$ShoppingCartLoadInProgress) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ShoppingCartLoadInProgress implements ShoppingCartLoadInProgress {
  const _$ShoppingCartLoadInProgress();

  @override
  String toString() {
    return 'ShoppingCartState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShoppingCartLoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInProgress,
    required TResult Function(
            bool isUpdateInProgress, ShoppingCart shoppingCart)
        loadSuccess,
    required TResult Function(Object loadError) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInProgress,
    TResult? Function(bool isUpdateInProgress, ShoppingCart shoppingCart)?
        loadSuccess,
    TResult? Function(Object loadError)? loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(bool isUpdateInProgress, ShoppingCart shoppingCart)?
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
    required TResult Function(ShoppingCartLoadInProgress value) loadInProgress,
    required TResult Function(ShoppingCartLoadSuccess value) loadSuccess,
    required TResult Function(ShoppingCartLoadFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShoppingCartLoadInProgress value)? loadInProgress,
    TResult? Function(ShoppingCartLoadSuccess value)? loadSuccess,
    TResult? Function(ShoppingCartLoadFailure value)? loadFailure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShoppingCartLoadInProgress value)? loadInProgress,
    TResult Function(ShoppingCartLoadSuccess value)? loadSuccess,
    TResult Function(ShoppingCartLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class ShoppingCartLoadInProgress implements ShoppingCartState {
  const factory ShoppingCartLoadInProgress() = _$ShoppingCartLoadInProgress;
}

/// @nodoc
abstract class _$$ShoppingCartLoadSuccessCopyWith<$Res> {
  factory _$$ShoppingCartLoadSuccessCopyWith(_$ShoppingCartLoadSuccess value,
          $Res Function(_$ShoppingCartLoadSuccess) then) =
      __$$ShoppingCartLoadSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isUpdateInProgress, ShoppingCart shoppingCart});

  $ShoppingCartCopyWith<$Res> get shoppingCart;
}

/// @nodoc
class __$$ShoppingCartLoadSuccessCopyWithImpl<$Res>
    extends _$ShoppingCartStateCopyWithImpl<$Res, _$ShoppingCartLoadSuccess>
    implements _$$ShoppingCartLoadSuccessCopyWith<$Res> {
  __$$ShoppingCartLoadSuccessCopyWithImpl(_$ShoppingCartLoadSuccess _value,
      $Res Function(_$ShoppingCartLoadSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isUpdateInProgress = null,
    Object? shoppingCart = null,
  }) {
    return _then(_$ShoppingCartLoadSuccess(
      isUpdateInProgress: null == isUpdateInProgress
          ? _value.isUpdateInProgress
          : isUpdateInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      shoppingCart: null == shoppingCart
          ? _value.shoppingCart
          : shoppingCart // ignore: cast_nullable_to_non_nullable
              as ShoppingCart,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ShoppingCartCopyWith<$Res> get shoppingCart {
    return $ShoppingCartCopyWith<$Res>(_value.shoppingCart, (value) {
      return _then(_value.copyWith(shoppingCart: value));
    });
  }
}

/// @nodoc

class _$ShoppingCartLoadSuccess implements ShoppingCartLoadSuccess {
  const _$ShoppingCartLoadSuccess(
      {this.isUpdateInProgress = false, required this.shoppingCart});

  @override
  @JsonKey()
  final bool isUpdateInProgress;
  @override
  final ShoppingCart shoppingCart;

  @override
  String toString() {
    return 'ShoppingCartState.loadSuccess(isUpdateInProgress: $isUpdateInProgress, shoppingCart: $shoppingCart)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShoppingCartLoadSuccess &&
            (identical(other.isUpdateInProgress, isUpdateInProgress) ||
                other.isUpdateInProgress == isUpdateInProgress) &&
            (identical(other.shoppingCart, shoppingCart) ||
                other.shoppingCart == shoppingCart));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isUpdateInProgress, shoppingCart);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShoppingCartLoadSuccessCopyWith<_$ShoppingCartLoadSuccess> get copyWith =>
      __$$ShoppingCartLoadSuccessCopyWithImpl<_$ShoppingCartLoadSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInProgress,
    required TResult Function(
            bool isUpdateInProgress, ShoppingCart shoppingCart)
        loadSuccess,
    required TResult Function(Object loadError) loadFailure,
  }) {
    return loadSuccess(isUpdateInProgress, shoppingCart);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInProgress,
    TResult? Function(bool isUpdateInProgress, ShoppingCart shoppingCart)?
        loadSuccess,
    TResult? Function(Object loadError)? loadFailure,
  }) {
    return loadSuccess?.call(isUpdateInProgress, shoppingCart);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(bool isUpdateInProgress, ShoppingCart shoppingCart)?
        loadSuccess,
    TResult Function(Object loadError)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(isUpdateInProgress, shoppingCart);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShoppingCartLoadInProgress value) loadInProgress,
    required TResult Function(ShoppingCartLoadSuccess value) loadSuccess,
    required TResult Function(ShoppingCartLoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShoppingCartLoadInProgress value)? loadInProgress,
    TResult? Function(ShoppingCartLoadSuccess value)? loadSuccess,
    TResult? Function(ShoppingCartLoadFailure value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShoppingCartLoadInProgress value)? loadInProgress,
    TResult Function(ShoppingCartLoadSuccess value)? loadSuccess,
    TResult Function(ShoppingCartLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class ShoppingCartLoadSuccess implements ShoppingCartState {
  const factory ShoppingCartLoadSuccess(
      {final bool isUpdateInProgress,
      required final ShoppingCart shoppingCart}) = _$ShoppingCartLoadSuccess;

  bool get isUpdateInProgress;
  ShoppingCart get shoppingCart;
  @JsonKey(ignore: true)
  _$$ShoppingCartLoadSuccessCopyWith<_$ShoppingCartLoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShoppingCartLoadFailureCopyWith<$Res> {
  factory _$$ShoppingCartLoadFailureCopyWith(_$ShoppingCartLoadFailure value,
          $Res Function(_$ShoppingCartLoadFailure) then) =
      __$$ShoppingCartLoadFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({Object loadError});
}

/// @nodoc
class __$$ShoppingCartLoadFailureCopyWithImpl<$Res>
    extends _$ShoppingCartStateCopyWithImpl<$Res, _$ShoppingCartLoadFailure>
    implements _$$ShoppingCartLoadFailureCopyWith<$Res> {
  __$$ShoppingCartLoadFailureCopyWithImpl(_$ShoppingCartLoadFailure _value,
      $Res Function(_$ShoppingCartLoadFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loadError = null,
  }) {
    return _then(_$ShoppingCartLoadFailure(
      loadError: null == loadError ? _value.loadError : loadError,
    ));
  }
}

/// @nodoc

class _$ShoppingCartLoadFailure implements ShoppingCartLoadFailure {
  const _$ShoppingCartLoadFailure({required this.loadError});

  @override
  final Object loadError;

  @override
  String toString() {
    return 'ShoppingCartState.loadFailure(loadError: $loadError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShoppingCartLoadFailure &&
            const DeepCollectionEquality().equals(other.loadError, loadError));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(loadError));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShoppingCartLoadFailureCopyWith<_$ShoppingCartLoadFailure> get copyWith =>
      __$$ShoppingCartLoadFailureCopyWithImpl<_$ShoppingCartLoadFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInProgress,
    required TResult Function(
            bool isUpdateInProgress, ShoppingCart shoppingCart)
        loadSuccess,
    required TResult Function(Object loadError) loadFailure,
  }) {
    return loadFailure(loadError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInProgress,
    TResult? Function(bool isUpdateInProgress, ShoppingCart shoppingCart)?
        loadSuccess,
    TResult? Function(Object loadError)? loadFailure,
  }) {
    return loadFailure?.call(loadError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(bool isUpdateInProgress, ShoppingCart shoppingCart)?
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
    required TResult Function(ShoppingCartLoadInProgress value) loadInProgress,
    required TResult Function(ShoppingCartLoadSuccess value) loadSuccess,
    required TResult Function(ShoppingCartLoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShoppingCartLoadInProgress value)? loadInProgress,
    TResult? Function(ShoppingCartLoadSuccess value)? loadSuccess,
    TResult? Function(ShoppingCartLoadFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShoppingCartLoadInProgress value)? loadInProgress,
    TResult Function(ShoppingCartLoadSuccess value)? loadSuccess,
    TResult Function(ShoppingCartLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class ShoppingCartLoadFailure implements ShoppingCartState {
  const factory ShoppingCartLoadFailure({required final Object loadError}) =
      _$ShoppingCartLoadFailure;

  Object get loadError;
  @JsonKey(ignore: true)
  _$$ShoppingCartLoadFailureCopyWith<_$ShoppingCartLoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
