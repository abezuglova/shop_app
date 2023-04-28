part of 'main_cubit.dart';

@freezed
class MainState with _$MainState {
  const factory MainState.loadInProgress() = MainLoadInProgress;
  const factory MainState.loadSuccess({
    required List<Advertisement> advertisementList,
    required List<Product> alreadyBoughtProductList,
    required List<Product> bestDealsProductList,
    required List<Brand> brandList,
    required List<Category> popularCategories,
  }) = MainLoadSuccess;
  const factory MainState.loadFailure({
    required Object loadError,
  }) = MainLoadFailure;
}
