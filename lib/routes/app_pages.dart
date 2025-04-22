import 'package:get/get_navigation/src/routes/get_route.dart';

import '../modules/shoppingLists/shoppingListsBinding.dart';
import '../modules/shoppingLists/shoppingListsPage.dart';
import 'app_routes.dart';

class AppPages {
  // static const initialRoute = AppRoutes.splash;

  static final routes = [
    GetPage(
      name: AppRoutes.shoppingLists,
      page: () => const ShoppingListsPage(),
      binding: ShoppingListsBinding(),
    ),
  ];
}
