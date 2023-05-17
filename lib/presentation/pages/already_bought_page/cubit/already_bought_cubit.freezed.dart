// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'already_bought_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AlreadyBoughtState {
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
    required TResult Function(AlreadyBoughtLoadInProgress value) loadInProgress,
    required TResult Function(AlreadyBoughtLoadSuccess value) loadSuccess,
    required TResult Function(AlreadyBoughtLoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AlreadyBoughtLoadInProgress value)? loadInProgress,
    TResult? Function(AlreadyBoughtLoadSuccess value)? loadSuccess,
    TResult? Function(AlreadyBoughtLoadFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AlreadyBoughtLoadInProgress value)? loadInProgress,
    TResult Function(AlreadyBoughtLoadSuccess value)? loadSuccess,
    TResult Function(AlreadyBoughtLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlreadyBoughtStateCopyWith<$Res> {
  factory $AlreadyBoughtStateCopyWith(
          AlreadyBoughtState value, $Res Function(AlreadyBoughtState) then) =
      _$AlreadyBoughtStateCopyWithImpl<$Res, AlreadyBoughtState>;
}

/// @nodoc
class _$AlreadyBoughtStateCopyWithImpl<$Res, $Val extends AlreadyBoughtState>
    implements $AlreadyBoughtStateCopyWith<$Res> {
  _$AlreadyBoughtStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AlreadyBoughtLoadInProgressCopyWith<$Res> {
  factory _$$AlreadyBoughtLoadInProgressCopyWith(
          _$AlreadyBoughtLoadInProgress value,
          $Res Function(_$AlreadyBoughtLoadInProgress) then) =
      __$$AlreadyBoughtLoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AlreadyBoughtLoadInProgressCopyWithImpl<$Res>
    extends _$AlreadyBoughtStateCopyWithImpl<$Res,
        _$AlreadyBoughtLoadInProgress>
    implements _$$AlreadyBoughtLoadInProgressCopyWith<$Res> {
  __$$AlreadyBoughtLoadInProgressCopyWithImpl(
      _$AlreadyBoughtLoadInProgress _value,
      $Res Function(_$AlreadyBoughtLoadInProgress) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AlreadyBoughtLoadInProgress implements AlreadyBoughtLoadInProgress {
  const _$AlreadyBoughtLoadInProgress();

  @override
  String toString() {
    return 'AlreadyBoughtState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlreadyBoughtLoadInProgress);
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
    required TResult Function(AlreadyBoughtLoadInProgress value) loadInProgress,
    required TResult Function(AlreadyBoughtLoadSuccess value) loadSuccess,
    required TResult Function(AlreadyBoughtLoadFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AlreadyBoughtLoadInProgress value)? loadInProgress,
    TResult? Function(AlreadyBoughtLoadSuccess value)? loadSuccess,
    TResult? Function(AlreadyBoughtLoadFailure value)? loadFailure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AlreadyBoughtLoadInProgress value)? loadInProgress,
    TResult Function(AlreadyBoughtLoadSuccess value)? loadSuccess,
    TResult Function(AlreadyBoughtLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class AlreadyBoughtLoadInProgress implements AlreadyBoughtState {
  const factory AlreadyBoughtLoadInProgress() = _$AlreadyBoughtLoadInProgress;
}

/// @nodoc
abstract class _$$AlreadyBoughtLoadSuccessCopyWith<$Res> {
  factory _$$AlreadyBoughtLoadSuccessCopyWith(_$AlreadyBoughtLoadSuccess value,
          $Res Function(_$AlreadyBoughtLoadSuccess) then) =
      __$$AlreadyBoughtLoadSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isUpdateInProgress, List<Product> products});
}

/// @nodoc
class __$$AlreadyBoughtLoadSuccessCopyWithImpl<$Res>
    extends _$AlreadyBoughtStateCopyWithImpl<$Res, _$AlreadyBoughtLoadSuccess>
    implements _$$AlreadyBoughtLoadSuccessCopyWith<$Res> {
  __$$AlreadyBoughtLoadSuccessCopyWithImpl(_$AlreadyBoughtLoadSuccess _value,
      $Res Function(_$AlreadyBoughtLoadSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isUpdateInProgress = null,
    Object? products = null,
  }) {
    return _then(_$AlreadyBoughtLoadSuccess(
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

class _$AlreadyBoughtLoadSuccess implements AlreadyBoughtLoadSuccess {
  const _$AlreadyBoughtLoadSuccess(
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
    return 'AlreadyBoughtState.loadSuccess(isUpdateInProgress: $isUpdateInProgress, products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlreadyBoughtLoadSuccess &&
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
  _$$AlreadyBoughtLoadSuccessCopyWith<_$AlreadyBoughtLoadSuccess>
      get copyWith =>
          __$$AlreadyBoughtLoadSuccessCopyWithImpl<_$AlreadyBoughtLoadSuccess>(
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
    required TResult Function(AlreadyBoughtLoadInProgress value) loadInProgress,
    required TResult Function(AlreadyBoughtLoadSuccess value) loadSuccess,
    required TResult Function(AlreadyBoughtLoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AlreadyBoughtLoadInProgress value)? loadInProgress,
    TResult? Function(AlreadyBoughtLoadSuccess value)? loadSuccess,
    TResult? Function(AlreadyBoughtLoadFailure value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AlreadyBoughtLoadInProgress value)? loadInProgress,
    TResult Function(AlreadyBoughtLoadSuccess value)? loadSuccess,
    TResult Function(AlreadyBoughtLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class AlreadyBoughtLoadSuccess implements AlreadyBoughtState {
  const factory AlreadyBoughtLoadSuccess(
      {final bool isUpdateInProgress,
      required final List<Product> products}) = _$AlreadyBoughtLoadSuccess;

  bool get isUpdateInProgress;
  List<Product> get products;
  @JsonKey(ignore: true)
  _$$AlreadyBoughtLoadSuccessCopyWith<_$AlreadyBoughtLoadSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AlreadyBoughtLoadFailureCopyWith<$Res> {
  factory _$$AlreadyBoughtLoadFailureCopyWith(_$AlreadyBoughtLoadFailure value,
          $Res Function(_$AlreadyBoughtLoadFailure) then) =
      __$$AlreadyBoughtLoadFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({Object loadError});
}

/// @nodoc
class __$$AlreadyBoughtLoadFailureCopyWithImpl<$Res>
    extends _$AlreadyBoughtStateCopyWithImpl<$Res, _$AlreadyBoughtLoadFailure>
    implements _$$AlreadyBoughtLoadFailureCopyWith<$Res> {
  __$$AlreadyBoughtLoadFailureCopyWithImpl(_$AlreadyBoughtLoadFailure _value,
      $Res Function(_$AlreadyBoughtLoadFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loadError = null,
  }) {
    return _then(_$AlreadyBoughtLoadFailure(
      loadError: null == loadError ? _value.loadError : loadError,
    ));
  }
}

/// @nodoc

class _$AlreadyBoughtLoadFailure implements AlreadyBoughtLoadFailure {
  const _$AlreadyBoughtLoadFailure({required this.loadError});

  @override
  final Object loadError;

  @override
  String toString() {
    return 'AlreadyBoughtState.loadFailure(loadError: $loadError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlreadyBoughtLoadFailure &&
            const DeepCollectionEquality().equals(other.loadError, loadError));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(loadError));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AlreadyBoughtLoadFailureCopyWith<_$AlreadyBoughtLoadFailure>
      get copyWith =>
          __$$AlreadyBoughtLoadFailureCopyWithImpl<_$AlreadyBoughtLoadFailure>(
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
    required TResult Function(AlreadyBoughtLoadInProgress value) loadInProgress,
    required TResult Function(AlreadyBoughtLoadSuccess value) loadSuccess,
    required TResult Function(AlreadyBoughtLoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AlreadyBoughtLoadInProgress value)? loadInProgress,
    TResult? Function(AlreadyBoughtLoadSuccess value)? loadSuccess,
    TResult? Function(AlreadyBoughtLoadFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AlreadyBoughtLoadInProgress value)? loadInProgress,
    TResult Function(AlreadyBoughtLoadSuccess value)? loadSuccess,
    TResult Function(AlreadyBoughtLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class AlreadyBoughtLoadFailure implements AlreadyBoughtState {
  const factory AlreadyBoughtLoadFailure({required final Object loadError}) =
      _$AlreadyBoughtLoadFailure;

  Object get loadError;
  @JsonKey(ignore: true)
  _$$AlreadyBoughtLoadFailureCopyWith<_$AlreadyBoughtLoadFailure>
      get copyWith => throw _privateConstructorUsedError;
}
