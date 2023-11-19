import '../controller/details_controller.dart';
import '../models/frame_item_model.dart';
import 'package:anderson_s_application3/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

// ignore: must_be_immutable
class FrameItemWidget extends StatelessWidget {
  FrameItemWidget(
    this.frameItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FrameItemModel frameItemModelObj;

  var controller = Get.find<DetailsController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 122.h,
      child: Padding(
        padding: EdgeInsets.only(bottom: 1.v),
        child: Column(
          children: [
            Container(
              height: 115.v,
              width: 122.h,
              padding: EdgeInsets.symmetric(vertical: 1.v),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: fs.Svg(
                    ImageConstant.imgGroup171,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgFloatingIcon,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                    alignment: Alignment.bottomRight,
                  ),
                  Obx(
                    () => CustomImageView(
                      imagePath: frameItemModelObj.pinapple!.value,
                      height: 85.v,
                      width: 84.h,
                      alignment: Alignment.center,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 47.v,
              width: 122.h,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Obx(
                    () => CustomImageView(
                      imagePath: frameItemModelObj.pinapple1!.value,
                      height: 47.v,
                      width: 122.h,
                      alignment: Alignment.center,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 11.v),
                      child: Obx(
                        () => Text(
                          frameItemModelObj.pinapple2!.value,
                          style: CustomTextStyles
                              .titleMediumOnPrimaryContainerBold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
