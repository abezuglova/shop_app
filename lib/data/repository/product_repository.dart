import 'package:dio/dio.dart';
import 'package:third_task/data/dto/dto.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/domain/repository/i_product_repository.dart';

class ProductRepository implements IProductRepository {
  final Dio dio;

  ProductRepository(this.dio);

  @override
  Future<Product> getProductById(int id) async {
    final response = await dio.get<dynamic>(
      '/products/$id',
    );
    final product = ProductDTO.fromJson(response.data!);
    return Product(
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
      price: product.price,
      recommendations: _recommendations,
    );
  }

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
