import 'package:flutter/material.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/presentation/pages/checkout_page/widgets/checkout_fields_widget.dart';
import 'package:third_task/presentation/pages/checkout_page/widgets/checkout_price_widget.dart';
import 'package:third_task/presentation/ui_kit/auth_phone_number_widget.dart';
import 'package:third_task/presentation/utils/app_colors.dart';
import 'package:third_task/presentation/utils/app_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CheckoutScreen extends StatelessWidget {
  final Order order;
  const CheckoutScreen({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Stack(
      children: [
        ListView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 22.5),
          children: [
            CheckoutFieldsWidget(
              order: order,
            ),
            const SizedBox(height: 16),
            CheckoutPriceWidget(
              order: order,
            ),
          ],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 89),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
              boxShadow: [
                BoxShadow(
                  color: AppColors.navBarShadowColor.withOpacity(0.06),
                  offset: const Offset(0, -7),
                  blurRadius: 15,
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(
                  onPressed: () => showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12),
                      ),
                    ),
                    builder: (context) => const AuthPhoneNumberWidget(),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 103, vertical: 16),
                    child: Text(
                      l10n.doCheckout,
                      style: AppFonts.semiBold18_144_5.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  l10n.pressingCheckoutYouAreAgreeWithConditions,
                  style: AppFonts.regular12_144_5,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    l10n.publicOffer,
                    style: AppFonts.regular12_144_5.copyWith(
                      color: AppColors.mainGreen,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
