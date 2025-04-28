import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'listItemController.dart';

class NewShoppingListsBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(ListItemController());
  }
}