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
    return response.data!
        .map(
          (string) => Category(
            name: string,
            id: string,
            subcategories: _getSubCategoriesMockList(string),
          ),
        )
        .toList();
  }

  _getSubCategoriesMockList(id) => [
        Category(
          id: id,
          name: 'Чай',
          subcategories: [],
        ),
        Category(
          id: id,
          name: 'Кофе',
          subcategories: [],
        ),
        Category(
          id: id,
          name: 'Какао, цикорий',
          subcategories: [],
        ),
        Category(
          id: id,
          name: 'Соки, морсы, нектары, компоты',
          subcategories: [],
        ),
        Category(
          id: id,
          name: 'Вода минеральная и питьевая',
          subcategories: [],
        ),
        Category(
          id: id,
          name: 'Лимонады, напитки',
          subcategories: [],
        ),
        Category(
          id: id,
          name: 'Холодный чай, кофе, экзотика',
          subcategories: [],
        ),
      ];

  @override
  Future<List<Product>> getProductsInSpecificCategory(String id) async {
    final response = await dio.get<List<dynamic>>(
      '/products/category/$id',
    );
    return response.data!.map((json) => Product.fromJson(json)).toList();
  }
}
