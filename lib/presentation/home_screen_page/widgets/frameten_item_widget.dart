import '../controller/home_screen_controller.dart';
import '../models/frameten_item_model.dart';
import 'package:anderson_s_application3/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FrametenItemWidget extends StatelessWidget {
  FrametenItemWidget(
    this.frametenItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FrametenItemModel frametenItemModelObj;

  var controller = Get.find<HomeScreenController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.fillDeepOrange.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      width: 156.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: frametenItemModelObj.image!.value,
              height: 84.v,
              width: 126.h,
              alignment: Alignment.center,
            ),
          ),
          SizedBox(height: 10.v),
          Container(
            width: 128.h,
            margin: EdgeInsets.only(left: 1.h),
            child: Obx(
              () => Text(
                frametenItemModelObj.granolaPremium!.value,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.titleSmallErrorContainer.copyWith(
                  height: 1.33,
                ),
              ),
            ),
          ),
          SizedBox(height: 7.v),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 1.v),
                child: Obx(
                  () => Text(
                    frametenItemModelObj.price!.value,
                    style: CustomTextStyles.titleSmallPrimary,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 57.h),
                child: Obx(
                  () => Text(
                    frametenItemModelObj.weight!.value,
                    style: CustomTextStyles.titleSmallGray80001,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 2.v),
        ],
      ),
    );
  }
}
