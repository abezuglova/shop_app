import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:third_task/data/repository/catalog_repository.dart';
import 'package:third_task/data/repository/main_repository.dart';
import 'package:third_task/data/repository/mock_catalog_sections_repository.dart';
import 'package:third_task/domain/repository/i_catalog_repository.dart';
import 'package:third_task/domain/repository/i_main_repository.dart';

import 'domain/repository/i_catalog_sections_repository.dart';

final getIt = GetIt.instance;

void setupDI() {
  getIt.registerSingleton<Dio>(
    Dio(
      BaseOptions(
        baseUrl: 'https://fakestoreapi.com',
      ),
    ),
  );

  getIt.registerSingleton<ICatalogRepository>(
    CatalogRepository(
      getIt<Dio>(),
    ),
  );

  getIt.registerSingleton<ICatalogSectionsRepository>(
    MockCatalogSectionsRepository(),
  );

  getIt.registerSingleton<IMainRepository>(
    MainRepository(
      getIt<Dio>(),
    ),
  );
}
