import 'package:flutter/cupertino.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../../shared/app_colors.dart';
import '../../../shared/widgets/basePage.dart';
import 'newShoppingListController.dart';

class NewShoppingListsPage extends GetView<NewShoppingListsController> {
  const NewShoppingListsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BasePage(
      title: 'Nova lista de Compras',
      showSearchBar: false,
      showFilterIcon: false,
      showAddIcon: false,
      onSearchChanged: (search) {},
      onAddIconPressed: () {},
      bodyContent: Container(
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        child: const Column(
          children: [
            // CustomInputField(
            //   title: 'Lista de compras',
            //   hint: "Informe o nome da lista ",
            //   controller: controller.nameShoppingListController,
            // ),
          ],
        ),
      ),
    );
  }
}
