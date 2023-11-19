import '../my_subscription_screen/widgets/mysubscription_item_widget.dart';
import 'controller/my_subscription_controller.dart';
import 'models/mysubscription_item_model.dart';
import 'package:anderson_s_application3/core/app_export.dart';
import 'package:anderson_s_application3/presentation/home_screen_page/home_screen_page.dart';
import 'package:anderson_s_application3/widgets/app_bar/appbar_leading_image.dart';
import 'package:anderson_s_application3/widgets/app_bar/appbar_title.dart';
import 'package:anderson_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:anderson_s_application3/widgets/custom_bottom_bar.dart';
import 'package:anderson_s_application3/widgets/custom_drop_down.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class MySubscriptionScreen extends GetWidget<MySubscriptionController> {
  const MySubscriptionScreen({Key? key})
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
              SizedBox(height: 14.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.h),
                child: CustomDropDown(
                  icon: Container(
                    margin: EdgeInsets.fromLTRB(30.h, 21.v, 24.h, 21.v),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgArrowdown,
                      height: 9.v,
                      width: 16.h,
                    ),
                  ),
                  hintText: "msg_subscription_weekly".tr,
                  items: controller
                      .mySubscriptionModelObj.value.dropdownItemList!.value,
                  contentPadding: EdgeInsets.only(
                    left: 22.h,
                    top: 15.v,
                    bottom: 15.v,
                  ),
                  borderDecoration: DropDownStyleHelper.fillOnPrimaryContainer,
                  fillColor:
                      theme.colorScheme.onPrimaryContainer.withOpacity(1),
                  onChanged: (value) {
                    controller.onSelected(value);
                  },
                ),
              ),
              SizedBox(height: 24.v),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 12.h,
                  vertical: 24.v,
                ),
                decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
                  borderRadius: BorderRadiusStyle.customBorderTL30,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 4.h),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                top: 2.v,
                                bottom: 1.v,
                              ),
                              child: Text(
                                "lbl_today".tr,
                                style:
                                    CustomTextStyles.titleMediumGray80001Bold,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 8.h,
                                top: 2.v,
                                bottom: 1.v,
                              ),
                              child: Text(
                                "msg_23_september_2021".tr,
                                style: CustomTextStyles.bodyLargeGray60004,
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgCalendar,
                              height: 26.v,
                              width: 23.h,
                              margin: EdgeInsets.only(left: 8.h),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 25.v),
                    _buildMySubscription(),
                    SizedBox(height: 34.v),
                    CustomImageView(
                      imagePath: ImageConstant.imgIllustration,
                      height: 88.v,
                      width: 216.h,
                    ),
                    SizedBox(height: 16.v),
                    Text(
                      "msg_excited_to_serve".tr,
                      style: CustomTextStyles.bodyMediumGray600,
                    ),
                    SizedBox(height: 88.v),
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
        text: "lbl_my_subscription".tr,
        margin: EdgeInsets.only(left: 16.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildMySubscription() {
    return Padding(
      padding: EdgeInsets.only(right: 4.h),
      child: Obx(
        () => ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 15.v,
            );
          },
          itemCount: controller
              .mySubscriptionModelObj.value.mysubscriptionItemList.value.length,
          itemBuilder: (context, index) {
            MysubscriptionItemModel model = controller.mySubscriptionModelObj
                .value.mysubscriptionItemList.value[index];
            return MysubscriptionItemWidget(
              model,
            );
          },
        ),
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
