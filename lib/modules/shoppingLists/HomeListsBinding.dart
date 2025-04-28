import 'package:get/get.dart';
import 'package:lista_de_compras/modules/shoppingLists/HomeListsController.dart';

class HomeListsBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(HomeListsController());
  }
}
