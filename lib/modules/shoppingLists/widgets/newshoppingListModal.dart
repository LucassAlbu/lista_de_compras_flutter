import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:validatorless/validatorless.dart';

import '../../../shared/app_colors.dart';
import '../../../shared/widgets/button_default.dart';
import '../../../shared/widgets/custom_input_field.dart';

void showNewShoppingListModal({
  required TextEditingController nameShoppingListController,
  required VoidCallback onSave,
}) {
  final GlobalKey<FormState> key = GlobalKey<FormState>();
  Get.dialog(
    Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        width: Get.width * 0.9,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Padding(
          padding: EdgeInsets.all(18.w),
          child: Form(
            key: key,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Nova lista de compras:',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20.h),
                CustomInputField(
                  title: 'Nome',
                  hint: 'Nome da lista de compras',
                  controller: nameShoppingListController,
                  validators: Validatorless.required('Campo obrigatório'),
                ),
                SizedBox(height: 20.h),
                ButtonDefault(
                  width: Get.width,
                  height: 42.h,
                  onPressed: () {
                    if (!key.currentState!.validate()) return;
                    onSave();
                    Get.back();
                  },
                  color: AppColors.blueCard,
                  borderColor: AppColors.blueCard,
                  fontColor: Colors.white,
                  hintText: 'Salvar',
                ),
                SizedBox(height: 16.h),
                ButtonDefault(
                  width: Get.width,
                  height: 42.h,
                  onPressed: () => Get.back(),
                  color: Colors.red,
                  borderColor: Colors.red,
                  fontColor: Colors.white,
                  hintText: 'Cancelar',
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
