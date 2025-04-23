import 'package:get/get_navigation/src/routes/get_route.dart';

import '../modules/shoppingLists/newShoppingList/newShoppingListBinding.dart';
import '../modules/shoppingLists/newShoppingList/newShoppingListPage.dart';
import '../modules/shoppingLists/shoppingListsBinding.dart';
import '../modules/shoppingLists/shoppingListsPage.dart';
import 'app_routes.dart';

class AppPages {
   static const initialRoute = AppRoutes.shoppingLists;

  static final routes = [
    GetPage(
      name: AppRoutes.shoppingLists,
      page: () => const ShoppingListsPage(),
      binding: ShoppingListsBinding(),
    ),
    GetPage(
      name: AppRoutes.newShoppingLists,
      page: () => const NewShoppingListsPage(),
      binding: NewShoppingListsBinding(),
    ),
  ];
}
