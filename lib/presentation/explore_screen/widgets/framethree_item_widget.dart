import '../controller/explore_controller.dart';
import '../models/framethree_item_model.dart';
import 'package:anderson_s_application3/core/app_export.dart';
import 'package:anderson_s_application3/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FramethreeItemWidget extends StatelessWidget {
  FramethreeItemWidget(
    this.framethreeItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FramethreeItemModel framethreeItemModelObj;

  var controller = Get.find<ExploreController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 6.h,
        vertical: 5.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      width: 114.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 6.v),
          Obx(
            () => CustomImageView(
              imagePath: framethreeItemModelObj.jaggeryPowder!.value,
              height: 69.adaptSize,
              width: 69.adaptSize,
            ),
          ),
          SizedBox(height: 5.v),
          Obx(
            () => Text(
              framethreeItemModelObj.jaggeryPowder1!.value,
              style: CustomTextStyles.labelLargeGray700,
            ),
          ),
          SizedBox(height: 4.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Obx(
                    () => Text(
                      framethreeItemModelObj.weight!.value,
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                  SizedBox(height: 2.v),
                  Obx(
                    () => Text(
                      framethreeItemModelObj.price!.value,
                      style: theme.textTheme.labelLarge,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 40.h,
                  top: 2.v,
                  bottom: 6.v,
                ),
                child: CustomIconButton(
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  padding: EdgeInsets.all(7.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgMinimize,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
