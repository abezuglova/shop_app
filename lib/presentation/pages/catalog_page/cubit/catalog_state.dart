part of 'catalog_cubit.dart';

@freezed
class CatalogState with _$CatalogState {
  const factory CatalogState.loadInProgress() = CatalogLoadInProgress;
  const factory CatalogState.loadSuccess({
    @Default(false) bool isUpdateInProgress,
    required List<Category> categories,
  }) = CatalogLoadSuccess;
  const factory CatalogState.loadFailure({
    required Object loadError,
  }) = CatalogLoadFailure;
}
