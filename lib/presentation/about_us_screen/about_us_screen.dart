import 'controller/about_us_controller.dart';
import 'package:anderson_s_application3/core/app_export.dart';
import 'package:anderson_s_application3/presentation/home_screen_page/home_screen_page.dart';
import 'package:anderson_s_application3/widgets/app_bar/appbar_leading_image.dart';
import 'package:anderson_s_application3/widgets/app_bar/appbar_title.dart';
import 'package:anderson_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:anderson_s_application3/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class AboutUsScreen extends GetWidget<AboutUsController> {
  const AboutUsScreen({Key? key})
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
              SizedBox(height: 10.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 29.v),
                    decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderTL30,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgImage177x396,
                          height: 177.v,
                          width: 396.h,
                        ),
                        SizedBox(height: 21.v),
                        Container(
                          width: 385.h,
                          margin: EdgeInsets.only(
                            left: 16.h,
                            right: 26.h,
                          ),
                          child: Text(
                            "msg_what_began_little".tr,
                            maxLines: 17,
                            overflow: TextOverflow.ellipsis,
                            style:
                                CustomTextStyles.bodyMediumGray70001.copyWith(
                              height: 2.00,
                            ),
                          ),
                        ),
                        SizedBox(height: 14.v),
                        _buildWhyChooseUsCard(),
                        SizedBox(height: 98.v),
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
          top: 15.v,
          bottom: 14.v,
        ),
      ),
      title: AppbarTitle(
        text: "lbl_about".tr,
        margin: EdgeInsets.only(left: 15.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildWhyChooseUsCard() {
    return SizedBox(
      height: 619.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              height: 496.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 453.v,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        color: appTheme.red50,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.h),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgImage172x198,
                            height: 172.v,
                            width: 198.h,
                          ),
                          SizedBox(height: 1.v),
                          Text(
                            "msg_why_choose_us".tr,
                            style: CustomTextStyles.titleLargePrimarySemiBold,
                          ),
                          SizedBox(height: 13.v),
                          SizedBox(
                            width: 274.h,
                            child: Text(
                              "msg_we_do_not_buy_from".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.titleMediumGray800,
                            ),
                          ),
                          SizedBox(height: 22.v),
                          Container(
                            width: 389.h,
                            margin: EdgeInsets.only(right: 6.h),
                            child: Text(
                              "msg_we_would_like_to".tr,
                              maxLines: 4,
                              overflow: TextOverflow.ellipsis,
                              style:
                                  CustomTextStyles.bodyMediumGray60006.copyWith(
                                height: 2.07,
                              ),
                            ),
                          ),
                          SizedBox(height: 9.v),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(right: 25.h),
                              child: Row(
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgIcon24x24,
                                    height: 24.adaptSize,
                                    width: 24.adaptSize,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 8.h,
                                      top: 5.v,
                                    ),
                                    child: Text(
                                      "msg_100_organic_food".tr,
                                      style: CustomTextStyles.titleSmallGray800,
                                    ),
                                  ),
                                  Spacer(),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgIcon1,
                                    height: 24.adaptSize,
                                    width: 24.adaptSize,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 8.h,
                                      top: 5.v,
                                    ),
                                    child: Text(
                                      "lbl_fast_delivery".tr,
                                      style: CustomTextStyles.titleSmallGray800,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 12.v),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgIcon2,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                                margin: EdgeInsets.only(top: 4.v),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 8.h,
                                  top: 7.v,
                                  bottom: 2.v,
                                ),
                                child: Text(
                                  "lbl_24_7_service".tr,
                                  style: CustomTextStyles.titleSmallGray800,
                                ),
                              ),
                              Spacer(),
                              CustomImageView(
                                imagePath: ImageConstant.imgLocation24x24,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                                margin: EdgeInsets.only(bottom: 4.v),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 8.h,
                                  top: 5.v,
                                  bottom: 4.v,
                                ),
                                child: Text(
                                  "lbl_secure_payment".tr,
                                  style: CustomTextStyles.titleSmallGray800,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _buildFrame(
                    termsAndServicesText: "lbl_privacy_policy2".tr,
                  ),
                  SizedBox(height: 16.v),
                  _buildFrame(
                    termsAndServicesText: "msg_terms_and_services".tr,
                  ),
                ],
              ),
            ),
          ),
        ],
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

  /// Common widget
  Widget _buildFrame({required String termsAndServicesText}) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 18.h,
        vertical: 17.v,
      ),
      decoration: AppDecoration.fillGray10002.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 2.v),
            child: Text(
              termsAndServicesText,
              style: CustomTextStyles.bodyLargeGray6000516.copyWith(
                color: appTheme.gray60005,
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRight,
            height: 23.v,
            width: 21.h,
            margin: EdgeInsets.only(right: 2.h),
          ),
        ],
      ),
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
