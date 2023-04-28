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

  Future<void> onPageOpened() async {
    try {
      final products =
          await catalogSectionsRepository.getFavoritesProductList();
      emit(
        FavoritesState.loadSuccess(
          products: products,
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
}
