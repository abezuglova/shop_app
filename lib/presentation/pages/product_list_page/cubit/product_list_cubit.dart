import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/domain/entities/products_sort_type.dart';
import 'package:third_task/domain/repository/i_catalog_repository.dart';

part 'product_list_state.dart';
part 'product_list_cubit.freezed.dart';

class ProductListCubit extends Cubit<ProductListState> {
  static const defaultSort = ProductsSortType.ascPriceSort;

  final ICatalogRepository catalogRepository;
  final String categoryId;
  ProductListCubit({
    required this.catalogRepository,
    required this.categoryId,
  }) : super(const ProductListState.loadInProgress());

  Future<void> onPageOpened() async {
    try {
      final products =
          await catalogRepository.getProductsInSpecificCategory(categoryId);
      emit(
        ProductListState.loadSuccess(
          products: defaultSort.sort(products),
        ),
      );
    } catch (error, stackTrace) {
      log(
        'Error during product list loading',
        error: error,
        stackTrace: stackTrace,
      );
      emit(
        ProductListState.loadFailure(loadError: error),
      );
    }
  }

  void onProductsSortTypeChanged(ProductsSortType sortType) => state.mapOrNull(
        loadSuccess: (state) => emit(
          state.copyWith(
            products: sortType.sort(
              state.products.toList(),
            ),
            sortType: sortType,
          ),
        ),
      );
}
