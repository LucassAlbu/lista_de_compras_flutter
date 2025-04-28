
import 'package:flutter/cupertino.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:lista_de_compras/modules/shoppingLists/shoppingList/shoppingListController.dart';

import '../../../shared/widgets/basePage.dart';

class ShoppingListPage extends GetView<ShoppingListController> {
  const ShoppingListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BasePage(
      title: 'Listas de Compras',
      showSearchBar: true,
      showFilterIcon: false,
      showAddIcon: true,
      showBackButton: true,
      onSearchChanged: (search) {},
      onAddIconPressed: () {

      },
      bodyContent: Text('Listas de Compras'),
    );
  }
}