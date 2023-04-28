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
      final mainPageData = await Future.wait(
        [
          mainRepository.getAdvertisementList(),
          mainRepository.getAlreadyBoughtProductList(),
          mainRepository.getBestDealsProductList(),
          mainRepository.getBrandList(),
          mainRepository.getPopularCategories(),
        ],
      );
      emit(
        MainState.loadSuccess(
          advertisementList: mainPageData[0] as List<Advertisement>,
          alreadyBoughtProductList: mainPageData[1] as List<Product>,
          bestDealsProductList: mainPageData[2] as List<Product>,
          brandList: mainPageData[3] as List<Brand>,
          popularCategories: mainPageData[4] as List<Category>,
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
