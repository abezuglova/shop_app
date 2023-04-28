import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/domain/repository/i_main_repository.dart';

part 'main_state.dart';
part 'main_cubit.freezed.dart';

class MainCubit extends Cubit<MainState> {
  final IMainRepository mainRepository;
  MainCubit({
    required this.mainRepository,
  }) : super(const MainState.loadInProgress());

  Future<void> onPageOpened() async {
    try {
      final advertisementList = await mainRepository.getAdvertisementList();
      final alreadyBoughtProductList =
          await mainRepository.getAlreadyBoughtProductList();
      final bestDealsProductList =
          await mainRepository.getBestDealsProductList();
      final brandList = await mainRepository.getBrandList();
      final popularCategories = await mainRepository.getPopularCategories();
      emit(
        MainState.loadSuccess(
          advertisementList: advertisementList,
          alreadyBoughtProductList: alreadyBoughtProductList,
          bestDealsProductList: bestDealsProductList,
          brandList: brandList,
          popularCategories: popularCategories,
        ),
      );
    } catch (error, stackTrace) {
      log(
        'Error during categories loading',
        error: error,
        stackTrace: stackTrace,
      );
      emit(
        MainState.loadFailure(loadError: error),
      );
    }
  }
}
