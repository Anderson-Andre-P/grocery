import '../controller/explore_controller.dart';
import '../models/framenine_item_model.dart';
import 'package:anderson_s_application3/core/app_export.dart';
import 'package:anderson_s_application3/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FramenineItemWidget extends StatelessWidget {
  FramenineItemWidget(
    this.framenineItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FramenineItemModel framenineItemModelObj;

  var controller = Get.find<ExploreController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 3.v),
      padding: EdgeInsets.symmetric(
        horizontal: 7.h,
        vertical: 5.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      width: 114.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 10.v),
          Obx(
            () => CustomImageView(
              imagePath: framenineItemModelObj.aMATEmilk!.value,
              height: 57.v,
              width: 46.h,
              margin: EdgeInsets.only(left: 23.h),
            ),
          ),
          SizedBox(height: 12.v),
          SizedBox(
            height: 52.v,
            width: 98.h,
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 6.v),
                  child: CustomIconButton(
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    padding: EdgeInsets.all(7.h),
                    alignment: Alignment.bottomRight,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgMinimize,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Obx(
                        () => Text(
                          framenineItemModelObj.aMATEMilk!.value,
                          style: CustomTextStyles.labelLargeGray700,
                        ),
                      ),
                      SizedBox(height: 3.v),
                      Obx(
                        () => Text(
                          framenineItemModelObj.ltrCounter!.value,
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                      SizedBox(height: 4.v),
                      Obx(
                        () => Text(
                          framenineItemModelObj.price!.value,
                          style: theme.textTheme.labelLarge,
                        ),
                      ),
                    ],
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
