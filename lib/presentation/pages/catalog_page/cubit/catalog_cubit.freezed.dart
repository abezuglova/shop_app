// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'catalog_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CatalogState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInProgress,
    required TResult Function(
            bool isUpdateInProgress, List<Category> categories)
        loadSuccess,
    required TResult Function(Object loadError) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInProgress,
    TResult? Function(bool isUpdateInProgress, List<Category> categories)?
        loadSuccess,
    TResult? Function(Object loadError)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(bool isUpdateInProgress, List<Category> categories)?
        loadSuccess,
    TResult Function(Object loadError)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CatalogLoadInProgress value) loadInProgress,
    required TResult Function(CatalogLoadSuccess value) loadSuccess,
    required TResult Function(CatalogLoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CatalogLoadInProgress value)? loadInProgress,
    TResult? Function(CatalogLoadSuccess value)? loadSuccess,
    TResult? Function(CatalogLoadFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CatalogLoadInProgress value)? loadInProgress,
    TResult Function(CatalogLoadSuccess value)? loadSuccess,
    TResult Function(CatalogLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatalogStateCopyWith<$Res> {
  factory $CatalogStateCopyWith(
          CatalogState value, $Res Function(CatalogState) then) =
      _$CatalogStateCopyWithImpl<$Res, CatalogState>;
}

/// @nodoc
class _$CatalogStateCopyWithImpl<$Res, $Val extends CatalogState>
    implements $CatalogStateCopyWith<$Res> {
  _$CatalogStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CatalogLoadInProgressCopyWith<$Res> {
  factory _$$CatalogLoadInProgressCopyWith(_$CatalogLoadInProgress value,
          $Res Function(_$CatalogLoadInProgress) then) =
      __$$CatalogLoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CatalogLoadInProgressCopyWithImpl<$Res>
    extends _$CatalogStateCopyWithImpl<$Res, _$CatalogLoadInProgress>
    implements _$$CatalogLoadInProgressCopyWith<$Res> {
  __$$CatalogLoadInProgressCopyWithImpl(_$CatalogLoadInProgress _value,
      $Res Function(_$CatalogLoadInProgress) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CatalogLoadInProgress implements CatalogLoadInProgress {
  const _$CatalogLoadInProgress();

  @override
  String toString() {
    return 'CatalogState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CatalogLoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInProgress,
    required TResult Function(
            bool isUpdateInProgress, List<Category> categories)
        loadSuccess,
    required TResult Function(Object loadError) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInProgress,
    TResult? Function(bool isUpdateInProgress, List<Category> categories)?
        loadSuccess,
    TResult? Function(Object loadError)? loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(bool isUpdateInProgress, List<Category> categories)?
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
    required TResult Function(CatalogLoadInProgress value) loadInProgress,
    required TResult Function(CatalogLoadSuccess value) loadSuccess,
    required TResult Function(CatalogLoadFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CatalogLoadInProgress value)? loadInProgress,
    TResult? Function(CatalogLoadSuccess value)? loadSuccess,
    TResult? Function(CatalogLoadFailure value)? loadFailure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CatalogLoadInProgress value)? loadInProgress,
    TResult Function(CatalogLoadSuccess value)? loadSuccess,
    TResult Function(CatalogLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class CatalogLoadInProgress implements CatalogState {
  const factory CatalogLoadInProgress() = _$CatalogLoadInProgress;
}

/// @nodoc
abstract class _$$CatalogLoadSuccessCopyWith<$Res> {
  factory _$$CatalogLoadSuccessCopyWith(_$CatalogLoadSuccess value,
          $Res Function(_$CatalogLoadSuccess) then) =
      __$$CatalogLoadSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isUpdateInProgress, List<Category> categories});
}

/// @nodoc
class __$$CatalogLoadSuccessCopyWithImpl<$Res>
    extends _$CatalogStateCopyWithImpl<$Res, _$CatalogLoadSuccess>
    implements _$$CatalogLoadSuccessCopyWith<$Res> {
  __$$CatalogLoadSuccessCopyWithImpl(
      _$CatalogLoadSuccess _value, $Res Function(_$CatalogLoadSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isUpdateInProgress = null,
    Object? categories = null,
  }) {
    return _then(_$CatalogLoadSuccess(
      isUpdateInProgress: null == isUpdateInProgress
          ? _value.isUpdateInProgress
          : isUpdateInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
    ));
  }
}

/// @nodoc

class _$CatalogLoadSuccess implements CatalogLoadSuccess {
  const _$CatalogLoadSuccess(
      {this.isUpdateInProgress = false,
      required final List<Category> categories})
      : _categories = categories;

  @override
  @JsonKey()
  final bool isUpdateInProgress;
  final List<Category> _categories;
  @override
  List<Category> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  String toString() {
    return 'CatalogState.loadSuccess(isUpdateInProgress: $isUpdateInProgress, categories: $categories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CatalogLoadSuccess &&
            (identical(other.isUpdateInProgress, isUpdateInProgress) ||
                other.isUpdateInProgress == isUpdateInProgress) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isUpdateInProgress,
      const DeepCollectionEquality().hash(_categories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CatalogLoadSuccessCopyWith<_$CatalogLoadSuccess> get copyWith =>
      __$$CatalogLoadSuccessCopyWithImpl<_$CatalogLoadSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInProgress,
    required TResult Function(
            bool isUpdateInProgress, List<Category> categories)
        loadSuccess,
    required TResult Function(Object loadError) loadFailure,
  }) {
    return loadSuccess(isUpdateInProgress, categories);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInProgress,
    TResult? Function(bool isUpdateInProgress, List<Category> categories)?
        loadSuccess,
    TResult? Function(Object loadError)? loadFailure,
  }) {
    return loadSuccess?.call(isUpdateInProgress, categories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(bool isUpdateInProgress, List<Category> categories)?
        loadSuccess,
    TResult Function(Object loadError)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(isUpdateInProgress, categories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CatalogLoadInProgress value) loadInProgress,
    required TResult Function(CatalogLoadSuccess value) loadSuccess,
    required TResult Function(CatalogLoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CatalogLoadInProgress value)? loadInProgress,
    TResult? Function(CatalogLoadSuccess value)? loadSuccess,
    TResult? Function(CatalogLoadFailure value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CatalogLoadInProgress value)? loadInProgress,
    TResult Function(CatalogLoadSuccess value)? loadSuccess,
    TResult Function(CatalogLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class CatalogLoadSuccess implements CatalogState {
  const factory CatalogLoadSuccess(
      {final bool isUpdateInProgress,
      required final List<Category> categories}) = _$CatalogLoadSuccess;

  bool get isUpdateInProgress;
  List<Category> get categories;
  @JsonKey(ignore: true)
  _$$CatalogLoadSuccessCopyWith<_$CatalogLoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CatalogLoadFailureCopyWith<$Res> {
  factory _$$CatalogLoadFailureCopyWith(_$CatalogLoadFailure value,
          $Res Function(_$CatalogLoadFailure) then) =
      __$$CatalogLoadFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({Object loadError});
}

/// @nodoc
class __$$CatalogLoadFailureCopyWithImpl<$Res>
    extends _$CatalogStateCopyWithImpl<$Res, _$CatalogLoadFailure>
    implements _$$CatalogLoadFailureCopyWith<$Res> {
  __$$CatalogLoadFailureCopyWithImpl(
      _$CatalogLoadFailure _value, $Res Function(_$CatalogLoadFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loadError = null,
  }) {
    return _then(_$CatalogLoadFailure(
      loadError: null == loadError ? _value.loadError : loadError,
    ));
  }
}

/// @nodoc

class _$CatalogLoadFailure implements CatalogLoadFailure {
  const _$CatalogLoadFailure({required this.loadError});

  @override
  final Object loadError;

  @override
  String toString() {
    return 'CatalogState.loadFailure(loadError: $loadError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CatalogLoadFailure &&
            const DeepCollectionEquality().equals(other.loadError, loadError));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(loadError));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CatalogLoadFailureCopyWith<_$CatalogLoadFailure> get copyWith =>
      __$$CatalogLoadFailureCopyWithImpl<_$CatalogLoadFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInProgress,
    required TResult Function(
            bool isUpdateInProgress, List<Category> categories)
        loadSuccess,
    required TResult Function(Object loadError) loadFailure,
  }) {
    return loadFailure(loadError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInProgress,
    TResult? Function(bool isUpdateInProgress, List<Category> categories)?
        loadSuccess,
    TResult? Function(Object loadError)? loadFailure,
  }) {
    return loadFailure?.call(loadError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(bool isUpdateInProgress, List<Category> categories)?
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
    required TResult Function(CatalogLoadInProgress value) loadInProgress,
    required TResult Function(CatalogLoadSuccess value) loadSuccess,
    required TResult Function(CatalogLoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CatalogLoadInProgress value)? loadInProgress,
    TResult? Function(CatalogLoadSuccess value)? loadSuccess,
    TResult? Function(CatalogLoadFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CatalogLoadInProgress value)? loadInProgress,
    TResult Function(CatalogLoadSuccess value)? loadSuccess,
    TResult Function(CatalogLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class CatalogLoadFailure implements CatalogState {
  const factory CatalogLoadFailure({required final Object loadError}) =
      _$CatalogLoadFailure;

  Object get loadError;
  @JsonKey(ignore: true)
  _$$CatalogLoadFailureCopyWith<_$CatalogLoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
