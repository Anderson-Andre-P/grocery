import 'controller/user_controller.dart';
import 'package:anderson_s_application3/core/app_export.dart';
import 'package:anderson_s_application3/presentation/home_screen_page/home_screen_page.dart';
import 'package:anderson_s_application3/widgets/app_bar/appbar_leading_image.dart';
import 'package:anderson_s_application3/widgets/app_bar/appbar_subtitle.dart';
import 'package:anderson_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:anderson_s_application3/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class UserScreen extends GetWidget<UserController> {
  const UserScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 2.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgImage24,
                height: 79.adaptSize,
                width: 79.adaptSize,
                radius: BorderRadius.circular(
                  39.h,
                ),
                alignment: Alignment.center,
              ),
              SizedBox(height: 25.v),
              Padding(
                padding: EdgeInsets.only(left: 135.h),
                child: Text(
                  "lbl_george_d".tr,
                  style: CustomTextStyles.titleLargeBlack90001,
                ),
              ),
              SizedBox(height: 6.v),
              Padding(
                padding: EdgeInsets.only(left: 153.h),
                child: Text(
                  "lbl_george31".tr,
                  style: CustomTextStyles.bodyMediumGray80002,
                ),
              ),
              SizedBox(height: 21.v),
              Container(
                width: 396.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 24.h,
                  vertical: 21.v,
                ),
                decoration: AppDecoration.fillGray10002.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder22,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgMenu,
                          height: 21.v,
                          width: 24.h,
                          margin: EdgeInsets.only(bottom: 1.v),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 18.h),
                          child: Text(
                            "lbl_my_orders".tr,
                            style: CustomTextStyles.bodyLargeGray60005,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 31.v),
                    Row(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgFrame,
                          height: 21.v,
                          width: 24.h,
                          margin: EdgeInsets.only(bottom: 1.v),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20.h),
                          child: Text(
                            "msg_my_subscriptions".tr,
                            style: CustomTextStyles.bodyLargeGray60001,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 31.v),
                    Row(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgLocationPrimary,
                          height: 21.v,
                          width: 24.h,
                          margin: EdgeInsets.only(bottom: 1.v),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 19.h),
                          child: Text(
                            "lbl_my_addresses".tr,
                            style: CustomTextStyles.bodyLargeGray60001,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 31.v),
                    Row(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgFramePrimary,
                          height: 21.v,
                          width: 24.h,
                          margin: EdgeInsets.only(bottom: 1.v),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 17.h),
                          child: Text(
                            "lbl_faq".tr,
                            style: CustomTextStyles.bodyLargeGray60001,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 31.v),
                    Row(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgHeadPhone,
                          height: 21.v,
                          width: 24.h,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 18.h),
                          child: Text(
                            "lbl_contact_us".tr,
                            style: CustomTextStyles.bodyLargeGray60001,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 31.v),
                    Row(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgInfo,
                          height: 21.v,
                          width: 24.h,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text(
                            "lbl_about".tr,
                            style: CustomTextStyles.bodyLargeGray60001,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 32.v),
                    Row(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgFilter,
                          height: 21.v,
                          width: 24.h,
                          margin: EdgeInsets.only(bottom: 3.v),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 18.h,
                            top: 3.v,
                          ),
                          child: Text(
                            "lbl_log_out".tr,
                            style: CustomTextStyles.bodyLargeGray60001,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 32.v),
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
        imagePath: ImageConstant.imgPath872,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 15.v,
          bottom: 14.v,
        ),
      ),
      title: AppbarSubtitle(
        text: "lbl_profile".tr,
        margin: EdgeInsets.only(left: 16.h),
      ),
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
