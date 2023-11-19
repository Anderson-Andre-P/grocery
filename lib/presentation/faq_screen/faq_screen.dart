import 'controller/faq_controller.dart';
import 'package:anderson_s_application3/core/app_export.dart';
import 'package:anderson_s_application3/presentation/home_screen_page/home_screen_page.dart';
import 'package:anderson_s_application3/widgets/app_bar/appbar_leading_image.dart';
import 'package:anderson_s_application3/widgets/app_bar/appbar_title.dart';
import 'package:anderson_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:anderson_s_application3/widgets/custom_bottom_bar.dart';
import 'package:anderson_s_application3/widgets/custom_drop_down.dart';
import 'package:anderson_s_application3/widgets/custom_elevated_button.dart';
import 'package:anderson_s_application3/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class FaqScreen extends GetWidget<FaqController> {
  const FaqScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
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
                      vertical: 24.v,
                    ),
                    decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderTL30,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomDropDown(
                          icon: Container(
                            margin: EdgeInsets.fromLTRB(30.h, 18.v, 26.h, 18.v),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgArrowdownBlack90001,
                              height: 21.v,
                              width: 23.h,
                            ),
                          ),
                          hintText: "lbl_select_category".tr,
                          items: controller
                              .faqModelObj.value.dropdownItemList!.value,
                          borderDecoration: DropDownStyleHelper.fillGray,
                          fillColor: appTheme.gray10003,
                          onChanged: (value) {
                            controller.onSelected(value);
                          },
                        ),
                        SizedBox(height: 24.v),
                        CustomDropDown(
                          icon: Container(
                            margin: EdgeInsets.fromLTRB(30.h, 18.v, 26.h, 18.v),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgArrowdownBlack90001,
                              height: 21.v,
                              width: 23.h,
                            ),
                          ),
                          hintText: "msg_where_do_you_deliver".tr,
                          hintStyle: CustomTextStyles.bodyLargeGray6000516,
                          items: controller
                              .faqModelObj.value.dropdownItemList1!.value,
                          onChanged: (value) {
                            controller.onSelected1(value);
                          },
                        ),
                        SizedBox(height: 16.v),
                        CustomDropDown(
                          icon: Container(
                            margin: EdgeInsets.fromLTRB(30.h, 18.v, 26.h, 18.v),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgArrowdownBlack90001,
                              height: 21.v,
                              width: 23.h,
                            ),
                          ),
                          hintText: "msg_how_can_i_order".tr,
                          hintStyle: CustomTextStyles.bodyLargeGray6000516,
                          items: controller
                              .faqModelObj.value.dropdownItemList2!.value,
                          onChanged: (value) {
                            controller.onSelected2(value);
                          },
                        ),
                        SizedBox(height: 21.v),
                        _buildExpandableList(),
                        SizedBox(height: 10.v),
                        CustomDropDown(
                          icon: Container(
                            margin: EdgeInsets.fromLTRB(30.h, 25.v, 19.h, 25.v),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgArrowdownBlack90001,
                              height: 21.v,
                              width: 24.h,
                            ),
                          ),
                          hintText: "msg_how_do_i_know_at".tr,
                          hintStyle: CustomTextStyles.bodyLargeGray6000516,
                          items: controller
                              .faqModelObj.value.dropdownItemList3!.value,
                          contentPadding: EdgeInsets.only(
                            left: 19.h,
                            top: 11.v,
                            bottom: 11.v,
                          ),
                          onChanged: (value) {
                            controller.onSelected3(value);
                          },
                        ),
                        SizedBox(height: 16.v),
                        CustomDropDown(
                          icon: Container(
                            margin: EdgeInsets.fromLTRB(30.h, 18.v, 19.h, 18.v),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgArrowdownBlack90001,
                              height: 21.v,
                              width: 24.h,
                            ),
                          ),
                          hintText: "msg_what_is_minimum".tr,
                          hintStyle: CustomTextStyles.bodyLargeGray6000516,
                          items: controller
                              .faqModelObj.value.dropdownItemList4!.value,
                          contentPadding: EdgeInsets.only(
                            left: 26.h,
                            top: 18.v,
                            bottom: 18.v,
                          ),
                          onChanged: (value) {
                            controller.onSelected4(value);
                          },
                        ),
                        SizedBox(height: 16.v),
                        CustomDropDown(
                          icon: Container(
                            margin: EdgeInsets.fromLTRB(30.h, 18.v, 19.h, 18.v),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgArrowdownBlack90001,
                              height: 21.v,
                              width: 24.h,
                            ),
                          ),
                          hintText: "msg_what_if_i_want_to".tr,
                          hintStyle: CustomTextStyles.bodyLargeGray6000516,
                          items: controller
                              .faqModelObj.value.dropdownItemList5!.value,
                          contentPadding: EdgeInsets.only(
                            left: 21.h,
                            top: 18.v,
                            bottom: 18.v,
                          ),
                          onChanged: (value) {
                            controller.onSelected5(value);
                          },
                        ),
                        SizedBox(height: 24.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "msg_not_listed_your".tr,
                            style:
                                CustomTextStyles.titleLargeBlack90001SemiBold,
                          ),
                        ),
                        SizedBox(height: 14.v),
                        CustomTextFormField(
                          controller: controller.fortyEightController,
                          hintText: "msg_write_your_question_query".tr,
                          textInputAction: TextInputAction.done,
                          maxLines: 6,
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 13.h,
                            vertical: 15.v,
                          ),
                        ),
                        SizedBox(height: 30.v),
                        CustomElevatedButton(
                          width: 208.h,
                          text: "lbl_submit".tr,
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
        text: "lbl_faq".tr,
        margin: EdgeInsets.only(left: 16.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildExpandableList() {
    return SizedBox();
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
