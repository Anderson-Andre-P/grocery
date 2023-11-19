import '../controller/home_screen_controller.dart';
import '../models/categories_item_model.dart';
import 'package:anderson_s_application3/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CategoriesItemWidget extends StatelessWidget {
  CategoriesItemWidget(
    this.categoriesItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CategoriesItemModel categoriesItemModelObj;

  var controller = Get.find<HomeScreenController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125.v,
      width: 87.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 88.v,
              width: 87.h,
              decoration: BoxDecoration(
                color: appTheme.gray100,
                borderRadius: BorderRadius.circular(
                  16.h,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Obx(
                  () => CustomImageView(
                    imagePath: categoriesItemModelObj.groecries!.value,
                    height: 65.v,
                    width: 75.h,
                  ),
                ),
                SizedBox(height: 22.v),
                Container(
                  width: 87.h,
                  padding: EdgeInsets.symmetric(
                    horizontal: 14.h,
                    vertical: 11.v,
                  ),
                  decoration: AppDecoration.fillPrimary.copyWith(
                    borderRadius: BorderRadiusStyle.customBorderBL5,
                  ),
                  child: Obx(
                    () => Text(
                      categoriesItemModelObj.name!.value,
                      style: CustomTextStyles.labelLargeOnPrimaryContainer,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
