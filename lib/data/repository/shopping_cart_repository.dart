import 'package:dio/dio.dart';
import 'package:third_task/data/dto/dto.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/domain/repository/i_shopping_cart_repository.dart';

class ShoppingCartRepository implements IShoppingCartRepository {
  final Dio dio;

  ShoppingCartRepository(this.dio);

  @override
  Future<void> addProductToShoppingCart() {
    // TODO: implement addProductToShoppingCart
    throw UnimplementedError();
  }

  @override
  Future<void> deleteShoppingCart() {
    // TODO: implement deleteShoppingCart
    throw UnimplementedError();
  }

  @override
  Future<ShoppingCart> getShoppingCart(int id) async {
    final response = await dio.get<dynamic>(
      '/carts/$id',
    );
    final shoppingCart = ShoppingCartDTO.fromJson(response.data!);
    return ShoppingCart(
      id: shoppingCart.id,
      products: shoppingCart.products
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
              price: product.price,
              recommendations: _recommendations,
            ),
          )
          .toList(),
      generalPrice: 1850,
      discount: '10%',
      generalDiscount: 150,
      recommendations: _recommendations,
    );
  }

  @override
  Future<ShoppingCart> updateShoppingCart() {
    // TODO: implement updateShoppingCart
    throw UnimplementedError();
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
