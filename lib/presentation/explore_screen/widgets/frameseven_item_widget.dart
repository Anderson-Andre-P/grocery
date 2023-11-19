import '../controller/explore_controller.dart';
import '../models/frameseven_item_model.dart';
import 'package:anderson_s_application3/core/app_export.dart';
import 'package:anderson_s_application3/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FramesevenItemWidget extends StatelessWidget {
  FramesevenItemWidget(
    this.framesevenItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FramesevenItemModel framesevenItemModelObj;

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
          SizedBox(height: 15.v),
          Obx(
            () => CustomImageView(
              imagePath: framesevenItemModelObj.strawberry!.value,
              height: 52.v,
              width: 71.h,
            ),
          ),
          SizedBox(height: 12.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Obx(
                    () => Text(
                      framesevenItemModelObj.strawberry1!.value,
                      style: CustomTextStyles.labelLargeGray700,
                    ),
                  ),
                  SizedBox(height: 3.v),
                  Obx(
                    () => Text(
                      framesevenItemModelObj.weight!.value,
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                  SizedBox(height: 2.v),
                  Obx(
                    () => Text(
                      framesevenItemModelObj.price!.value,
                      style: theme.textTheme.labelLarge,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 6.h,
                  top: 23.v,
                  bottom: 3.v,
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
