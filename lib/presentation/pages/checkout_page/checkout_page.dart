import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/presentation/pages/checkout_page/screens/checkout_screen.dart';
import 'package:third_task/presentation/ui_kit/custom_app_bar.dart';
import 'package:third_task/presentation/ui_kit/svg_icon_button.dart';
import 'package:third_task/presentation/utils/app_colors.dart';
import 'package:third_task/presentation/utils/app_icons.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CheckoutPage extends StatelessWidget {
  final ShoppingCart shoppingCart;
  const CheckoutPage({super.key, required this.shoppingCart});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: AppColors.scaffoldBackgroundColor,
        appBar: CustomAppBar(
          titleText: l10n.checkout,
          leading: SvgIconButton(
            onPressed: () => context.pop(),
            iconPath: AppIcons.chevronLeftIcon,
          ),
        ),
        body: CheckoutScreen(
          shoppingCart: shoppingCart,
          deliveryPrice: 99,
        ),
      ),
    );
  }
}
