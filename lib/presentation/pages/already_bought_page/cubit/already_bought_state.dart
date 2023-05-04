part of 'already_bought_cubit.dart';

@freezed
class AlreadyBoughtState with _$AlreadyBoughtState {
  const factory AlreadyBoughtState.loadInProgress() =
      AlreadyBoughtLoadInProgress;
  const factory AlreadyBoughtState.loadSuccess({
    @Default(false) bool isUpdateInProgress,
    required List<Product> products,
  }) = AlreadyBoughtLoadSuccess;
  const factory AlreadyBoughtState.loadFailure({
    required Object loadError,
  }) = AlreadyBoughtLoadFailure;
}
