import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class NewShoppingListsController extends GetxController {
  final nameShoppingListController = TextEditingController();

  @override
  void onInit() {
    super.onInit();

    final args = Get.arguments;
    if (args != null && args['listName'] != null) {
      nameShoppingListController.text = args['listName'];
    }
  }
}