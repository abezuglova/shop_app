part of 'entities.dart';

@freezed
class MainPageData with _$MainPageData {
  factory MainPageData({
    required Address address,
    required List<Advertisement> advertisementList,
    required List<Category> popularCategories,
    required List<Product> bestDeals,
    required List<Product> alreadyBoughtList,
    required List<Brand> brandList,
  }) = _MainPageData;

  factory MainPageData.fromJson(Map<String, dynamic> json) =>
      _$MainPageDataFromJson(json);
}
