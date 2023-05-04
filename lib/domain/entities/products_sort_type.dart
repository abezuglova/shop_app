import 'package:third_task/domain/entities/entities.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

enum ProductsSortType {
  ascPriceSort,
  descPriceSort,
}

extension ProductsSortTypeX on ProductsSortType {
  List<Product> sort(List<Product> products) {
    switch (this) {
      case ProductsSortType.ascPriceSort:
        return (products
              ..sort(
                (product1, product2) => product1.newPrice.compareTo(
                  product2.newPrice,
                ),
              ))
            .toList();
      case ProductsSortType.descPriceSort:
        return (products
              ..sort(
                (product1, product2) => product2.newPrice.compareTo(
                  product1.newPrice,
                ),
              ))
            .toList();
    }
  }

  String getSortName(AppLocalizations l10n) {
    switch (this) {
      case ProductsSortType.ascPriceSort:
        return l10n.byAscPrice;
      case ProductsSortType.descPriceSort:
        return l10n.byDescPrice;
    }
  }
}
