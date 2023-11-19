import '../explore_screen/widgets/frameeleven_item_widget.dart';
import '../explore_screen/widgets/framefive_item_widget.dart';
import '../explore_screen/widgets/framenine_item_widget.dart';
import '../explore_screen/widgets/frameseven_item_widget.dart';
import '../explore_screen/widgets/framethree_item_widget.dart';
import 'controller/explore_controller.dart';
import 'models/frameeleven_item_model.dart';
import 'models/framefive_item_model.dart';
import 'models/framenine_item_model.dart';
import 'models/frameseven_item_model.dart';
import 'models/framethree_item_model.dart';
import 'package:anderson_s_application3/core/app_export.dart';
import 'package:anderson_s_application3/presentation/home_screen_page/home_screen_page.dart';
import 'package:anderson_s_application3/widgets/app_bar/appbar_leading_image.dart';
import 'package:anderson_s_application3/widgets/app_bar/appbar_subtitle.dart';
import 'package:anderson_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:anderson_s_application3/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ExploreScreen extends GetWidget<ExploreController> {
  const ExploreScreen({Key? key})
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
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 9.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 15.h,
                      bottom: 5.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 16.h),
                          child: _buildFrameFour(
                            vegetablesLabel: "lbl_groceries".tr,
                            seeAllLabel: "lbl_see_all".tr,
                          ),
                        ),
                        SizedBox(height: 16.v),
                        _buildFrameThree(),
                        SizedBox(height: 25.v),
                        Padding(
                          padding: EdgeInsets.only(right: 16.h),
                          child: _buildFrameFour(
                            vegetablesLabel: "lbl_vegetables".tr,
                            seeAllLabel: "lbl_see_all".tr,
                          ),
                        ),
                        SizedBox(height: 13.v),
                        _buildFrameFive(),
                        SizedBox(height: 22.v),
                        Padding(
                          padding: EdgeInsets.only(right: 16.h),
                          child: _buildFrameFour(
                            vegetablesLabel: "lbl_fruits".tr,
                            seeAllLabel: "lbl_see_all".tr,
                          ),
                        ),
                        SizedBox(height: 16.v),
                        _buildFrameSeven(),
                        SizedBox(height: 24.v),
                        Padding(
                          padding: EdgeInsets.only(right: 16.h),
                          child: _buildFrameFour(
                            vegetablesLabel: "lbl_dairy_products".tr,
                            seeAllLabel: "lbl_see_all".tr,
                          ),
                        ),
                        SizedBox(height: 14.v),
                        _buildFrameNine(),
                        SizedBox(height: 25.v),
                        Padding(
                          padding: EdgeInsets.only(right: 16.h),
                          child: _buildFrameFour(
                            vegetablesLabel: "lbl_bakery_items".tr,
                            seeAllLabel: "lbl_see_all".tr,
                          ),
                        ),
                        SizedBox(height: 13.v),
                        _buildFrameEleven(),
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
      leadingWidth: 28.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgPath872,
        margin: EdgeInsets.only(
          left: 15.h,
          top: 13.v,
          bottom: 16.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "lbl_explore".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameThree() {
    return SizedBox(
      height: 144.v,
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
              controller.exploreModelObj.value.framethreeItemList.value.length,
          itemBuilder: (context, index) {
            FramethreeItemModel model = controller
                .exploreModelObj.value.framethreeItemList.value[index];
            return FramethreeItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameFive() {
    return SizedBox(
      height: 144.v,
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
              controller.exploreModelObj.value.framefiveItemList.value.length,
          itemBuilder: (context, index) {
            FramefiveItemModel model =
                controller.exploreModelObj.value.framefiveItemList.value[index];
            return FramefiveItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameSeven() {
    return SizedBox(
      height: 144.v,
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
              controller.exploreModelObj.value.framesevenItemList.value.length,
          itemBuilder: (context, index) {
            FramesevenItemModel model = controller
                .exploreModelObj.value.framesevenItemList.value[index];
            return FramesevenItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameNine() {
    return SizedBox(
      height: 147.v,
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
              controller.exploreModelObj.value.framenineItemList.value.length,
          itemBuilder: (context, index) {
            FramenineItemModel model =
                controller.exploreModelObj.value.framenineItemList.value[index];
            return FramenineItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameEleven() {
    return SizedBox(
      height: 144.v,
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
              controller.exploreModelObj.value.frameelevenItemList.value.length,
          itemBuilder: (context, index) {
            FrameelevenItemModel model = controller
                .exploreModelObj.value.frameelevenItemList.value[index];
            return FrameelevenItemWidget(
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

  /// Common widget
  Widget _buildFrameFour({
    required String vegetablesLabel,
    required String seeAllLabel,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          vegetablesLabel,
          style: CustomTextStyles.titleLargeGray8000120.copyWith(
            color: appTheme.gray80001,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 3.v),
          child: Text(
            seeAllLabel,
            style: CustomTextStyles.titleMediumBold16.copyWith(
              color: theme.colorScheme.primary,
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
