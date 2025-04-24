import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:lista_de_compras/routes/app_routes.dart';

import '../../models/shoppingListModel.dart';

class HomeListsController extends GetxController {
  final nameShoppingListController = TextEditingController();
  final RxList<ShoppingListModel> shoppingLists = <ShoppingListModel>[].obs;

  late Box<ShoppingListModel> shoppingBox;

  @override
  void onInit() {
    super.onInit();
    _openBoxAndLoadLists();
  }

  Future<void> _openBoxAndLoadLists() async {
    shoppingBox = await Hive.openBox<ShoppingListModel>('shoppingLists');
    refreshShoppingLists();
  }

  void refreshShoppingLists() {
    final allLists = shoppingBox.values.toList();
    shoppingLists.assignAll(allLists);
  }

  void onSaveNewShoppingListModal() {
    Get.toNamed(
      AppRoutes.newShoppingLists,
      arguments: {'listName': nameShoppingListController.text},
    );
  }
}