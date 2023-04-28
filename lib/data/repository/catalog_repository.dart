import 'package:dio/dio.dart';
import 'package:third_task/data/dto/dto.dart';
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

  @override
  Future<List<Product>> getProductsInSpecificCategory(String id) async {
    final response = await dio.get<List<dynamic>>(
      '/products/category/$id',
    );
    return response.data!
        .map((json) => ProductDTO.fromJson(json))
        .map(
          (product) => Product(
            id: product.id,
            name: product.name,
            images: [
              product.image,
              product.image,
              product.image,
              product.image,
            ],
            discount: '25%',
            amount: '2 шт',
            description: product.description,
            characteristics: 'Lorem ipsum',
            reviews: 'Lorem ipsum',
            brand: 'brand',
            price: '${product.price} ₽',
            recommendations: _recommendations,
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

  static const _recommendations = [
    Product(
      id: 1,
      amount: '1',
      brand: 'Углече поле',
      characteristics: 'Lorem ipsum sit amet dolor',
      description: 'Альтернативный Флэнк стейк',
      discount: '-50%',
      images: [
        'https://rightfood.net/wp-content/uploads/2014/11/669-4-e1416919923526.jpg',
        'https://sostavproduktov.ru/sites/default/files/pictures/meat/miaso/goviadina.jpg',
      ],
      name: 'УГЛЕЧЕ ПОЛЕ Стейк Флэнк (Ангус) охл скин',
      price: '600 р/кг',
      reviews: 'Lorem ipsum',
      recommendations: [],
    ),
    Product(
      id: 1,
      amount: '1',
      brand: 'Углече поле',
      characteristics: 'Lorem ipsum sit amet dolor',
      description: 'Альтернативный Флэнк стейк',
      discount: '-50%',
      images: [
        'https://rightfood.net/wp-content/uploads/2014/11/669-4-e1416919923526.jpg',
        'https://sostavproduktov.ru/sites/default/files/pictures/meat/miaso/goviadina.jpg',
      ],
      name: 'УГЛЕЧЕ ПОЛЕ Стейк Флэнк (Ангус) охл скин',
      price: '600 р/кг',
      reviews: 'Lorem ipsum',
      recommendations: [],
    ),
    Product(
      id: 1,
      amount: '1',
      brand: 'Углече поле',
      characteristics: 'Lorem ipsum sit amet dolor',
      description: 'Альтернативный Флэнк стейк',
      discount: '-50%',
      images: [
        'https://rightfood.net/wp-content/uploads/2014/11/669-4-e1416919923526.jpg',
        'https://sostavproduktov.ru/sites/default/files/pictures/meat/miaso/goviadina.jpg',
      ],
      name: 'УГЛЕЧЕ ПОЛЕ Стейк Флэнк (Ангус) охл скин',
      price: '600 р/кг',
      reviews: 'Lorem ipsum',
      recommendations: [],
    ),
    Product(
      id: 1,
      amount: '1',
      brand: 'Углече поле',
      characteristics: 'Lorem ipsum sit amet dolor',
      description: 'Альтернативный Флэнк стейк',
      discount: '-50%',
      images: [
        'https://rightfood.net/wp-content/uploads/2014/11/669-4-e1416919923526.jpg',
        'https://sostavproduktov.ru/sites/default/files/pictures/meat/miaso/goviadina.jpg',
      ],
      name: 'УГЛЕЧЕ ПОЛЕ Стейк Флэнк (Ангус) охл скин',
      price: '600 р/кг',
      reviews: 'Lorem ipsum',
      recommendations: [],
    ),
    Product(
      id: 1,
      amount: '1',
      brand: 'Углече поле',
      characteristics: 'Lorem ipsum sit amet dolor',
      description: 'Альтернативный Флэнк стейк',
      discount: '-50%',
      images: [
        'https://rightfood.net/wp-content/uploads/2014/11/669-4-e1416919923526.jpg',
        'https://sostavproduktov.ru/sites/default/files/pictures/meat/miaso/goviadina.jpg',
      ],
      name: 'УГЛЕЧЕ ПОЛЕ Стейк Флэнк (Ангус) охл скин',
      price: '600 р/кг',
      reviews: 'Lorem ipsum',
      recommendations: [],
    ),
  ];
}
