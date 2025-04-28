import 'package:get/get.dart';
import 'package:lista_de_compras/modules/shoppingLists/shoppingList/shoppingListController.dart';

class ShoppingListBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(ShoppingListController());
  }
}
