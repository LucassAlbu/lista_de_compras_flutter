import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
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
    final listName = Get.arguments?['listName'] ?? '';
    nameShoppingListController.text = listName;
    addItemField();
  }

  void addItemField() {
    itemControllers.add(TextEditingController());
  }

  Future<void> saveShoppingList() async {
    final listName = nameShoppingListController.text.trim();
    if (listName.isEmpty) return;

    final items = itemControllers
        .map((controller) => controller.text.trim())
        .where((text) => text.isNotEmpty)
        .toList();

    final newList = ShoppingListModel(title: listName, items: items);
    final box = await Hive.openBox<ShoppingListModel>('shoppingLists');
    await box.put(listName, newList);

    Get.back(result: true); // <- isso avisa quem chamou
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
