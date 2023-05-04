part of 'shopping_cart_cubit.dart';

@freezed
class ShoppingCartState with _$ShoppingCartState {
  const factory ShoppingCartState.loadInProgress() = ShoppingCartLoadInProgress;
  const factory ShoppingCartState.loadSuccess({
    @Default(false) bool isUpdateInProgress,
    required ShoppingCart shoppingCart,
  }) = ShoppingCartLoadSuccess;
  const factory ShoppingCartState.loadFailure({
    required Object loadError,
  }) = ShoppingCartLoadFailure;
}
