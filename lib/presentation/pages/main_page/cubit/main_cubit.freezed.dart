// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MainState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInProgress,
    required TResult Function(
            bool isUpdateInProgress,
            List<Advertisement> advertisementList,
            List<Product> alreadyBoughtProductList,
            List<Product> bestDealsProductList,
            List<Brand> brandList,
            List<Category> popularCategories)
        loadSuccess,
    required TResult Function(Object loadError) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInProgress,
    TResult? Function(
            bool isUpdateInProgress,
            List<Advertisement> advertisementList,
            List<Product> alreadyBoughtProductList,
            List<Product> bestDealsProductList,
            List<Brand> brandList,
            List<Category> popularCategories)?
        loadSuccess,
    TResult? Function(Object loadError)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(
            bool isUpdateInProgress,
            List<Advertisement> advertisementList,
            List<Product> alreadyBoughtProductList,
            List<Product> bestDealsProductList,
            List<Brand> brandList,
            List<Category> popularCategories)?
        loadSuccess,
    TResult Function(Object loadError)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MainLoadInProgress value) loadInProgress,
    required TResult Function(MainLoadSuccess value) loadSuccess,
    required TResult Function(MainLoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MainLoadInProgress value)? loadInProgress,
    TResult? Function(MainLoadSuccess value)? loadSuccess,
    TResult? Function(MainLoadFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainLoadInProgress value)? loadInProgress,
    TResult Function(MainLoadSuccess value)? loadSuccess,
    TResult Function(MainLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainStateCopyWith<$Res> {
  factory $MainStateCopyWith(MainState value, $Res Function(MainState) then) =
      _$MainStateCopyWithImpl<$Res, MainState>;
}

/// @nodoc
class _$MainStateCopyWithImpl<$Res, $Val extends MainState>
    implements $MainStateCopyWith<$Res> {
  _$MainStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MainLoadInProgressCopyWith<$Res> {
  factory _$$MainLoadInProgressCopyWith(_$MainLoadInProgress value,
          $Res Function(_$MainLoadInProgress) then) =
      __$$MainLoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MainLoadInProgressCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$MainLoadInProgress>
    implements _$$MainLoadInProgressCopyWith<$Res> {
  __$$MainLoadInProgressCopyWithImpl(
      _$MainLoadInProgress _value, $Res Function(_$MainLoadInProgress) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MainLoadInProgress implements MainLoadInProgress {
  const _$MainLoadInProgress();

  @override
  String toString() {
    return 'MainState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MainLoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInProgress,
    required TResult Function(
            bool isUpdateInProgress,
            List<Advertisement> advertisementList,
            List<Product> alreadyBoughtProductList,
            List<Product> bestDealsProductList,
            List<Brand> brandList,
            List<Category> popularCategories)
        loadSuccess,
    required TResult Function(Object loadError) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInProgress,
    TResult? Function(
            bool isUpdateInProgress,
            List<Advertisement> advertisementList,
            List<Product> alreadyBoughtProductList,
            List<Product> bestDealsProductList,
            List<Brand> brandList,
            List<Category> popularCategories)?
        loadSuccess,
    TResult? Function(Object loadError)? loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(
            bool isUpdateInProgress,
            List<Advertisement> advertisementList,
            List<Product> alreadyBoughtProductList,
            List<Product> bestDealsProductList,
            List<Brand> brandList,
            List<Category> popularCategories)?
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
    required TResult Function(MainLoadInProgress value) loadInProgress,
    required TResult Function(MainLoadSuccess value) loadSuccess,
    required TResult Function(MainLoadFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MainLoadInProgress value)? loadInProgress,
    TResult? Function(MainLoadSuccess value)? loadSuccess,
    TResult? Function(MainLoadFailure value)? loadFailure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainLoadInProgress value)? loadInProgress,
    TResult Function(MainLoadSuccess value)? loadSuccess,
    TResult Function(MainLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class MainLoadInProgress implements MainState {
  const factory MainLoadInProgress() = _$MainLoadInProgress;
}

/// @nodoc
abstract class _$$MainLoadSuccessCopyWith<$Res> {
  factory _$$MainLoadSuccessCopyWith(
          _$MainLoadSuccess value, $Res Function(_$MainLoadSuccess) then) =
      __$$MainLoadSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {bool isUpdateInProgress,
      List<Advertisement> advertisementList,
      List<Product> alreadyBoughtProductList,
      List<Product> bestDealsProductList,
      List<Brand> brandList,
      List<Category> popularCategories});
}

/// @nodoc
class __$$MainLoadSuccessCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$MainLoadSuccess>
    implements _$$MainLoadSuccessCopyWith<$Res> {
  __$$MainLoadSuccessCopyWithImpl(
      _$MainLoadSuccess _value, $Res Function(_$MainLoadSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isUpdateInProgress = null,
    Object? advertisementList = null,
    Object? alreadyBoughtProductList = null,
    Object? bestDealsProductList = null,
    Object? brandList = null,
    Object? popularCategories = null,
  }) {
    return _then(_$MainLoadSuccess(
      isUpdateInProgress: null == isUpdateInProgress
          ? _value.isUpdateInProgress
          : isUpdateInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      advertisementList: null == advertisementList
          ? _value._advertisementList
          : advertisementList // ignore: cast_nullable_to_non_nullable
              as List<Advertisement>,
      alreadyBoughtProductList: null == alreadyBoughtProductList
          ? _value._alreadyBoughtProductList
          : alreadyBoughtProductList // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      bestDealsProductList: null == bestDealsProductList
          ? _value._bestDealsProductList
          : bestDealsProductList // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      brandList: null == brandList
          ? _value._brandList
          : brandList // ignore: cast_nullable_to_non_nullable
              as List<Brand>,
      popularCategories: null == popularCategories
          ? _value._popularCategories
          : popularCategories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
    ));
  }
}

/// @nodoc

class _$MainLoadSuccess implements MainLoadSuccess {
  const _$MainLoadSuccess(
      {this.isUpdateInProgress = false,
      required final List<Advertisement> advertisementList,
      required final List<Product> alreadyBoughtProductList,
      required final List<Product> bestDealsProductList,
      required final List<Brand> brandList,
      required final List<Category> popularCategories})
      : _advertisementList = advertisementList,
        _alreadyBoughtProductList = alreadyBoughtProductList,
        _bestDealsProductList = bestDealsProductList,
        _brandList = brandList,
        _popularCategories = popularCategories;

  @override
  @JsonKey()
  final bool isUpdateInProgress;
  final List<Advertisement> _advertisementList;
  @override
  List<Advertisement> get advertisementList {
    if (_advertisementList is EqualUnmodifiableListView)
      return _advertisementList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_advertisementList);
  }

  final List<Product> _alreadyBoughtProductList;
  @override
  List<Product> get alreadyBoughtProductList {
    if (_alreadyBoughtProductList is EqualUnmodifiableListView)
      return _alreadyBoughtProductList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_alreadyBoughtProductList);
  }

  final List<Product> _bestDealsProductList;
  @override
  List<Product> get bestDealsProductList {
    if (_bestDealsProductList is EqualUnmodifiableListView)
      return _bestDealsProductList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bestDealsProductList);
  }

  final List<Brand> _brandList;
  @override
  List<Brand> get brandList {
    if (_brandList is EqualUnmodifiableListView) return _brandList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_brandList);
  }

  final List<Category> _popularCategories;
  @override
  List<Category> get popularCategories {
    if (_popularCategories is EqualUnmodifiableListView)
      return _popularCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_popularCategories);
  }

  @override
  String toString() {
    return 'MainState.loadSuccess(isUpdateInProgress: $isUpdateInProgress, advertisementList: $advertisementList, alreadyBoughtProductList: $alreadyBoughtProductList, bestDealsProductList: $bestDealsProductList, brandList: $brandList, popularCategories: $popularCategories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainLoadSuccess &&
            (identical(other.isUpdateInProgress, isUpdateInProgress) ||
                other.isUpdateInProgress == isUpdateInProgress) &&
            const DeepCollectionEquality()
                .equals(other._advertisementList, _advertisementList) &&
            const DeepCollectionEquality().equals(
                other._alreadyBoughtProductList, _alreadyBoughtProductList) &&
            const DeepCollectionEquality()
                .equals(other._bestDealsProductList, _bestDealsProductList) &&
            const DeepCollectionEquality()
                .equals(other._brandList, _brandList) &&
            const DeepCollectionEquality()
                .equals(other._popularCategories, _popularCategories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isUpdateInProgress,
      const DeepCollectionEquality().hash(_advertisementList),
      const DeepCollectionEquality().hash(_alreadyBoughtProductList),
      const DeepCollectionEquality().hash(_bestDealsProductList),
      const DeepCollectionEquality().hash(_brandList),
      const DeepCollectionEquality().hash(_popularCategories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MainLoadSuccessCopyWith<_$MainLoadSuccess> get copyWith =>
      __$$MainLoadSuccessCopyWithImpl<_$MainLoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInProgress,
    required TResult Function(
            bool isUpdateInProgress,
            List<Advertisement> advertisementList,
            List<Product> alreadyBoughtProductList,
            List<Product> bestDealsProductList,
            List<Brand> brandList,
            List<Category> popularCategories)
        loadSuccess,
    required TResult Function(Object loadError) loadFailure,
  }) {
    return loadSuccess(
        isUpdateInProgress,
        advertisementList,
        alreadyBoughtProductList,
        bestDealsProductList,
        brandList,
        popularCategories);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInProgress,
    TResult? Function(
            bool isUpdateInProgress,
            List<Advertisement> advertisementList,
            List<Product> alreadyBoughtProductList,
            List<Product> bestDealsProductList,
            List<Brand> brandList,
            List<Category> popularCategories)?
        loadSuccess,
    TResult? Function(Object loadError)? loadFailure,
  }) {
    return loadSuccess?.call(
        isUpdateInProgress,
        advertisementList,
        alreadyBoughtProductList,
        bestDealsProductList,
        brandList,
        popularCategories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(
            bool isUpdateInProgress,
            List<Advertisement> advertisementList,
            List<Product> alreadyBoughtProductList,
            List<Product> bestDealsProductList,
            List<Brand> brandList,
            List<Category> popularCategories)?
        loadSuccess,
    TResult Function(Object loadError)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(
          isUpdateInProgress,
          advertisementList,
          alreadyBoughtProductList,
          bestDealsProductList,
          brandList,
          popularCategories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MainLoadInProgress value) loadInProgress,
    required TResult Function(MainLoadSuccess value) loadSuccess,
    required TResult Function(MainLoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MainLoadInProgress value)? loadInProgress,
    TResult? Function(MainLoadSuccess value)? loadSuccess,
    TResult? Function(MainLoadFailure value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainLoadInProgress value)? loadInProgress,
    TResult Function(MainLoadSuccess value)? loadSuccess,
    TResult Function(MainLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class MainLoadSuccess implements MainState {
  const factory MainLoadSuccess(
      {final bool isUpdateInProgress,
      required final List<Advertisement> advertisementList,
      required final List<Product> alreadyBoughtProductList,
      required final List<Product> bestDealsProductList,
      required final List<Brand> brandList,
      required final List<Category> popularCategories}) = _$MainLoadSuccess;

  bool get isUpdateInProgress;
  List<Advertisement> get advertisementList;
  List<Product> get alreadyBoughtProductList;
  List<Product> get bestDealsProductList;
  List<Brand> get brandList;
  List<Category> get popularCategories;
  @JsonKey(ignore: true)
  _$$MainLoadSuccessCopyWith<_$MainLoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MainLoadFailureCopyWith<$Res> {
  factory _$$MainLoadFailureCopyWith(
          _$MainLoadFailure value, $Res Function(_$MainLoadFailure) then) =
      __$$MainLoadFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({Object loadError});
}

/// @nodoc
class __$$MainLoadFailureCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$MainLoadFailure>
    implements _$$MainLoadFailureCopyWith<$Res> {
  __$$MainLoadFailureCopyWithImpl(
      _$MainLoadFailure _value, $Res Function(_$MainLoadFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loadError = null,
  }) {
    return _then(_$MainLoadFailure(
      loadError: null == loadError ? _value.loadError : loadError,
    ));
  }
}

/// @nodoc

class _$MainLoadFailure implements MainLoadFailure {
  const _$MainLoadFailure({required this.loadError});

  @override
  final Object loadError;

  @override
  String toString() {
    return 'MainState.loadFailure(loadError: $loadError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainLoadFailure &&
            const DeepCollectionEquality().equals(other.loadError, loadError));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(loadError));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MainLoadFailureCopyWith<_$MainLoadFailure> get copyWith =>
      __$$MainLoadFailureCopyWithImpl<_$MainLoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInProgress,
    required TResult Function(
            bool isUpdateInProgress,
            List<Advertisement> advertisementList,
            List<Product> alreadyBoughtProductList,
            List<Product> bestDealsProductList,
            List<Brand> brandList,
            List<Category> popularCategories)
        loadSuccess,
    required TResult Function(Object loadError) loadFailure,
  }) {
    return loadFailure(loadError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInProgress,
    TResult? Function(
            bool isUpdateInProgress,
            List<Advertisement> advertisementList,
            List<Product> alreadyBoughtProductList,
            List<Product> bestDealsProductList,
            List<Brand> brandList,
            List<Category> popularCategories)?
        loadSuccess,
    TResult? Function(Object loadError)? loadFailure,
  }) {
    return loadFailure?.call(loadError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(
            bool isUpdateInProgress,
            List<Advertisement> advertisementList,
            List<Product> alreadyBoughtProductList,
            List<Product> bestDealsProductList,
            List<Brand> brandList,
            List<Category> popularCategories)?
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
    required TResult Function(MainLoadInProgress value) loadInProgress,
    required TResult Function(MainLoadSuccess value) loadSuccess,
    required TResult Function(MainLoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MainLoadInProgress value)? loadInProgress,
    TResult? Function(MainLoadSuccess value)? loadSuccess,
    TResult? Function(MainLoadFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainLoadInProgress value)? loadInProgress,
    TResult Function(MainLoadSuccess value)? loadSuccess,
    TResult Function(MainLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class MainLoadFailure implements MainState {
  const factory MainLoadFailure({required final Object loadError}) =
      _$MainLoadFailure;

  Object get loadError;
  @JsonKey(ignore: true)
  _$$MainLoadFailureCopyWith<_$MainLoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
