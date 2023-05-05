import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:third_task/di.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/domain/repository/i_catalog_repository.dart';
import 'package:third_task/presentation/pages/catalog_page/cubit/catalog_cubit.dart';
import 'package:third_task/presentation/pages/product_list_page/cubit/product_list_cubit.dart';
import 'package:third_task/presentation/pages/product_list_page/screens/product_list_screen.dart';
import 'package:third_task/presentation/ui_kit/error_screen.dart';
import 'package:third_task/presentation/ui_kit/loading_screen.dart';
import 'package:third_task/presentation/utils/app_colors.dart';
import 'package:third_task/presentation/utils/app_icons.dart';

import 'package:third_task/presentation/ui_kit/custom_app_bar.dart';
import 'package:third_task/presentation/ui_kit/svg_icon_button.dart';

class ProductListPage extends StatelessWidget {
  final Category category;
  const ProductListPage({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProductListCubit>(
      create: (context) => ProductListCubit(
        catalogRepository: getIt<ICatalogRepository>(),
        categoryId: category.id,
      )..onPageOpened(),
      child: Scaffold(
        backgroundColor: AppColors.scaffoldBackgroundColor,
        appBar: CustomAppBar(
          titleText: category.name,
          leading: SvgIconButton(
            onPressed: context.pop,
            iconPath: AppIcons.chevronLeftIcon,
          ),
        ),
        body: BlocBuilder<ProductListCubit, ProductListState>(
          builder: (context, state) => state.map(
            loadInProgress: (state) => const LoadingScreen(),
            loadFailure: (state) => ErrorScreen(
              onRefresh: () async {
                await context.read<CatalogCubit>().onPageOpened();
              },
            ),
            loadSuccess: (state) => ProductListScreen(
              productList: state.products,
              sortType: state.sortType,
            ),
          ),
        ),
      ),
    );
  }
}
