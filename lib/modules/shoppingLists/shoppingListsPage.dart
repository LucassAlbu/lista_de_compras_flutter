import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:lista_de_compras/models/shoppingListModel.dart';
import 'package:lista_de_compras/modules/shoppingLists/shoppingListsController.dart';
import 'package:lista_de_compras/modules/shoppingLists/widgets/newshoppingListModal.dart';
import 'package:lista_de_compras/modules/shoppingLists/widgets/shoppingListsCard.dart';
import 'package:lista_de_compras/shared/widgets/custom_bottom_sheet.dart';

import '../../routes/app_routes.dart';
import '../../shared/widgets/basePage.dart';
import '../../shared/widgets/custom_bottom_sheet_button.dart';

class ShoppingListsPage extends GetView<ShoppingListsController> {
  const ShoppingListsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BasePage(
      title: 'Listas de Compras',
      showSearchBar: true,
      showFilterIcon: false,
      showAddIcon: true,
      showBackButton: false,
      onSearchChanged: (search) {},
      onAddIconPressed: () {
        showNewShoppingListModal(
          nameShoppingListController: controller.nameShoppingListController,
          onSave: () async {
            final listName = controller.nameShoppingListController.text.trim();
            if (listName.isNotEmpty) {
              final result = await Get.toNamed(
                AppRoutes.newShoppingLists,
                arguments: {'listName': listName},
              );
              if (result == true) {
                controller.refreshShoppingLists();
              }
            }
          },
        );
      },
      bodyContent: Obx(
        () => ListView.builder(
            itemCount: controller.shoppingLists.length,
            itemBuilder: (_, index) {
              final list = controller.shoppingLists[index];
              return GestureDetector(
                onTap: () {
                  CustomBottomSheet.show(
                    context,
                    'Ações da lista',
                    _bottomSheetBody(
                      context,
                      controller,
                      list,
                    ),
                  );
                },
                child: ForumAnswerCard(
                  title: list.title,
                  itens: list.items.length,
                ),
              );
            }),
      ),
    );
  }

  Widget _bottomSheetBody(
    BuildContext context,
    ShoppingListsController controller,
    ShoppingListModel list,
  ) {
    return Column(
      children: [
        CustomBottomSheetButton(
          label: 'Detalhes',
          onPressed: () {},
        ),
        CustomBottomSheetButton(
          label: 'CANCELAR',
          onPressed: () {
            Get.back();
          },
        ),
      ],
    );
  }
}
