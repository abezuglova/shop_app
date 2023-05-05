import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:third_task/presentation/pages/shopping_cart_page/cubit/shopping_cart_cubit.dart';
import 'package:third_task/presentation/pages/shopping_cart_page/screens/empty_shopping_cart_screen.dart';
import 'package:third_task/presentation/ui_kit/error_screen.dart';
import 'package:third_task/presentation/ui_kit/loading_screen.dart';
import 'package:third_task/presentation/ui_kit/updating_screen_wrapper.dart';
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
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      appBar: CustomAppBar(
        titleText: l10n.shoppingCart,
        actions: [
          SvgIconButton(
            onPressed: () =>
                context.read<ShoppingCartCubit>().onShoppingCartDeleted(1),
            iconPath: AppIcons.basketIcon,
          ),
        ],
      ),
      body: BlocBuilder<ShoppingCartCubit, ShoppingCartState>(
        builder: (context, state) => state.map(
          loadInProgress: (state) => const LoadingScreen(),
          loadFailure: (state) => ErrorScreen(
            onRefresh: () async {
              await context.read<ShoppingCartCubit>().onPageOpened();
            },
          ),
          loadSuccess: (state) => state.shoppingCart.products.isEmpty
              ? const EmptyShoppingCartScreen()
              : UpdatingScreenWrapper(
                  isUpdateInProgress: state.isUpdateInProgress,
                  child: ShoppingCartScreen(
                    shoppingCart: state.shoppingCart,
                  ),
                ),
        ),
      ),
    );
  }
}
