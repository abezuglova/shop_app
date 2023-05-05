import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/domain/repository/i_catalog_sections_repository.dart';

part 'favorites_state.dart';
part 'favorites_cubit.freezed.dart';

class FavoritesCubit extends Cubit<FavoritesState> {
  final ICatalogSectionsRepository catalogSectionsRepository;
  FavoritesCubit({
    required this.catalogSectionsRepository,
  }) : super(const FavoritesState.loadInProgress());

  var _products = <Product>[];

  Future<void> onPageOpened() async {
    try {
      _products =
          await catalogSectionsRepository.getFavoritesProductList();
      emit(
        FavoritesState.loadSuccess(
          products: _products,
        ),
      );
    } catch (error, stackTrace) {
      log(
        'Error during products loading',
        error: error,
        stackTrace: stackTrace,
      );
      emit(
        FavoritesState.loadFailure(loadError: error),
      );
    }
  }

  Future<void> onProductToFavoritesAdded(Product product) async =>
      await state.mapOrNull<Future>(
        loadSuccess: (state) async {
          try {
            emit(
              state.copyWith(
                isUpdateInProgress: true,
              ),
            );

            await catalogSectionsRepository.addProductToFavorites(product);
            _products = [..._products, product];
            emit(
              state.copyWith(
                isUpdateInProgress: false,
                products: _products,
              ),
            );
          } catch (error, stackTrace) {
            log(
              'Error during product to shopping cart adding',
              error: error,
              stackTrace: stackTrace,
            );
            emit(
              FavoritesState.loadFailure(loadError: error),
            );
          }
        },
      );
}
