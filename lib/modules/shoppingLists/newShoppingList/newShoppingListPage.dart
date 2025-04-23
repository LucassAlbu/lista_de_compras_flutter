import 'package:flutter/cupertino.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:lista_de_compras/modules/shoppingLists/shoppingListsController.dart';

import '../../../shared/app_colors.dart';
import '../../../shared/widgets/basePage.dart';

class NewShoppingListsPage extends GetView<ShoppingListsController> {
  const NewShoppingListsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BasePage(
      title: 'Nova lista de Compras',
      showSearchBar: true,
      showFilterIcon: false,
      showAddIcon: true,
      onSearchChanged: (search) {

      },
      onAddIconPressed: () {},
      bodyContent: Container(
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        child: const Column(
          children: [
            Text("um texto de exmplo"),

          ],
        ),
      ),
    );
  }
}
