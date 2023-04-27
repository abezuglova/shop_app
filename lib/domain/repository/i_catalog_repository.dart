import 'package:third_task/domain/entities/entities.dart';

abstract class ICatalogRepository {
  Future<List<Category>> getAllCategories();
}
