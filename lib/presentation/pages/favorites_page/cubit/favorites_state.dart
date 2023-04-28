part of 'favorites_cubit.dart';

@freezed
class FavoritesState with _$FavoritesState {
  const factory FavoritesState.loadInProgress() =
      FavoritesLoadInProgress;
  const factory FavoritesState.loadSuccess({
    required List<Product> products,
  }) = FavoritesLoadSuccess;
  const factory FavoritesState.loadFailure({
    required Object loadError,
  }) = FavoritesLoadFailure;
}
