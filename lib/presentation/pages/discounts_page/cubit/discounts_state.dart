part of 'discounts_cubit.dart';

@freezed
class DiscountsState with _$DiscountsState {
  const factory DiscountsState.loadInProgress() =
      DiscountsLoadInProgress;
  const factory DiscountsState.loadSuccess({
    required List<Product> products,
  }) = DiscountsLoadSuccess;
  const factory DiscountsState.loadFailure({
    required Object loadError,
  }) = DiscountsLoadFailure;
}
