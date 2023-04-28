import 'package:third_task/domain/entities/entities.dart';

abstract class IMainRepository {
  Future<List<Advertisement>> getAdvertisementList();
  Future<List<Category>> getPopularCategories();
  Future<List<Product>> getBestDealsProductList();
  Future<List<Product>> getAlreadyBoughtProductList();
  Future<List<Brand>> getBrandList();
}