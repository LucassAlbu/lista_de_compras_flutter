import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:lista_de_compras/modules/shoppingLists/shoppingList/shoppingListBinding.dart';
import 'package:lista_de_compras/modules/shoppingLists/shoppingList/shoppingListPage.dart';

import '../modules/shoppingLists/newShoppingList/newShoppingListBinding.dart';
import '../modules/shoppingLists/newShoppingList/newShoppingListPage.dart';
import '../modules/shoppingLists/HomeListsBinding.dart';
import '../modules/shoppingLists/HomeListsPage.dart';
import 'app_routes.dart';

class AppPages {
   static const initialRoute = AppRoutes.shoppingLists;

  static final routes = [
    GetPage(
      name: AppRoutes.homeLists,
      page: () => const HomeListsPage(),
      binding: HomeListsBinding(),
    ),
    GetPage(
      name: AppRoutes.newShoppingLists,
      page: () => const NewShoppingListsPage(),
      binding: NewShoppingListsBinding(),
    ),
    GetPage(
      name: AppRoutes.shoppingLists,
      page: () => const ShoppingListPage(),
      binding: ShoppingListBinding(),
    ),
  ];
}
