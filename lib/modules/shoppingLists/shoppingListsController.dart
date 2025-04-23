import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:lista_de_compras/modules/shoppingLists/shoppingListModel.dart';
import 'package:lista_de_compras/routes/app_routes.dart';

class ShoppingListsController extends GetxController {
  final nameShoppingListController = TextEditingController();

  final RxList<ShoppingListModel> shoppingLists = <ShoppingListModel>[].obs;

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
      ShoppingListModel(
        title: 'Supermercado da Semana',
        items: 10,
        purchasedItems: 3,
        createdAt: DateTime.now().subtract(const Duration(days: 1)),
      ),
      ShoppingListModel(
        title: 'Churrasco Sábado',
        items: 8,
        purchasedItems: 8,
        createdAt: DateTime.now().subtract(const Duration(days: 3)),
      ),
      ShoppingListModel(
        title: 'Produtos de Limpeza',
        items: 6,
        purchasedItems: 2,
        createdAt: DateTime.now().subtract(const Duration(days: 5)),
      ),
    ]);
  }
}
