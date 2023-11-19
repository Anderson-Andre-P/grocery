import '../home_screen_page/widgets/categories_item_widget.dart';
import '../home_screen_page/widgets/dealsoftheweek_item_widget.dart';
import '../home_screen_page/widgets/featureditems_item_widget.dart';
import '../home_screen_page/widgets/frameten_item_widget.dart';
import 'controller/home_screen_controller.dart';
import 'models/categories_item_model.dart';
import 'models/dealsoftheweek_item_model.dart';
import 'models/featureditems_item_model.dart';
import 'models/frameten_item_model.dart';
import 'models/home_screen_model.dart';
import 'package:anderson_s_application3/core/app_export.dart';
import 'package:anderson_s_application3/widgets/custom_elevated_button.dart';
import 'package:anderson_s_application3/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

class HomeScreenPage extends StatelessWidget {
  HomeScreenPage({Key? key})
      : super(
          key: key,
        );

  HomeScreenController controller =
      Get.put(HomeScreenController(HomeScreenModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnPrimaryContainer,
          child: Column(
            children: [
              SizedBox(height: 10.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 16.h,
                      bottom: 5.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 16.h),
                          child: CustomSearchView(
                            controller: controller.searchController,
                            hintText: "msg_search_products".tr,
                          ),
                        ),
                        SizedBox(height: 20.v),
                        _buildEverydayEssentials(),
                        SizedBox(height: 24.v),
                        CustomImageView(
                          imagePath: ImageConstant.imgSwipe,
                          height: 5.v,
                          width: 39.h,
                          margin: EdgeInsets.only(left: 179.h),
                        ),
                        SizedBox(height: 24.v),
                        Padding(
                          padding: EdgeInsets.only(right: 16.h),
                          child: _buildFrameFive(
                            topProductsText: "lbl_top_categories".tr,
                            exploreAllText: "lbl_explore_all".tr,
                          ),
                        ),
                        SizedBox(height: 18.v),
                        _buildCategories(),
                        SizedBox(height: 22.v),
                        Padding(
                          padding: EdgeInsets.only(right: 16.h),
                          child: _buildFrameFive(
                            topProductsText: "lbl_top_products".tr,
                            exploreAllText: "lbl_explore_all".tr,
                          ),
                        ),
                        SizedBox(height: 16.v),
                        _buildFeaturedItems(),
                        SizedBox(height: 21.v),
                        _buildCashback(),
                        SizedBox(height: 23.v),
                        Padding(
                          padding: EdgeInsets.only(right: 16.h),
                          child: _buildFrameFive(
                            topProductsText: "msg_deals_of_the_week".tr,
                            exploreAllText: "lbl_explore_all".tr,
                          ),
                        ),
                        SizedBox(height: 20.v),
                        _buildDealsOfTheWeek(),
                        SizedBox(height: 18.v),
                        Padding(
                          padding: EdgeInsets.only(right: 16.h),
                          child: _buildFrameFive(
                            topProductsText: "lbl_featured_items".tr,
                            exploreAllText: "lbl_explore_all".tr,
                          ),
                        ),
                        SizedBox(height: 15.v),
                        _buildFrameTen(),
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
  Widget _buildEverydayEssentials() {
    return Container(
      margin: EdgeInsets.only(right: 16.h),
      padding: EdgeInsets.symmetric(
        horizontal: 28.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.fillPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 7.h,
              top: 25.v,
              bottom: 27.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 99.h,
                  child: Text(
                    "msg_everyday_essentials".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.titleLargeRegular.copyWith(
                      height: 1.22,
                    ),
                  ),
                ),
                SizedBox(height: 7.v),
                Text(
                  "lbl_10_off".tr,
                  style: CustomTextStyles.titleLarge20,
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgImage,
            height: 126.v,
            width: 199.h,
            margin: EdgeInsets.only(bottom: 8.v),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCategories() {
    return SizedBox(
      height: 125.v,
      child: Obx(
        () => ListView.separated(
          padding: EdgeInsets.only(right: 4.h),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              width: 20.h,
            );
          },
          itemCount: controller
              .homeScreenModelObj.value.categoriesItemList.value.length,
          itemBuilder: (context, index) {
            CategoriesItemModel model = controller
                .homeScreenModelObj.value.categoriesItemList.value[index];
            return CategoriesItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFeaturedItems() {
    return SizedBox(
      height: 192.v,
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
          itemCount: controller
              .homeScreenModelObj.value.featureditemsItemList.value.length,
          itemBuilder: (context, index) {
            FeatureditemsItemModel model = controller
                .homeScreenModelObj.value.featureditemsItemList.value[index];
            return FeatureditemsItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCashback() {
    return SizedBox(
      height: 191.v,
      width: 396.h,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 24.h),
              decoration: AppDecoration.fillLightBlue.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 111.v),
                  Container(
                    height: 80.v,
                    width: 161.h,
                    decoration: BoxDecoration(
                      color: appTheme.cyan50,
                      borderRadius: BorderRadius.circular(
                        80.h,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgImage130x158,
            height: 130.v,
            width: 158.h,
            alignment: Alignment.bottomRight,
            margin: EdgeInsets.only(bottom: 7.v),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 24.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "msg_get_25_cashback".tr,
                    style: CustomTextStyles.headlineSmallTeal40001,
                  ),
                  SizedBox(height: 8.v),
                  Text(
                    "msg_on_all_baby_products".tr,
                    style: CustomTextStyles.bodyMediumTeal400,
                  ),
                  SizedBox(height: 46.v),
                  CustomElevatedButton(
                    height: 33.v,
                    width: 129.h,
                    text: "lbl_shop_now".tr,
                    buttonTextStyle:
                        CustomTextStyles.titleMediumOnPrimaryContainer16,
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
  Widget _buildDealsOfTheWeek() {
    return SizedBox(
      height: 165.v,
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
          itemCount: controller
              .homeScreenModelObj.value.dealsoftheweekItemList.value.length,
          itemBuilder: (context, index) {
            DealsoftheweekItemModel model = controller
                .homeScreenModelObj.value.dealsoftheweekItemList.value[index];
            return DealsoftheweekItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameTen() {
    return SizedBox(
      height: 191.v,
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
              controller.homeScreenModelObj.value.frametenItemList.value.length,
          itemBuilder: (context, index) {
            FrametenItemModel model = controller
                .homeScreenModelObj.value.frametenItemList.value[index];
            return FrametenItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildFrameFive({
    required String topProductsText,
    required String exploreAllText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          topProductsText,
          style: CustomTextStyles.titleLargeGray8000120.copyWith(
            color: appTheme.gray80001,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 2.v),
          child: Text(
            exploreAllText,
            style: CustomTextStyles.titleMedium16.copyWith(
              color: theme.colorScheme.primary,
            ),
          ),
        ),
      ],
    );
  }
}
