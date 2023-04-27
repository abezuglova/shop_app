import 'package:dio/dio.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/domain/repository/i_catalog_repository.dart';

class CatalogRepository implements ICatalogRepository {
  final Dio dio;

  CatalogRepository(this.dio);

  @override
  Future<List<Category>> getAllCategories() async {
    final response = await dio.get<List<dynamic>>(
      '/products/categories',
    );
    return response.data!.map((string) => Category(name: string)).toList();
  }
}
