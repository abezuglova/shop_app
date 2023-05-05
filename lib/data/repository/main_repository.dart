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
          'https://irecommend.ru/sites/default/files/imagecache/copyright1/user-images/1065475/bLpREdJsLEyKn2jg7rbLLA.jpeg',
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
