import '../fruits_screen/widgets/fruits_item_widget.dart';
import 'controller/fruits_controller.dart';
import 'models/fruits_item_model.dart';
import 'package:anderson_s_application3/core/app_export.dart';
import 'package:anderson_s_application3/presentation/home_screen_page/home_screen_page.dart';
import 'package:anderson_s_application3/widgets/app_bar/appbar_leading_image.dart';
import 'package:anderson_s_application3/widgets/app_bar/appbar_title.dart';
import 'package:anderson_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:anderson_s_application3/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class FruitsScreen extends GetWidget<FruitsController> {
  const FruitsScreen({Key? key})
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
          padding: EdgeInsets.symmetric(vertical: 1.v),
          child: Column(
            children: [
              SizedBox(height: 10.v),
              Expanded(
                child: SizedBox(
                  width: double.maxFinite,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.h,
                      vertical: 24.v,
                    ),
                    decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderTL30,
                    ),
                    child: _buildFruits(),
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
        text: "lbl_fruits".tr,
        margin: EdgeInsets.only(left: 16.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildFruits() {
    return Obx(
      () => GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 237.v,
          crossAxisCount: 2,
          mainAxisSpacing: 16.h,
          crossAxisSpacing: 16.h,
        ),
        physics: BouncingScrollPhysics(),
        itemCount: controller.fruitsModelObj.value.fruitsItemList.value.length,
        itemBuilder: (context, index) {
          FruitsItemModel model =
              controller.fruitsModelObj.value.fruitsItemList.value[index];
          return FruitsItemWidget(
            model,
          );
        },
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
