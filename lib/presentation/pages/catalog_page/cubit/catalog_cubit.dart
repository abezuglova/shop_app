import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/domain/repository/i_catalog_repository.dart';

part 'catalog_state.dart';
part 'catalog_cubit.freezed.dart';

class CatalogCubit extends Cubit<CatalogState> {
  final ICatalogRepository catalogRepository;
  CatalogCubit({
    required this.catalogRepository,
  }) : super(const CatalogState.loadInProgress());

  Future<void> onPageOpened() async {
    try {
      final categories = await catalogRepository.getAllCategories();
      emit(
        CatalogState.loadSuccess(
          categories: categories,
        ),
      );
    } catch (error, stackTrace) {
      log(
        'Error during categories loading',
        error: error,
        stackTrace: stackTrace,
      );
      emit(
        CatalogState.loadFailure(loadError: error),
      );
    }
  }
}
