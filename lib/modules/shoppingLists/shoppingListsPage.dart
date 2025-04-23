import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:lista_de_compras/modules/shoppingLists/shoppingListsController.dart';

import '../../routes/app_routes.dart';
import '../../shared/app_colors.dart';
import '../../shared/widgets/basePage.dart';

class ShoppingListsPage extends GetView<ShoppingListsController> {
  const ShoppingListsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BasePage(
      title: 'Listas de Compras',
      showSearchBar: true,
      showFilterIcon: true,
      showAddIcon: true,
      onSearchChanged: (search) {

      },
      onAddIconPressed: () {
        Get.toNamed(AppRoutes.newShoppingLists);
      },
      bodyContent: Container(
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        child: const Column(
          children: [
            Text("um texto de exmplo")
          ],
        ),
      ),
    );
  }
}
