import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:third_task/data/repository/catalog_repository.dart';

void main() {
  test('Categories', () async {
    final dio = Dio(
      BaseOptions(baseUrl: 'https://fakestoreapi.com'),
    );
    final repository = CatalogRepository(dio);
    final suggestions = await repository.getAllCategories();
    print(suggestions);
    assert(suggestions.isNotEmpty);
  });
}