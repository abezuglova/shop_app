import 'package:dio/dio.dart';
import 'package:third_task/data/dto/dto.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/domain/repository/i_product_repository.dart';
import 'package:third_task/domain/repository/i_shopping_cart_repository.dart';

class ShoppingCartRepository implements IShoppingCartRepository {
  final Dio dio;
  final IProductRepository productRepository;

  ShoppingCart? _shoppingCart;

  ShoppingCartRepository(
    this.dio,
    this.productRepository,
  );

  @override
  Future<void> addProductToShoppingCart(
    int id,
    ShoppingCartItem shoppingCartItem,
  ) async {
    final shoppingCart = _shoppingCart;
    shoppingCart?.products.add(shoppingCartItem);
    await dio.post<dynamic>(
      '/carts',
      data: shoppingCart,
    );
    _shoppingCart?.products.add(shoppingCartItem);
  }

  @override
  Future<void> deleteShoppingCart(int id) async {
    await dio.delete<dynamic>(
      '/carts/$id',
    );
    if (_shoppingCart != null) {
      _shoppingCart = _shoppingCart!.copyWith(
        products: [],
      );
    }
  }

  @override
  Future<ShoppingCart> getShoppingCart(int id) async {
    _shoppingCart ??= await _getShoppingCartFromAPI(id);
    return _shoppingCart!;
  }

  @override
  Future<ShoppingCart> updateShoppingCart(ShoppingCart shoppingCart) async {
    await dio.put<dynamic>(
      '/carts/${shoppingCart.id}',
      data: ShoppingCartDTO(
              id: shoppingCart.id,
              products: shoppingCart.products
                  .map((e) => ShoppingCartItemDTO(
                        id: e.product.id,
                        quantity: e.quantity,
                      ))
                  .toList())
          .toJson(),
    );
    await Future.delayed(const Duration(milliseconds: 500));
    _shoppingCart = shoppingCart;
    return _shoppingCart!;
  }

  Future<ShoppingCart> _getShoppingCartFromAPI(int id) async {
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
