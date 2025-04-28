import 'package:flutter/cupertino.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:lista_de_compras/modules/shoppingLists/listItem/listItemController.dart';

import '../../../shared/widgets/basePage.dart';

class ListItemPage extends GetView<ListItemController> {
  const ListItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BasePage(
      title: 'Listas de Compras',
      showSearchBar: true,
      showFilterIcon: false,
      showAddIcon: true,
      onSearchChanged: (search) {},
      onAddIconPressed: () {
      },
      bodyContent:
        Text('Itens da lista de Compras  '),
    );
  }
}
