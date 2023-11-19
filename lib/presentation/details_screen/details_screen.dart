import '../details_screen/widgets/frame_item_widget.dart';
import 'controller/details_controller.dart';
import 'models/frame_item_model.dart';
import 'package:anderson_s_application3/core/app_export.dart';
import 'package:anderson_s_application3/widgets/app_bar/appbar_leading_image.dart';
import 'package:anderson_s_application3/widgets/app_bar/appbar_title.dart';
import 'package:anderson_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:anderson_s_application3/widgets/custom_elevated_button.dart';
import 'package:anderson_s_application3/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class DetailsScreen extends GetWidget<DetailsController> {
  const DetailsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildBackground(),
              SizedBox(height: 24.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 15.h,
                      right: 15.h,
                      bottom: 5.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgSwipeSecondarycontainer,
                          height: 5.v,
                          width: 33.h,
                          alignment: Alignment.center,
                        ),
                        SizedBox(height: 25.v),
                        _buildFrame(),
                        SizedBox(height: 14.v),
                        Text(
                          "lbl_special_price".tr,
                          style: CustomTextStyles.titleLargePrimary,
                        ),
                        SizedBox(height: 14.v),
                        _buildPrice(),
                        SizedBox(height: 24.v),
                        Text(
                          "lbl_description".tr,
                          style: CustomTextStyles.titleLargeGray80001,
                        ),
                        SizedBox(height: 10.v),
                        Container(
                          width: 376.h,
                          margin: EdgeInsets.only(right: 20.h),
                          child: Text(
                            "msg_green_apples_have".tr,
                            maxLines: 4,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.bodyLarge16.copyWith(
                              height: 1.56,
                            ),
                          ),
                        ),
                        SizedBox(height: 28.v),
                        Align(
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomElevatedButton(
                                height: 36.v,
                                width: 106.h,
                                text: "lbl_subscribe".tr,
                                buttonTextStyle: CustomTextStyles
                                    .titleMediumOnPrimaryContainer16,
                              ),
                              CustomOutlinedButton(
                                height: 36.v,
                                width: 106.h,
                                text: "lbl_buy_once".tr,
                                margin: EdgeInsets.only(left: 21.h),
                                buttonStyle:
                                    CustomButtonStyles.outlinePrimaryTL5,
                                buttonTextStyle: CustomTextStyles.titleMedium16,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 22.v),
                        Text(
                          "lbl_related_items".tr,
                          style: CustomTextStyles.titleLargeGray80001,
                        ),
                        SizedBox(height: 25.v),
                        _buildFrame1(),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBackground() {
    return SizedBox(
      height: 262.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 185.v,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: theme.colorScheme.primary,
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(30.h),
                ),
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgImage219x240,
            height: 219.v,
            width: 240.h,
            alignment: Alignment.bottomCenter,
          ),
          CustomAppBar(
            height: 47.v,
            leadingWidth: 29.h,
            leading: AppbarLeadingImage(
              imagePath: ImageConstant.imgRefresh,
              margin: EdgeInsets.only(
                left: 16.h,
                top: 1.v,
              ),
            ),
            title: AppbarTitle(
              text: "lbl_details".tr,
              margin: EdgeInsets.only(left: 16.h),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame() {
    return Padding(
      padding: EdgeInsets.only(right: 1.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_green_apple".tr,
            style: CustomTextStyles.headlineMediumGray80001,
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgIconPrimary,
            height: 30.adaptSize,
            width: 30.adaptSize,
            margin: EdgeInsets.only(bottom: 4.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 15.h,
              bottom: 5.v,
            ),
            child: Text(
              "lbl_12".tr,
              style: theme.textTheme.headlineSmall,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgIconPrimary18x18,
            height: 30.adaptSize,
            width: 30.adaptSize,
            margin: EdgeInsets.only(
              left: 16.h,
              bottom: 4.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPrice() {
    return Padding(
      padding: EdgeInsets.only(right: 1.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "lbl_2".tr,
            style: theme.textTheme.displaySmall,
          ),
          Padding(
            padding: EdgeInsets.only(top: 11.v),
            child: Text(
              "lbl_42_off".tr,
              style: CustomTextStyles.titleLargePrimarySemiBold,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame1() {
    return SizedBox(
      height: 162.v,
      child: Obx(
        () => ListView.separated(
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              width: 16.h,
            );
          },
          itemCount:
              controller.detailsModelObj.value.frameItemList.value.length,
          itemBuilder: (context, index) {
            FrameItemModel model =
                controller.detailsModelObj.value.frameItemList.value[index];
            return FrameItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}
