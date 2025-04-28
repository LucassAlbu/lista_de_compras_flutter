import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class NewShoppingListsController extends GetxController {
  final nameShoppingListController = TextEditingController();
  final RxList<TextEditingController> itemControllers =
      <TextEditingController>[].obs;

  @override
  void onInit() {
    super.onInit();

    final args = Get.arguments;
    if (args != null && args['listName'] != null) {
      nameShoppingListController.text = args['listName'];
    }

    addItemField();
  }

  void addItemField() {
    final controller = TextEditingController();
    itemControllers.add(controller);
  }

  void saveList() {
    final items = itemControllers
        .map((c) => c.text)
        .where((text) => text.trim().isNotEmpty)
        .toList();
    //todo importar o custom floating snackbar
    print('Itens salvos: $items');
  }
}
