import 'controller/my_orders_controller.dart';
import 'package:anderson_s_application3/core/app_export.dart';
import 'package:anderson_s_application3/presentation/home_screen_page/home_screen_page.dart';
import 'package:anderson_s_application3/widgets/app_bar/appbar_leading_image.dart';
import 'package:anderson_s_application3/widgets/app_bar/appbar_title.dart';
import 'package:anderson_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:anderson_s_application3/widgets/custom_bottom_bar.dart';
import 'package:anderson_s_application3/widgets/custom_elevated_button.dart';
import 'package:anderson_s_application3/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class MyOrdersScreen extends GetWidget<MyOrdersController> {
  const MyOrdersScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 8.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.h,
                      vertical: 31.v,
                    ),
                    decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderTL30,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_order_history".tr,
                          style:
                              CustomTextStyles.titleLargeBlack90001SemiBold_1,
                        ),
                        SizedBox(height: 22.v),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgFramePrimary456x18,
                              height: 626.v,
                              width: 18.h,
                              margin: EdgeInsets.only(top: 6.v),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: 10.h,
                                  bottom: 45.v,
                                ),
                                child: Column(
                                  children: [
                                    _buildRowFrame(),
                                    SizedBox(height: 16.v),
                                    _buildViewOrderDetails(),
                                    SizedBox(height: 16.v),
                                    _buildEditOrder(),
                                    SizedBox(height: 22.v),
                                    _buildRowFrame1(),
                                    SizedBox(height: 16.v),
                                    _buildViewOrderDetails1(),
                                    SizedBox(height: 24.v),
                                    _buildRowFrame2(),
                                    SizedBox(height: 16.v),
                                    _buildViewOrderDetails2(),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 22.v),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 29.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgRefresh,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 13.v,
          bottom: 16.v,
        ),
      ),
      title: AppbarTitle(
        text: "lbl_my_orders2".tr,
        margin: EdgeInsets.only(left: 16.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildOneButton() {
    return CustomElevatedButton(
      height: 55.v,
      width: 53.h,
      text: "lbl_13".tr,
      buttonStyle: CustomButtonStyles.fillGrayD,
      buttonTextStyle: theme.textTheme.headlineMedium!,
      alignment: Alignment.center,
    );
  }

  /// Section Widget
  Widget _buildRowFrame() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 17.h,
        vertical: 35.v,
      ),
      decoration: AppDecoration.outlineBlack90001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage48x57,
            height: 48.v,
            width: 57.h,
            margin: EdgeInsets.only(
              top: 8.v,
              bottom: 14.v,
            ),
          ),
          Container(
            height: 55.v,
            width: 53.h,
            margin: EdgeInsets.only(
              left: 16.h,
              top: 5.v,
              bottom: 10.v,
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgImage79x79,
                  height: 54.v,
                  width: 52.h,
                  alignment: Alignment.center,
                ),
                _buildOneButton(),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 26.h,
              bottom: 13.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "msg_arrives_tomorrow".tr,
                  style: CustomTextStyles.titleMediumBlack9000116,
                ),
                SizedBox(height: 16.v),
                Text(
                  "lbl_7_am_pm".tr,
                  style: CustomTextStyles.bodyLargeBlack9000116,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildViewOrderDetailsButton() {
    return CustomOutlinedButton(
      height: 36.v,
      width: 145.h,
      text: "msg_view_order_details".tr,
      buttonStyle: CustomButtonStyles.outlinePrimaryTL5,
      buttonTextStyle: CustomTextStyles.titleSmallPrimarySemiBold_1,
    );
  }

  /// Section Widget
  Widget _buildTrackOrderButton() {
    return CustomElevatedButton(
      height: 36.v,
      width: 120.h,
      text: "lbl_track_order".tr,
      buttonTextStyle: CustomTextStyles.titleSmallSemiBold,
    );
  }

  /// Section Widget
  Widget _buildViewOrderDetails() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildViewOrderDetailsButton(),
        _buildTrackOrderButton(),
      ],
    );
  }

  /// Section Widget
  Widget _buildEditOrder() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "lbl_edit_order".tr,
          style: CustomTextStyles.titleSmallPrimarySemiBold_1.copyWith(
            decoration: TextDecoration.underline,
          ),
        ),
        Text(
          "lbl_get_invoice".tr,
          style: CustomTextStyles.titleSmallPrimarySemiBold_1.copyWith(
            decoration: TextDecoration.underline,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildOne() {
    return CustomElevatedButton(
      height: 55.v,
      width: 53.h,
      text: "lbl_13".tr,
      buttonStyle: CustomButtonStyles.fillGrayD,
      buttonTextStyle: theme.textTheme.headlineMedium!,
      alignment: Alignment.center,
    );
  }

  /// Section Widget
  Widget _buildRowFrame1() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 24.v,
      ),
      decoration: AppDecoration.outlineBlack90001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage55x59,
            height: 55.v,
            width: 59.h,
            margin: EdgeInsets.only(bottom: 1.v),
          ),
          Container(
            height: 55.v,
            width: 53.h,
            margin: EdgeInsets.only(left: 15.h),
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgImage79x79,
                  height: 54.v,
                  width: 52.h,
                  alignment: Alignment.center,
                ),
                _buildOne(),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 27.h,
              top: 17.v,
              bottom: 18.v,
            ),
            child: Text(
              "msg_delivered_on_23".tr,
              style: CustomTextStyles.titleMediumBlack9000116,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildViewOrderDetailsButton1() {
    return CustomOutlinedButton(
      height: 36.v,
      width: 145.h,
      text: "msg_view_order_details".tr,
      buttonStyle: CustomButtonStyles.outlinePrimaryTL5,
      buttonTextStyle: CustomTextStyles.titleSmallPrimarySemiBold_1,
    );
  }

  /// Section Widget
  Widget _buildViewOrderDetails1() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildViewOrderDetailsButton1(),
        Padding(
          padding: EdgeInsets.only(
            top: 10.v,
            bottom: 7.v,
          ),
          child: Text(
            "lbl_get_invoice".tr,
            style: CustomTextStyles.titleSmallPrimarySemiBold_1.copyWith(
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildOne1() {
    return CustomElevatedButton(
      height: 55.v,
      width: 53.h,
      text: "lbl_13".tr,
      buttonStyle: CustomButtonStyles.fillGrayD,
      buttonTextStyle: theme.textTheme.headlineMedium!,
      alignment: Alignment.center,
    );
  }

  /// Section Widget
  Widget _buildRowFrame2() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14.v),
      decoration: AppDecoration.outlineBlack90001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage76x29,
            height: 76.v,
            width: 29.h,
          ),
          Container(
            height: 55.v,
            width: 53.h,
            margin: EdgeInsets.symmetric(vertical: 10.v),
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgImage79x79,
                  height: 54.v,
                  width: 52.h,
                  alignment: Alignment.center,
                ),
                _buildOne1(),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 26.v,
              bottom: 29.v,
            ),
            child: Text(
              "msg_delivered_on_15".tr,
              style: CustomTextStyles.titleMediumBlack9000116,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildViewOrderDetailsButton2() {
    return CustomOutlinedButton(
      height: 36.v,
      width: 145.h,
      text: "msg_view_order_details".tr,
      buttonStyle: CustomButtonStyles.outlinePrimaryTL5,
      buttonTextStyle: CustomTextStyles.titleSmallPrimarySemiBold_1,
    );
  }

  /// Section Widget
  Widget _buildViewOrderDetails2() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildViewOrderDetailsButton2(),
        Padding(
          padding: EdgeInsets.only(
            top: 10.v,
            bottom: 7.v,
          ),
          child: Text(
            "lbl_get_invoice".tr,
            style: CustomTextStyles.titleSmallPrimarySemiBold_1.copyWith(
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Get.toNamed(getCurrentRoute(type), id: 1);
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homeScreenPage;
      case BottomBarEnum.Iocn2:
        return "/";
      case BottomBarEnum.Cart:
        return "/";
      case BottomBarEnum.Twitter:
        return "/";
      case BottomBarEnum.User:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homeScreenPage:
        return HomeScreenPage();
      default:
        return DefaultWidget();
    }
  }
}
