import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:hive/hive.dart';

import '../../../models/shoppingListModel.dart';

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
    addItemField(); // inicia com um campo
  }

  void addItemField() {
    itemControllers.add(TextEditingController());
  }

  void saveShoppingList() async {
    final box = Hive.box<ShoppingListModel>('shopping_lists');

    final listName = nameShoppingListController.text.trim();
    final items = itemControllers
        .map((controller) => controller.text.trim())
        .where((text) => text.isNotEmpty)
        .toList();

    if (listName.isNotEmpty && items.isNotEmpty) {
      final shoppingList = ShoppingListModel(title: listName, items: items);
      await box.put(listName, shoppingList);
      Get.back(); // volta para a tela anterior
    } else {
      Get.snackbar('Erro', 'Preencha o nome da lista e pelo menos um item');
    }
  }

  @override
  void onClose() {
    nameShoppingListController.dispose();
    for (var c in itemControllers) {
      c.dispose();
    }
    super.onClose();
  }
}
