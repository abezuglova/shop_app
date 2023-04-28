import 'package:dio/dio.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/domain/repository/i_main_repository.dart';

class MainRepository implements IMainRepository {
  final Dio dio;

  MainRepository(this.dio);

  @override
  Future<List<Advertisement>> getAdvertisementList() async {
    await Future.delayed(const Duration(milliseconds: 500));
    const advertisementList = _mockAdvertisementList;
    return advertisementList;
  }

  @override
  Future<List<Product>> getAlreadyBoughtProductList() async {
    await Future.delayed(const Duration(milliseconds: 500));
    const alreadyBoughtProductList = _mockProductList;
    return alreadyBoughtProductList;
  }

  @override
  Future<List<Product>> getBestDealsProductList() async {
    await Future.delayed(const Duration(milliseconds: 500));
    const bestDealsProductList = _mockProductList;
    return bestDealsProductList;
  }

  @override
  Future<List<Brand>> getBrandList() async {
    await Future.delayed(const Duration(milliseconds: 500));
    const brandList = _mockBrandList;
    return brandList;
  }

  @override
  Future<List<Category>> getPopularCategories() async {
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

  static const _mockAdvertisementList = [
    Advertisement(
      id: 1,
      name: 'Настоящая икра без консервантов',
      description: 'Попробуйте икру без химических добавок и консервантов',
      image:
          'https://s0.rbk.ru/v6_top_pics/media/img/0/65/756696433874650.webp',
    ),
    Advertisement(
      id: 1,
      name: 'Новинка от УГЛЕЧЕ ПОЛЕ',
      description: 'Продукт кисломолочный Угурт питьевой с Вишней 250г',
      image:
          'https://s0.rbk.ru/v6_top_pics/media/img/0/65/756696433874650.webp',
    ),
    Advertisement(
      id: 1,
      name: 'Настоящая икра без консервантов',
      description: 'Попробуйте икру без химических добавок и консервантов',
      image:
          'https://s0.rbk.ru/v6_top_pics/media/img/0/65/756696433874650.webp',
    ),
  ];

  static const _mockBrandList = [
    Brand(
      name: 'Углече поле',
      logo: 'https://organicguide.ru/wp-content/uploads/2016/06/edC5WDqj.png',
    ),
    Brand(
      name: 'Углече поле',
      logo:
          'https://avatars.mds.yandex.net/get-mpic/5376414/img_id6722953875435341144.png/orig',
    ),
    Brand(
      name: 'Углече поле',
      logo: 'https://organicguide.ru/wp-content/uploads/2016/06/edC5WDqj.png',
    ),
    Brand(
      name: 'Углече поле',
      logo:
          'https://avatars.mds.yandex.net/get-mpic/5376414/img_id6722953875435341144.png/orig',
    ),
    Brand(
      name: 'Углече поле',
      logo: 'https://organicguide.ru/wp-content/uploads/2016/06/edC5WDqj.png',
    ),
    Brand(
      name: 'Углече поле',
      logo:
          'https://avatars.mds.yandex.net/get-mpic/5376414/img_id6722953875435341144.png/orig',
    ),
  ];

  static const _mockProductList = [
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
      price: 600,
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
      price: 600,
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
      price: 600,
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
      price: 600,
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
      price: 600,
      reviews: 'Lorem ipsum',
      recommendations: [],
    ),
  ];
}
