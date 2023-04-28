import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/domain/repository/i_catalog_sections_repository.dart';

part 'already_bought_state.dart';
part 'already_bought_cubit.freezed.dart';

class AlreadyBoughtCubit extends Cubit<AlreadyBoughtState> {
  final ICatalogSectionsRepository catalogSectionsRepository;
  AlreadyBoughtCubit({required this.catalogSectionsRepository})
      : super(const AlreadyBoughtState.loadInProgress());

  Future<void> onPageOpened() async {
    try {
      final products =
          await catalogSectionsRepository.getAlreadyBoughtProductList();
      emit(
        AlreadyBoughtState.loadSuccess(
          products: products,
        ),
      );
    } catch (error, stackTrace) {
      log(
        'Error during categories loading',
        error: error,
        stackTrace: stackTrace,
      );
      emit(
        AlreadyBoughtState.loadFailure(loadError: error),
      );
    }
  }
}
