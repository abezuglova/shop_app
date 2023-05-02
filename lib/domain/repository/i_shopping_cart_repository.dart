import 'package:third_task/domain/entities/entities.dart';

abstract class IShoppingCartRepository {
  Future<ShoppingCart> getShoppingCart(int id);
  Future<ShoppingCart> updateShoppingCart(int id);
  Future<void> deleteShoppingCart(int id);
  Future<void> addProductToShoppingCart(int id);
}