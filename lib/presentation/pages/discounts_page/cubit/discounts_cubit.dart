import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/domain/repository/i_catalog_sections_repository.dart';

part 'discounts_state.dart';
part 'discounts_cubit.freezed.dart';

class DiscountsCubit extends Cubit<DiscountsState> {
  final ICatalogSectionsRepository catalogSectionsRepository;
  DiscountsCubit({
    required this.catalogSectionsRepository,
  }) : super(const DiscountsState.loadInProgress());

  Future<void> onPageOpened() async {
    try {
      final products =
          await catalogSectionsRepository.getDiscountsProductList();
      emit(
        DiscountsState.loadSuccess(
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
        DiscountsState.loadFailure(loadError: error),
      );
    }
  }
}
