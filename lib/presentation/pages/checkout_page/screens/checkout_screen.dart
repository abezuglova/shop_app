import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/presentation/pages/checkout_page/widgets/checkout_fields_widget.dart';
import 'package:third_task/presentation/pages/checkout_page/widgets/checkout_price_widget.dart';
import 'package:third_task/presentation/ui_kit/auth_phone_number_widget.dart';
import 'package:third_task/presentation/utils/app_colors.dart';
import 'package:third_task/presentation/utils/app_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CheckoutScreen extends StatelessWidget {
  final ShoppingCart shoppingCart;
  final double deliveryPrice;
  const CheckoutScreen(
      {super.key, required this.shoppingCart, required this.deliveryPrice});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Stack(
      children: [
        ListView(
          padding: EdgeInsets.symmetric(
            horizontal: 16.w,
            vertical: 22.5.h,
          ),
          children: [
            const CheckoutFieldsWidget(),
            SizedBox(height: 16.h),
            CheckoutPriceWidget(
              shoppingCart: shoppingCart,
              deliveryPrice: deliveryPrice,
            ),
            SizedBox(height: 222.h),
          ],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            padding: EdgeInsets.fromLTRB(16.w, 16.h, 16.w, 89.h),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12.r),
                topRight: Radius.circular(12.r),
              ),
              boxShadow: [
                BoxShadow(
                  color: AppColors.navBarShadowColor.withOpacity(0.06),
                  offset: Offset(0, -7.h),
                  blurRadius: 15.r,
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
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12.r),
                        topRight: Radius.circular(12.r),
                      ),
                    ),
                    builder: (context) => const AuthPhoneNumberWidget(),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 103.w,
                      vertical: 16.h,
                    ),
                    child: Text(
                      l10n.doCheckout,
                      style: AppFonts.semiBold18_144_5.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10.h),
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
