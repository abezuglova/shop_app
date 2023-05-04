part of 'product_list_cubit.dart';

@freezed
class ProductListState with _$ProductListState {
  const factory ProductListState.loadInProgress() = ProductListLoadInProgress;
  const factory ProductListState.loadSuccess({
    @Default(false) bool isUpdateInProgress,
    required List<Product> products,
    @Default(ProductListCubit.defaultSort) ProductsSortType sortType,
  }) = ProductListLoadSuccess;
  const factory ProductListState.loadFailure({
    required Object loadError,
  }) = ProductListLoadFailure;
}
