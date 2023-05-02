import 'package:third_task/domain/entities/entities.dart';

abstract class IProductRepository {
  Future<Product> getProductById(int id);
}