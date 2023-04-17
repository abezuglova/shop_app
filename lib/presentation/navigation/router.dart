import 'package:go_router/go_router.dart';
import 'package:third_task/presentation/pages/main_page/main_page.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => MainPage(),
    ),
  ],
);