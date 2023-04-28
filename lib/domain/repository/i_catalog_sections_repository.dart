import 'package:third_task/domain/entities/entities.dart';

abstract class ICatalogSectionsRepository {
  Future<List<Product>> getAlreadyBoughtProductList();
  Future<List<Product>> getDiscountsProductList();
  Future<List<Product>> getFavoritesProductList();
}
