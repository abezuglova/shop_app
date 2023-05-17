// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'discounts_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DiscountsState {
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
    required TResult Function(DiscountsLoadInProgress value) loadInProgress,
    required TResult Function(DiscountsLoadSuccess value) loadSuccess,
    required TResult Function(DiscountsLoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DiscountsLoadInProgress value)? loadInProgress,
    TResult? Function(DiscountsLoadSuccess value)? loadSuccess,
    TResult? Function(DiscountsLoadFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DiscountsLoadInProgress value)? loadInProgress,
    TResult Function(DiscountsLoadSuccess value)? loadSuccess,
    TResult Function(DiscountsLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscountsStateCopyWith<$Res> {
  factory $DiscountsStateCopyWith(
          DiscountsState value, $Res Function(DiscountsState) then) =
      _$DiscountsStateCopyWithImpl<$Res, DiscountsState>;
}

/// @nodoc
class _$DiscountsStateCopyWithImpl<$Res, $Val extends DiscountsState>
    implements $DiscountsStateCopyWith<$Res> {
  _$DiscountsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DiscountsLoadInProgressCopyWith<$Res> {
  factory _$$DiscountsLoadInProgressCopyWith(_$DiscountsLoadInProgress value,
          $Res Function(_$DiscountsLoadInProgress) then) =
      __$$DiscountsLoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DiscountsLoadInProgressCopyWithImpl<$Res>
    extends _$DiscountsStateCopyWithImpl<$Res, _$DiscountsLoadInProgress>
    implements _$$DiscountsLoadInProgressCopyWith<$Res> {
  __$$DiscountsLoadInProgressCopyWithImpl(_$DiscountsLoadInProgress _value,
      $Res Function(_$DiscountsLoadInProgress) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DiscountsLoadInProgress implements DiscountsLoadInProgress {
  const _$DiscountsLoadInProgress();

  @override
  String toString() {
    return 'DiscountsState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiscountsLoadInProgress);
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
    required TResult Function(DiscountsLoadInProgress value) loadInProgress,
    required TResult Function(DiscountsLoadSuccess value) loadSuccess,
    required TResult Function(DiscountsLoadFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DiscountsLoadInProgress value)? loadInProgress,
    TResult? Function(DiscountsLoadSuccess value)? loadSuccess,
    TResult? Function(DiscountsLoadFailure value)? loadFailure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DiscountsLoadInProgress value)? loadInProgress,
    TResult Function(DiscountsLoadSuccess value)? loadSuccess,
    TResult Function(DiscountsLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class DiscountsLoadInProgress implements DiscountsState {
  const factory DiscountsLoadInProgress() = _$DiscountsLoadInProgress;
}

/// @nodoc
abstract class _$$DiscountsLoadSuccessCopyWith<$Res> {
  factory _$$DiscountsLoadSuccessCopyWith(_$DiscountsLoadSuccess value,
          $Res Function(_$DiscountsLoadSuccess) then) =
      __$$DiscountsLoadSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isUpdateInProgress, List<Product> products});
}

/// @nodoc
class __$$DiscountsLoadSuccessCopyWithImpl<$Res>
    extends _$DiscountsStateCopyWithImpl<$Res, _$DiscountsLoadSuccess>
    implements _$$DiscountsLoadSuccessCopyWith<$Res> {
  __$$DiscountsLoadSuccessCopyWithImpl(_$DiscountsLoadSuccess _value,
      $Res Function(_$DiscountsLoadSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isUpdateInProgress = null,
    Object? products = null,
  }) {
    return _then(_$DiscountsLoadSuccess(
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

class _$DiscountsLoadSuccess implements DiscountsLoadSuccess {
  const _$DiscountsLoadSuccess(
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
    return 'DiscountsState.loadSuccess(isUpdateInProgress: $isUpdateInProgress, products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiscountsLoadSuccess &&
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
  _$$DiscountsLoadSuccessCopyWith<_$DiscountsLoadSuccess> get copyWith =>
      __$$DiscountsLoadSuccessCopyWithImpl<_$DiscountsLoadSuccess>(
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
    required TResult Function(DiscountsLoadInProgress value) loadInProgress,
    required TResult Function(DiscountsLoadSuccess value) loadSuccess,
    required TResult Function(DiscountsLoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DiscountsLoadInProgress value)? loadInProgress,
    TResult? Function(DiscountsLoadSuccess value)? loadSuccess,
    TResult? Function(DiscountsLoadFailure value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DiscountsLoadInProgress value)? loadInProgress,
    TResult Function(DiscountsLoadSuccess value)? loadSuccess,
    TResult Function(DiscountsLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class DiscountsLoadSuccess implements DiscountsState {
  const factory DiscountsLoadSuccess(
      {final bool isUpdateInProgress,
      required final List<Product> products}) = _$DiscountsLoadSuccess;

  bool get isUpdateInProgress;
  List<Product> get products;
  @JsonKey(ignore: true)
  _$$DiscountsLoadSuccessCopyWith<_$DiscountsLoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DiscountsLoadFailureCopyWith<$Res> {
  factory _$$DiscountsLoadFailureCopyWith(_$DiscountsLoadFailure value,
          $Res Function(_$DiscountsLoadFailure) then) =
      __$$DiscountsLoadFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({Object loadError});
}

/// @nodoc
class __$$DiscountsLoadFailureCopyWithImpl<$Res>
    extends _$DiscountsStateCopyWithImpl<$Res, _$DiscountsLoadFailure>
    implements _$$DiscountsLoadFailureCopyWith<$Res> {
  __$$DiscountsLoadFailureCopyWithImpl(_$DiscountsLoadFailure _value,
      $Res Function(_$DiscountsLoadFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loadError = null,
  }) {
    return _then(_$DiscountsLoadFailure(
      loadError: null == loadError ? _value.loadError : loadError,
    ));
  }
}

/// @nodoc

class _$DiscountsLoadFailure implements DiscountsLoadFailure {
  const _$DiscountsLoadFailure({required this.loadError});

  @override
  final Object loadError;

  @override
  String toString() {
    return 'DiscountsState.loadFailure(loadError: $loadError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiscountsLoadFailure &&
            const DeepCollectionEquality().equals(other.loadError, loadError));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(loadError));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DiscountsLoadFailureCopyWith<_$DiscountsLoadFailure> get copyWith =>
      __$$DiscountsLoadFailureCopyWithImpl<_$DiscountsLoadFailure>(
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
    required TResult Function(DiscountsLoadInProgress value) loadInProgress,
    required TResult Function(DiscountsLoadSuccess value) loadSuccess,
    required TResult Function(DiscountsLoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DiscountsLoadInProgress value)? loadInProgress,
    TResult? Function(DiscountsLoadSuccess value)? loadSuccess,
    TResult? Function(DiscountsLoadFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DiscountsLoadInProgress value)? loadInProgress,
    TResult Function(DiscountsLoadSuccess value)? loadSuccess,
    TResult Function(DiscountsLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class DiscountsLoadFailure implements DiscountsState {
  const factory DiscountsLoadFailure({required final Object loadError}) =
      _$DiscountsLoadFailure;

  Object get loadError;
  @JsonKey(ignore: true)
  _$$DiscountsLoadFailureCopyWith<_$DiscountsLoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
