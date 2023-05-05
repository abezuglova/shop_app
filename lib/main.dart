import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:third_task/di.dart';
import 'package:third_task/domain/repository/i_catalog_sections_repository.dart';
import 'package:third_task/presentation/navigation/router.dart';
import 'package:third_task/presentation/pages/favorites_page/cubit/favorites_cubit.dart';
import 'package:third_task/presentation/pages/shopping_cart_page/cubit/shopping_cart_cubit.dart';
import 'package:third_task/presentation/utils/app_colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'domain/repository/i_shopping_cart_repository.dart';

void main() {
  setupDI();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ShoppingCartCubit(
            shoppingCartRepository: getIt<IShoppingCartRepository>(),
            shoppingCartId: 1,
          )..onPageOpened(),
        ),
        BlocProvider<FavoritesCubit>(
          create: (context) => FavoritesCubit(
            catalogSectionsRepository: getIt<ICatalogSectionsRepository>(),
          )..onPageOpened(),
        ),
      ],
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        splitScreenMode: true,
        builder: (BuildContext context, Widget? child) {
          return MaterialApp.router(
            title: 'Flutter Demo',
            routerConfig: router,
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            theme: ThemeData(
              dividerTheme: DividerThemeData(
                color: AppColors.dividerColor,
                thickness: 1.h,
                space: 0,
              ),
              elevatedButtonTheme: ElevatedButtonThemeData(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.mainGreen,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(43.r),
                    ),
                  ),
                  elevation: 0,
                  padding: EdgeInsets.zero,
                ),
              ),
              textButtonTheme: TextButtonThemeData(
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  minimumSize: Size.zero,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
