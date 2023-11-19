import 'controller/my_addresses_controller.dart';
import 'package:anderson_s_application3/core/app_export.dart';
import 'package:anderson_s_application3/presentation/home_screen_page/home_screen_page.dart';
import 'package:anderson_s_application3/widgets/app_bar/appbar_leading_image.dart';
import 'package:anderson_s_application3/widgets/app_bar/appbar_title.dart';
import 'package:anderson_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:anderson_s_application3/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class MyAddressesScreen extends GetWidget<MyAddressesController> {
  const MyAddressesScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 3.v),
          child: Column(
            children: [
              SizedBox(height: 8.v),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.h,
                  vertical: 23.v,
                ),
                decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
                  borderRadius: BorderRadiusStyle.customBorderTL30,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgIconPrimary16x16,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            margin: EdgeInsets.only(top: 2.v),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 7.h),
                            child: Text(
                              "lbl_add_new_address".tr,
                              style: CustomTextStyles.titleLargePrimarySemiBold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 24.v),
                    _buildRowFrame(),
                    SizedBox(height: 24.v),
                    _buildRowFrame2(),
                    SizedBox(height: 5.v),
                  ],
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
        text: "lbl_my_addresses".tr,
        margin: EdgeInsets.only(left: 16.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildRowFrame() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgSelect,
          height: 18.adaptSize,
          width: 18.adaptSize,
          margin: EdgeInsets.only(
            top: 50.v,
            bottom: 106.v,
          ),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.only(left: 16.h),
            padding: EdgeInsets.symmetric(
              horizontal: 24.h,
              vertical: 23.v,
            ),
            decoration: AppDecoration.outlineBlack90001.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 31.v),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildFrame(
                        userImage: ImageConstant.imgIconBlack90001,
                        officeLabel: "lbl_home".tr,
                      ),
                      SizedBox(height: 20.v),
                      Align(
                        alignment: Alignment.centerRight,
                        child: SizedBox(
                          width: 201.h,
                          child: Text(
                            "msg_4517_washington".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.bodyMedium!.copyWith(
                              height: 1.82,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgEdit,
                  height: 18.adaptSize,
                  width: 18.adaptSize,
                  margin: EdgeInsets.only(bottom: 108.v),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgIconGray60001,
                  height: 18.adaptSize,
                  width: 18.adaptSize,
                  margin: EdgeInsets.only(
                    left: 16.h,
                    bottom: 108.v,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildRowFrame2() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgSelect,
          height: 18.adaptSize,
          width: 18.adaptSize,
          margin: EdgeInsets.only(
            top: 50.v,
            bottom: 106.v,
          ),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.only(left: 16.h),
            padding: EdgeInsets.symmetric(
              horizontal: 24.h,
              vertical: 20.v,
            ),
            decoration: AppDecoration.outlineBlack90001.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: 4.v,
                      bottom: 33.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildFrame(
                          userImage: ImageConstant.imgIconBlack9000120x19,
                          officeLabel: "lbl_office".tr,
                        ),
                        SizedBox(height: 20.v),
                        Align(
                          alignment: Alignment.centerRight,
                          child: SizedBox(
                            width: 204.h,
                            child: Text(
                              "msg_2118_thornridge".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: theme.textTheme.bodyMedium!.copyWith(
                                height: 1.82,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgEdit,
                  height: 18.adaptSize,
                  width: 18.adaptSize,
                  margin: EdgeInsets.only(
                    left: 28.h,
                    bottom: 116.v,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgIconGray60001,
                  height: 18.adaptSize,
                  width: 18.adaptSize,
                  margin: EdgeInsets.only(
                    left: 16.h,
                    bottom: 116.v,
                  ),
                ),
              ],
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

  /// Common widget
  Widget _buildFrame({
    required String userImage,
    required String officeLabel,
  }) {
    return Row(
      children: [
        CustomImageView(
          imagePath: userImage,
          height: 20.v,
          width: 19.h,
          margin: EdgeInsets.only(bottom: 2.v),
        ),
        Padding(
          padding: EdgeInsets.only(left: 7.h),
          child: Text(
            officeLabel,
            style: CustomTextStyles.titleMediumBlack90001.copyWith(
              color: appTheme.black90001,
            ),
          ),
        ),
      ],
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
