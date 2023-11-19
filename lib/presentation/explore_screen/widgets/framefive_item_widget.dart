import '../controller/explore_controller.dart';
import '../models/framefive_item_model.dart';
import 'package:anderson_s_application3/core/app_export.dart';
import 'package:anderson_s_application3/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FramefiveItemWidget extends StatelessWidget {
  FramefiveItemWidget(
    this.framefiveItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FramefiveItemModel framefiveItemModelObj;

  var controller = Get.find<ExploreController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      width: 114.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 9.v),
          Obx(
            () => CustomImageView(
              imagePath: framefiveItemModelObj.tomato!.value,
              height: 55.v,
              width: 76.h,
            ),
          ),
          SizedBox(height: 14.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Obx(
                    () => Text(
                      framefiveItemModelObj.tomato1!.value,
                      style: CustomTextStyles.labelLargeGray700,
                    ),
                  ),
                  SizedBox(height: 4.v),
                  Obx(
                    () => Text(
                      framefiveItemModelObj.weight!.value,
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                  SizedBox(height: 2.v),
                  Obx(
                    () => Text(
                      framefiveItemModelObj.price!.value,
                      style: theme.textTheme.labelLarge,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 27.h,
                  top: 22.v,
                  bottom: 6.v,
                ),
                child: CustomIconButton(
                  height: 23.v,
                  width: 24.h,
                  padding: EdgeInsets.all(6.h),
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
