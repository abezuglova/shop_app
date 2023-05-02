import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:third_task/di.dart';
import 'package:third_task/domain/repository/i_shopping_cart_repository.dart';
import 'package:third_task/presentation/pages/shopping_cart_page/cubit/shopping_cart_cubit.dart';
import 'package:third_task/presentation/pages/shopping_cart_page/screens/empty_shopping_cart_screen.dart';
import 'package:third_task/presentation/ui_kit/error_screen.dart';
import 'package:third_task/presentation/ui_kit/loading_screen.dart';
import 'package:third_task/presentation/utils/app_colors.dart';
import 'package:third_task/presentation/utils/app_icons.dart';
import 'package:third_task/presentation/pages/shopping_cart_page/screens/shopping_cart_screen.dart';
import 'package:third_task/presentation/ui_kit/custom_app_bar.dart';
import 'package:third_task/presentation/ui_kit/svg_icon_button.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ShoppingCartPage extends StatelessWidget {
  const ShoppingCartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return BlocProvider(
      create: (context) => ShoppingCartCubit(
        shoppingCartRepository: getIt<IShoppingCartRepository>(),
        shoppingCartId: 1,
      )..onPageOpened(),
      child: Scaffold(
        backgroundColor: AppColors.scaffoldBackgroundColor,
        appBar: CustomAppBar(
          titleText: l10n.shoppingCart,
          actions: [
            SvgIconButton(
              onPressed: () {},
              iconPath: AppIcons.basketIcon,
            ),
          ],
        ),
        body: BlocBuilder<ShoppingCartCubit, ShoppingCartState>(
          builder: (context, state) => state.map(
            loadInProgress: (state) => const LoadingScreen(),
            loadFailure: (state) => const ErrorScreen(),
            loadSuccess: (state) => state.shoppingCart.products.isEmpty
                ? const EmptyShoppingCartScreen()
                : ShoppingCartScreen(
                    shoppingCart: state.shoppingCart,
                  ),
          ),
        ),
      ),
    );
  }
}
