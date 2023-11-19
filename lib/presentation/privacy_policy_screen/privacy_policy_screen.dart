import 'controller/privacy_policy_controller.dart';
import 'package:anderson_s_application3/core/app_export.dart';
import 'package:anderson_s_application3/presentation/home_screen_page/home_screen_page.dart';
import 'package:anderson_s_application3/widgets/app_bar/appbar_leading_image.dart';
import 'package:anderson_s_application3/widgets/app_bar/appbar_title.dart';
import 'package:anderson_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:anderson_s_application3/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class PrivacyPolicyScreen extends GetWidget<PrivacyPolicyController> {
  const PrivacyPolicyScreen({Key? key})
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
                      horizontal: 15.h,
                      vertical: 29.v,
                    ),
                    decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderTL30,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "lbl_privacy_policy2".tr,
                            style: CustomTextStyles
                                .titleLargeBlack90001SemiBold_1
                                .copyWith(
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                        SizedBox(height: 19.v),
                        Text(
                          "msg_last_updated_on".tr,
                          style: CustomTextStyles.bodyLargeGray6000116,
                        ),
                        SizedBox(height: 30.v),
                        SizedBox(
                          height: 1991.v,
                          width: 396.h,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(top: 498.v),
                                  child: RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "msg_information_collected2".tr,
                                          style: CustomTextStyles
                                              .titleMediumBlack90001_1
                                              .copyWith(
                                            decoration:
                                                TextDecoration.underline,
                                          ),
                                        ),
                                        TextSpan(
                                          text: "  ".tr,
                                        ),
                                      ],
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    SizedBox(
                                      width: 393.h,
                                      child: Text(
                                        "msg_sg_grocery_is_committed".tr,
                                        maxLines: 16,
                                        overflow: TextOverflow.ellipsis,
                                        style: theme.textTheme.bodyMedium!
                                            .copyWith(
                                          height: 2.28,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 62.v),
                                    SizedBox(
                                      width: 396.h,
                                      child: Text(
                                        "msg_sg_grocery_collects".tr,
                                        maxLines: 22,
                                        overflow: TextOverflow.ellipsis,
                                        style: theme.textTheme.bodyMedium!
                                            .copyWith(
                                          height: 2.28,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 17.v),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Container(
                                        width: 307.h,
                                        margin: EdgeInsets.only(right: 88.h),
                                        child: Text(
                                          "msg_use_of_your_information".tr,
                                          maxLines: 3,
                                          overflow: TextOverflow.ellipsis,
                                          style: CustomTextStyles
                                              .titleMediumBlack90001
                                              .copyWith(
                                            decoration:
                                                TextDecoration.underline,
                                            height: 2.07,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 22.v),
                                    SizedBox(
                                      width: 393.h,
                                      child: Text(
                                        "msg_we_will_use_your".tr,
                                        maxLines: 8,
                                        overflow: TextOverflow.ellipsis,
                                        style: theme.textTheme.bodyMedium!
                                            .copyWith(
                                          height: 2.28,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 29.v),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: "msg_legal_disclaimer2".tr,
                                              style: CustomTextStyles
                                                  .titleMediumBlack90001_1
                                                  .copyWith(
                                                decoration:
                                                    TextDecoration.underline,
                                              ),
                                            ),
                                            TextSpan(
                                              text: " ",
                                            ),
                                          ],
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                    SizedBox(height: 24.v),
                                    Container(
                                      width: 391.h,
                                      margin: EdgeInsets.only(right: 4.h),
                                      child: Text(
                                        "msg_we_reserve_the_right".tr,
                                        maxLines: 8,
                                        overflow: TextOverflow.ellipsis,
                                        style: theme.textTheme.bodyMedium!
                                            .copyWith(
                                          height: 2.28,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 6.v),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: "msg_changes_in_this2".tr,
                                              style: CustomTextStyles
                                                  .titleMediumBlack90001_1
                                                  .copyWith(
                                                decoration:
                                                    TextDecoration.underline,
                                              ),
                                            ),
                                            TextSpan(
                                              text: " ",
                                            ),
                                          ],
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                    SizedBox(height: 15.v),
                                    SizedBox(
                                      width: 396.h,
                                      child: Text(
                                        "msg_sg_grocery_reserve".tr,
                                        maxLines: 5,
                                        overflow: TextOverflow.ellipsis,
                                        style: theme.textTheme.bodyMedium!
                                            .copyWith(
                                          height: 2.28,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 30.v),
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
        text: "lbl_privacy_policy2".tr,
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
