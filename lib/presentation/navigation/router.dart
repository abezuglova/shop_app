import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/presentation/navigation/scaffold_with_bottom_nav_bar.dart';
import 'package:third_task/presentation/pages/already_bought_page/already_bought_page.dart';
import 'package:third_task/presentation/pages/catalog_page/catalog_page.dart';
import 'package:third_task/presentation/pages/category_page/category_page.dart';
import 'package:third_task/presentation/pages/checkout_page/checkout_page.dart';
import 'package:third_task/presentation/pages/discounts_page/discounts_page.dart';
import 'package:third_task/presentation/pages/favorites_page/favorites_page.dart';
import 'package:third_task/presentation/pages/main_page/main_page.dart';
import 'package:third_task/presentation/pages/my_orders_page/my_orders_page.dart';
import 'package:third_task/presentation/pages/personal_data_page/personal_data_page.dart';
import 'package:third_task/presentation/pages/product_list_page/product_list_page.dart';
import 'package:third_task/presentation/pages/product_page/product_page.dart';
import 'package:third_task/presentation/pages/profile_page/profile_page.dart';
import 'package:third_task/presentation/pages/shopping_cart_page/shopping_cart_page.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

final router = GoRouter(
  initialLocation: '/',
  navigatorKey: _rootNavigatorKey,
  routes: [
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (BuildContext context, GoRouterState state, Widget child) {
        return ScaffoldWithBottomNavBar(location: state.location, child: child);
      },
      routes: <RouteBase>[
        GoRoute(
          path: '/',
          builder: (context, state) => const MainPage(),
        ),
        GoRoute(
          path: '/catalog',
          builder: (context, state) => const CatalogPage(),
          routes: [
            GoRoute(
              path: 'discounts',
              builder: (context, state) => const DiscountsPage(),
            ),
            GoRoute(
              path: 'favorites',
              builder: (context, state) => const FavoritesPage(),
            ),
            GoRoute(
              path: 'already_bought',
              builder: (context, state) => const AlreadyBoughtPage(),
            ),
            GoRoute(
              path: 'category',
              builder: (context, state) {
                final category = state.extra as Category;
                return CategoryPage(category: category);
              },
              routes: [
                GoRoute(
                  path: 'product_list',
                  builder: (context, state) {
                    final category = state.extra as Category;
                    return ProductListPage(category: category);
                  },
                  routes: [
                    GoRoute(
                      path: 'product',
                      builder: (context, state) {
                        final product = state.extra as Product;
                        return ProductPage(product: product);
                      },
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        GoRoute(
          path: '/search',
          builder: (context, state) => const SizedBox(),
        ),
        GoRoute(
          path: '/shopping_cart',
          builder: (context, state) => const ShoppingCartPage(),
          routes: [
            GoRoute(
              path: 'checkout',
              builder: (context, state) => const CheckoutPage(),
            ),
          ],
        ),
        GoRoute(
          path: '/profile',
          builder: (context, state) => const ProfilePage(),
          routes: [
            GoRoute(
              path: 'personal_data',
              builder: (context, state) => const PersonalDataPage(),
            ),
            GoRoute(
              path: 'my_orders',
              builder: (context, state) => const MyOrdersPage(),
            ),
            GoRoute(
              path: 'my_addresses',
              builder: (context, state) => const SizedBox(),
            ),
            GoRoute(
              path: 'payment_methods',
              builder: (context, state) => const SizedBox(),
            ),
            GoRoute(
              path: 'connect_with_us',
              builder: (context, state) => const SizedBox(),
            ),
          ],
        ),
      ],
    ),
  ],
);
