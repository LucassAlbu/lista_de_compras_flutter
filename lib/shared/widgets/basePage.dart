import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../app_colors.dart';

class BasePage extends StatelessWidget {
  final String title;
  final VoidCallback? onAddIconPressed;
  final bool showAddIcon;
  final bool showFilterIcon;
  final VoidCallback? onFilterPressed;
  final bool showSearchBar;
  final Widget bodyContent;
  final ValueChanged<String>? onSearchChanged;
  final GlobalKey? filterIconKey;
  final IconData? extraIcon;
  final VoidCallback? onExtraIconPressed;
  final VoidCallback? backFunction;
  final String? searchHint;
  final Widget? floatingActionButton;
  final Widget? leading;
  final bool showBackButton;

  const BasePage({
    super.key,
    required this.title,
    this.onAddIconPressed,
    required this.showFilterIcon,
    this.onFilterPressed,
    required this.showSearchBar,
    required this.bodyContent,
    this.onSearchChanged,
    required this.showAddIcon,
    this.filterIconKey,
    this.extraIcon,
    this.onExtraIconPressed,
    this.searchHint,
    this.backFunction,
    this.floatingActionButton,
    this.leading,
    this.showBackButton = true,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blueCard,
      appBar: AppBar(
        leading: showBackButton
            ? (leading ??
            IconButton(
              icon: Icon(
                Icons.arrow_back_outlined,
                color: Colors.white,
                size: 24.w,
              ),
              onPressed: backFunction ?? () => Get.back(),
            ))
            : const SizedBox(),
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: AppColors.blueCard,
        title: Text(
          title,
          style: TextStyle(color: Colors.white, fontSize: 14.w),
        ),
        actions: [
          Visibility(
            visible: showFilterIcon,
            child: IconButton(
              key: filterIconKey,
              onPressed: onFilterPressed,
              icon: Icon(
                Icons.filter_alt_outlined,
                color: Colors.white,
                size: 24.w,
              ),
            ),
          ),
          Visibility(
            visible: extraIcon != null,
            child: IconButton(
              onPressed: onExtraIconPressed,
              icon: Icon(
                extraIcon,
                color: Colors.white,
                size: 24.w,
              ),
            ),
          ),
          Visibility(
            visible: showAddIcon,
            child: IconButton(
              onPressed: onAddIconPressed,
              icon: Icon(
                Icons.post_add_sharp,
                color: Colors.white,
                size: 24.w,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(8.w, 8.h, 8.w, 24.h),
        child: Column(
          children: [
            Expanded(
              child: Container(
                width: Get.width,
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(8.w, 0.h, 8.w, 8.h),
                  child: Column(
                    children: [
                      SizedBox(height: 16.h),
                      Visibility(
                        visible: showSearchBar,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 10.h),
                          child: Container(
                            decoration: BoxDecoration(
                              color: AppColors.greySearchBarBg,
                              borderRadius: BorderRadius.circular(18.r),
                            ),
                            child: TextFormField(
                              cursorColor: AppColors.greyText,
                              decoration: InputDecoration(
                                hintText: searchHint ?? 'Pesquisar',
                                prefixIcon: const Icon(Icons.search),
                                border: InputBorder.none,
                              ),
                              onChanged: onSearchChanged,
                            ),
                          ),
                        ),
                      ),
                      Expanded(child: bodyContent),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: floatingActionButton,
    );
  }
}
