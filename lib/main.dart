import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:lista_de_compras/modules/shoppingLists/shoppingListsPage.dart';
import 'package:lista_de_compras/routes/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Lista de Compras',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.shoppingLists,
      getPages: [
        GetPage(
          name: AppRoutes.createList,
          page: () => const ShoppingListsPage(),
        ),
      ],
    );
  }
}
