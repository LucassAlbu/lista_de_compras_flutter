import 'package:get/get.dart';
import 'package:lista_de_compras/modules/shoppingLists/shoppingListsController.dart';

class ShoppingListsBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(ShoppingListsController());
  }
}
