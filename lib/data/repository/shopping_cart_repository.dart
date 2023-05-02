import 'package:dio/dio.dart';
import 'package:third_task/data/dto/dto.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/domain/repository/i_product_repository.dart';
import 'package:third_task/domain/repository/i_shopping_cart_repository.dart';

class ShoppingCartRepository implements IShoppingCartRepository {
  final Dio dio;
  final IProductRepository productRepository;

  ShoppingCartRepository(
    this.dio,
    this.productRepository,
  );

  @override
  Future<void> addProductToShoppingCart(int id) {
    // TODO: implement addProductToShoppingCart
    throw UnimplementedError();
  }

  @override
  Future<void> deleteShoppingCart(int id) {
    // TODO: implement deleteShoppingCart
    throw UnimplementedError();
  }

  @override
  Future<ShoppingCart> getShoppingCart(int id) async {
    final response = await dio.get<dynamic>(
      '/carts/$id',
    );
    final shoppingCart = ShoppingCartDTO.fromJson(response.data!);
    final shoppingCartProducts = await Future.wait(
      shoppingCart.products
          .map((item) async => ShoppingCartItem(
                product: await productRepository.getProductById(item.id),
                quantity: item.quantity,
              ))
          .toList(),
    );
    return ShoppingCart(
      id: shoppingCart.id,
      products: shoppingCartProducts,
      generalPrice: 1850,
      discount: '10%',
      generalDiscount: 150,
      recommendations: _recommendations,
    );
  }

  @override
  Future<ShoppingCart> updateShoppingCart(int id) {
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
