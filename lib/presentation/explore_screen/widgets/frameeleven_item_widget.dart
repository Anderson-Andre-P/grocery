import '../controller/explore_controller.dart';
import '../models/frameeleven_item_model.dart';
import 'package:anderson_s_application3/core/app_export.dart';
import 'package:anderson_s_application3/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FrameelevenItemWidget extends StatelessWidget {
  FrameelevenItemWidget(
    this.frameelevenItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FrameelevenItemModel frameelevenItemModelObj;

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
          SizedBox(height: 10.v),
          Obx(
            () => CustomImageView(
              imagePath: frameelevenItemModelObj.parleRusk!.value,
              height: 50.v,
              width: 62.h,
            ),
          ),
          SizedBox(height: 18.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Obx(
                    () => Text(
                      frameelevenItemModelObj.parleRusk1!.value,
                      style: CustomTextStyles.labelLargeGray700,
                    ),
                  ),
                  SizedBox(height: 4.v),
                  Obx(
                    () => Text(
                      frameelevenItemModelObj.weight!.value,
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                  SizedBox(height: 2.v),
                  Obx(
                    () => Text(
                      frameelevenItemModelObj.price!.value,
                      style: theme.textTheme.labelLarge,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 9.h,
                  top: 22.v,
                  bottom: 5.v,
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
