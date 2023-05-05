import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:third_task/presentation/ui_kit/shadow_wrapper.dart';
import 'package:third_task/presentation/utils/app_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class EmptyShoppingCartScreen extends StatelessWidget {
  const EmptyShoppingCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return ShadowWrapper(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              l10n.shoppingCartIsEmptyYet,
              style: AppFonts.medium24,
            ),
            SizedBox(height: 9.h),
            Text(
              l10n.addedProductsWillBeShownHere,
              style: AppFonts.regular14,
            ),
            SizedBox(height: 44.h),
            ElevatedButton(
              onPressed: () => context.push(
                '/catalog',
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 30.w,
                  vertical: 15.h,
                ),
                child: Text(
                  l10n.goShopping,
                  style: AppFonts.semiBold18_144_5.copyWith(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
