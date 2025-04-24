import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../shared/app_colors.dart';
import '../../../shared/widgets/basePage.dart';
import '../../../shared/widgets/button_default.dart';
import '../../../shared/widgets/custom_input_field.dart';
import 'newShoppingListController.dart';

class NewShoppingListsPage extends GetView<NewShoppingListsController> {
  const NewShoppingListsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BasePage(
      title: controller.nameShoppingListController.text,
      showSearchBar: false,
      showFilterIcon: false,
      showAddIcon: false,
      bodyContent: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 80),
            child: Obx(
                  () =>
                  SingleChildScrollView(
                    padding:
                    const EdgeInsets.symmetric(vertical: 16),
                    child: Column(
                      children: List.generate(
                        controller.itemControllers.length,
                            (index) =>
                            Padding(
                              padding: const EdgeInsets.only(bottom: 12.0),
                              child: CustomInputField(
                                controller: controller.itemControllers[index],
                                textInputAction: TextInputAction.done,
                                onFieldSubmitted: (_) {
                                  final isLast =
                                      index ==
                                          controller.itemControllers.length - 1;
                                  final isNotEmpty = controller
                                      .itemControllers[index].text
                                      .trim()
                                      .isNotEmpty;
                                  if (isLast && isNotEmpty) {
                                    controller.addItemField();
                                  }
                                },
                                title: 'Item ${index + 1}',
                                hint: 'Produto...',
                              ),
                            ),
                      ),
                    ),
                  ),
            ),
          ),
          Positioned(
            bottom: 16,
            left: 16,
            right: 16,
            child: ButtonDefault(
              width: Get.width,
              height: 42.h,
              onPressed: () {
                controller.saveShoppingList();
              },
              color: AppColors.blueCard,
              borderColor: AppColors.blueCard,
              fontColor: Colors.white,
              hintText: 'Salvar Lista de Compras',
            ),
          ),
        ],
      ),
    );
  }
}
