part of 'entities.dart';

@freezed
class Category with _$Category {
  static const subcategoriesList = [
      Subcategory(
        name: 'Чай',
        productTypes: [],
      ),
      Subcategory(
        name: 'Кофе',
        productTypes: [],
      ),
      Subcategory(
        name: 'Какао, цикорий',
        productTypes: [],
      ),
      Subcategory(
        name: 'Соки, морсы, нектары, компоты',
        productTypes: [],
      ),
      Subcategory(
        name: 'Вода минеральная и питьевая',
        productTypes: [],
      ),
      Subcategory(
        name: 'Лимонады, напитки',
        productTypes: [],
      ),
      Subcategory(
        name: 'Холодный чай, кофе, экзотика',
        productTypes: [],
      ),
    ];
  factory Category({
    required String name,
    @Default(Category.subcategoriesList) List<Subcategory> subcategories,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}
