import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:lista_de_compras/modules/shoppingLists/shoppingListsController.dart';
import 'package:lista_de_compras/modules/shoppingLists/widgets/shoppingListsCard.dart';

import '../../routes/app_routes.dart';
import '../../shared/widgets/basePage.dart';

class ShoppingListsPage extends GetView<ShoppingListsController> {
  const ShoppingListsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BasePage(
      title: 'Listas de Compras',
      showSearchBar: true,
      showFilterIcon: false,
      showAddIcon: true,
      onSearchChanged: (search) {},
      onAddIconPressed: () {
        // showNewShoppingListModal(
        //   nameShoppingListController: controller.nameShoppingListController,
        //   onSave: () {
        //     controller.onSaveNewShoppingListModal();
        //   },
        // );
        Get.toNamed(AppRoutes.newShoppingLists);
      },
      bodyContent: Obx(
        () => ListView.builder(
          itemCount: controller.shoppingLists.length,
          itemBuilder: (_, index) {
            final list = controller.shoppingLists[index];
            return ForumAnswerCard(
              title: list.title,
              replies: list.purchasedItems,
              views: list.items,
              createdAt: list.createdAt,
            );
          },
        ),
      ),
    );
  }
}
