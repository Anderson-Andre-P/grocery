import 'controller/my_wallet_controller.dart';
import 'package:anderson_s_application3/core/app_export.dart';
import 'package:anderson_s_application3/presentation/home_screen_page/home_screen_page.dart';
import 'package:anderson_s_application3/widgets/app_bar/appbar_leading_image.dart';
import 'package:anderson_s_application3/widgets/app_bar/appbar_title.dart';
import 'package:anderson_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:anderson_s_application3/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class MyWalletScreen extends GetWidget<MyWalletController> {
  const MyWalletScreen({Key? key})
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
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.h,
                  vertical: 31.v,
                ),
                decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
                  borderRadius: BorderRadiusStyle.customBorderTL30,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "lbl_my_balance".tr,
                      style: CustomTextStyles.titleLargeBlack90001SemiBold_1,
                    ),
                    SizedBox(height: 14.v),
                    Text(
                      "lbl_20".tr,
                      style: theme.textTheme.headlineSmall,
                    ),
                    SizedBox(height: 16.v),
                    Text(
                      "msg_use_to_pay_100".tr,
                      style: CustomTextStyles.bodyLargeGray50005,
                    ),
                    SizedBox(height: 28.v),
                    _buildUserProfile(),
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
        text: "lbl_my_wallet".tr,
        margin: EdgeInsets.only(left: 16.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgFramePrimary456x18,
          height: 456.v,
          width: 18.h,
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(
              left: 10.h,
              bottom: 15.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_17_oct_2021".tr,
                  style: CustomTextStyles.bodyLargeBlack90001,
                ),
                SizedBox(height: 11.v),
                _buildFrame(
                  caashbackRecieved: "msg_cashback_received".tr,
                  transactionId: "msg_transaction_id".tr,
                  price: "lbl_2".tr,
                ),
                SizedBox(height: 24.v),
                Text(
                  "lbl_12_oct_2021".tr,
                  style: CustomTextStyles.bodyLargeBlack90001,
                ),
                SizedBox(height: 11.v),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.h,
                    vertical: 21.v,
                  ),
                  decoration: AppDecoration.outlineBlack900011.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 1.v),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "lbl_spent_on_order".tr,
                              style: CustomTextStyles.titleMediumBlack9000116,
                            ),
                            SizedBox(height: 14.v),
                            Text(
                              "msg_transaction_id2".tr,
                              style: CustomTextStyles.bodyMediumBluegray40001,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 17.v,
                          right: 4.h,
                          bottom: 9.v,
                        ),
                        child: Text(
                          "lbl_5".tr,
                          style: CustomTextStyles.titleLargeDeeporangeA700,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 25.v),
                Text(
                  "lbl_05_sept_2021".tr,
                  style: CustomTextStyles.bodyLargeBlack90001,
                ),
                SizedBox(height: 10.v),
                _buildFrame(
                  caashbackRecieved: "msg_caashback_recieved".tr,
                  transactionId: "msg_transaction_id3".tr,
                  price: "lbl_3".tr,
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
    required String caashbackRecieved,
    required String transactionId,
    required String price,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 19.v,
      ),
      decoration: AppDecoration.outlineBlack900011.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 3.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  caashbackRecieved,
                  style: CustomTextStyles.titleMediumBlack9000116.copyWith(
                    color: appTheme.black90001,
                  ),
                ),
                SizedBox(height: 15.v),
                Text(
                  transactionId,
                  style: CustomTextStyles.bodyMediumBluegray40001.copyWith(
                    color: appTheme.blueGray40001,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 14.v,
              right: 4.h,
              bottom: 15.v,
            ),
            child: Text(
              price,
              style: CustomTextStyles.titleLargePrimarySemiBold.copyWith(
                color: theme.colorScheme.primary,
              ),
            ),
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
