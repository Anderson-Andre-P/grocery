import '../controller/fruits_controller.dart';
import '../models/fruits_item_model.dart';
import 'package:anderson_s_application3/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FruitsItemWidget extends StatelessWidget {
  FruitsItemWidget(
    this.fruitsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FruitsItemModel fruitsItemModelObj;

  var controller = Get.find<FruitsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: fruitsItemModelObj.icon!.value,
              height: 26.v,
              width: 25.h,
              alignment: Alignment.centerRight,
            ),
          ),
          Obx(
            () => CustomImageView(
              imagePath: fruitsItemModelObj.strawberry!.value,
              height: 79.v,
              width: 107.h,
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                Obx(
                  () => Text(
                    fruitsItemModelObj.strawberry1!.value,
                    style: CustomTextStyles.titleMediumGray700,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 7.h,
                    top: 2.v,
                  ),
                  child: Obx(
                    () => Text(
                      fruitsItemModelObj.kg!.value,
                      style: CustomTextStyles.titleSmallGray700,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 7.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(
                () => Text(
                  fruitsItemModelObj.price!.value,
                  style: theme.textTheme.titleMedium,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgIconPrimary,
                height: 18.adaptSize,
                width: 18.adaptSize,
                margin: EdgeInsets.only(
                  left: 94.h,
                  top: 2.v,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 7.h),
                child: Obx(
                  () => Text(
                    fruitsItemModelObj.one!.value,
                    style: theme.textTheme.titleMedium,
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgIconPrimary18x18,
                height: 18.adaptSize,
                width: 18.adaptSize,
                margin: EdgeInsets.only(
                  left: 7.h,
                  top: 2.v,
                ),
              ),
            ],
          ),
          SizedBox(height: 14.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 82.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 10.h,
                  vertical: 5.v,
                ),
                decoration: AppDecoration.fillPrimary.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder3,
                ),
                child: Obx(
                  () => Text(
                    fruitsItemModelObj.subscribe!.value,
                    style: CustomTextStyles.labelLargeOnPrimaryContainer,
                  ),
                ),
              ),
              Container(
                width: 78.h,
                margin: EdgeInsets.only(left: 14.h),
                padding: EdgeInsets.symmetric(
                  horizontal: 8.h,
                  vertical: 5.v,
                ),
                decoration: AppDecoration.outlinePrimary.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder3,
                ),
                child: Obx(
                  () => Text(
                    fruitsItemModelObj.button!.value,
                    style: CustomTextStyles.labelLargePrimary_1,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 3.v),
        ],
      ),
    );
  }
}
