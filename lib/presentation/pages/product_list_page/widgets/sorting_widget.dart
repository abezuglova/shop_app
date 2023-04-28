import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/domain/entities/products_sort_type.dart';
import 'package:third_task/presentation/pages/product_list_page/cubit/product_list_cubit.dart';
import 'package:third_task/presentation/utils/app_colors.dart';
import 'package:third_task/presentation/utils/app_fonts.dart';
import 'package:third_task/presentation/utils/app_icons.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SortingWidget extends StatelessWidget {
  final List<Product> productList;
  final ProductsSortType sortType;
  const SortingWidget({
    super.key,
    required this.productList,
    required this.sortType,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final cubit = context.read<ProductListCubit>();
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            l10n.nProducts(productList.length),
            style: AppFonts.regular14.copyWith(
              color: AppColors.secondaryTextColor,
            ),
          ),
          DropdownButtonHideUnderline(
            child: SizedBox(
              width: 150,
              height: 20,
              child: DropdownButton<ProductsSortType>(
                value: sortType,
                icon: SvgPicture.asset(AppIcons.arrowDownIcon),
                onChanged: (ProductsSortType? value) =>
                    cubit.onProductsSortTypeChanged(
                  value ?? sortType,
                ),
                items: ProductsSortType.values
                    .map<DropdownMenuItem<ProductsSortType>>(
                      (ProductsSortType value) =>
                          DropdownMenuItem<ProductsSortType>(
                        value: value,
                        child: Text(
                          value.getSortName(l10n),
                          style: AppFonts.regular14,
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
