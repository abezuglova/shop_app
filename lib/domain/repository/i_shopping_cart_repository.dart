import 'package:third_task/domain/entities/entities.dart';

abstract class IShoppingCartRepository {
  Future<ShoppingCart> getShoppingCart(int id);
  Future<ShoppingCart> updateShoppingCart();
  Future<void> deleteShoppingCart();
  Future<void> addProductToShoppingCart();
}