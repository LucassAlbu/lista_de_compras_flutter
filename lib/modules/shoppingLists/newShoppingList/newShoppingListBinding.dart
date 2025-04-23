import 'package:get/get.dart';

import 'newShoppingListController.dart';

class NewShoppingListsBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(NewShoppingListsController());
  }
}
