import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/domain/repository/i_catalog_sections_repository.dart';

class MockCatalogSectionsRepository implements ICatalogSectionsRepository {
  @override
  Future<List<Product>> getAlreadyBoughtProductList() async {
    await Future.delayed(const Duration(milliseconds: 500));
    const discountsProductList = [..._mockProductList];
    return discountsProductList;
  }

  @override
  Future<List<Product>> getDiscountsProductList() async {
    await Future.delayed(const Duration(milliseconds: 500));
    const discountsProductList = [..._mockProductList];
    return discountsProductList;
  }

  @override
  Future<List<Product>> getFavoritesProductList() async {
    await Future.delayed(const Duration(milliseconds: 500));
    const favoritesProductList = [..._mockProductList];
    return favoritesProductList;
  }

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
