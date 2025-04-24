import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:lista_de_compras/routes/app_routes.dart';

import '../../models/mockModel.dart';

class ShoppingListsController extends GetxController {
  final nameShoppingListController = TextEditingController();

  final RxList<ShoppingListMockModel> shoppingLists =
      <ShoppingListMockModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    _loadMockedLists();
  }

  void onSaveNewShoppingListModal() {
    Get.toNamed(
      AppRoutes.newShoppingLists,
      arguments: {'listName': nameShoppingListController.text},
    );
  }

  void _loadMockedLists() {
    shoppingLists.assignAll([
      ShoppingListMockModel(
        title: 'Supermercado da Semana',
        items: 10,
      ),
      ShoppingListMockModel(
        title: 'Churrasco Sábado',
        items: 8,
      ),
      ShoppingListMockModel(
        title: 'Produtos de Limpeza',
        items: 6,
      ),
    ]);
  }
}
