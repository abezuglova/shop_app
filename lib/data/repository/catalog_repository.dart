import 'package:dio/dio.dart';
import 'package:third_task/data/dto/dto.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/domain/repository/i_catalog_repository.dart';
import 'package:third_task/presentation/utils/randomizer.dart';

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
            discount: [25, 50, 30, 10, 17, 29, 45, 72, 6, 8, 12][randomizer(
              [25, 50, 30, 10, 17, 29, 45, 72, 6, 8, 12],
            )],
            amount: 1,
            description: product.description,
            characteristics: 'Lorem ipsum',
            reviews: 'Lorem ipsum',
            brand: 'Brand',
            newPrice: product.price,
            oldPrice: [
              2000.29,
              1729.23,
              3487.99,
              3498.99,
              2009.99,
              2746.99,
              874.98
            ][randomizer(
              [2000.29, 1729.23, 3487.99, 3498.99, 2009.99, 2746.99, 874.98],
            )],
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
      amount: 1,
      brand: 'Углече поле',
      characteristics: 'Lorem ipsum sit amet dolor',
      description: 'Альтернативный Флэнк стейк',
      discount: 50,
      images: [
        'https://rightfood.net/wp-content/uploads/2014/11/669-4-e1416919923526.jpg',
        'https://sostavproduktov.ru/sites/default/files/pictures/meat/miaso/goviadina.jpg',
      ],
      name: 'УГЛЕЧЕ ПОЛЕ Стейк Флэнк (Ангус) охл скин',
      newPrice: 600,
      oldPrice: 1000,
      reviews: 'Lorem ipsum',
      recommendations: [],
    ),
    Product(
      id: 1,
      amount: 1,
      brand: 'Простоквашино',
      characteristics: 'Lorem ipsum sit amet dolor',
      description: 'Сметана Простоквашино',
      discount: 20,
      images: [
        'https://shop.samberi.com/upload/iblock/8b6/8b66aac1b7f331caf08dc0f80e390b0c.png',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-j8beJn2rD29405J3i80akGyCuLoGeNBpkQ&usqp=CAU',
      ],
      name: 'Сметана',
      newPrice: 400,
      oldPrice: 500,
      reviews: 'Lorem ipsum',
      recommendations: [],
    ),
    Product(
      id: 1,
      amount: 1,
      brand: 'Индилайт',
      characteristics: 'Lorem ipsum sit amet dolor',
      description: 'Филе бедра индейки Индилайт',
      discount: 17,
      images: [
        'https://avatars.mds.yandex.net/get-mpic/4792566/img_id4069828936266750998.jpeg/x332_trim',
        'https://www.okeydostavka.ru/wcsstore/OKMarketCAS/cat_entries/21047/21047_fullimage.jpg',
      ],
      name: 'Филе бедра индейки',
      newPrice: 300,
      oldPrice: 344,
      reviews: 'Lorem ipsum',
      recommendations: [],
    ),
    Product(
      id: 1,
      amount: 1,
      brand: 'Беловежские сыры',
      characteristics: 'Lorem ipsum sit amet dolor',
      description: 'Сыр Тильзитер от Беловежских сыров',
      discount: 50,
      images: [
        'https://belcheese.by/assets/images/catalog/tradition/tilziter_brussrez.jpg',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTmSYW2umqZqjrskreF-iC0Zk7P7FgHBDuOqRmas2zZb8bsMBP6rVqWOSq7QivfDOy-Aw&usqp=CAU',
      ],
      name: 'Сыр тильзитер',
      newPrice: 250,
      oldPrice: 800,
      reviews: 'Lorem ipsum',
      recommendations: [],
    ),
    Product(
      id: 1,
      amount: 1,
      brand: 'Vici',
      characteristics: 'Lorem ipsum sit amet dolor',
      description: 'Креветки королевские VICI',
      discount: 50,
      images: [
        'https://irecommend.ru/sites/default/files/product-images/55755/89056f5fc072a187c55fb76b04702773.jpg',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQtPSIFrIGmh6V8j9K1W5p0MDYhSbFHy0BGpA&usqp=CAU',
      ],
      name: 'Королевские креветки',
      newPrice: 600,
      oldPrice: 1199,
      reviews: 'Lorem ipsum',
      recommendations: [],
    ),
  ];
}
