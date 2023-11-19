import 'controller/contact_us_controller.dart';
import 'package:anderson_s_application3/core/app_export.dart';
import 'package:anderson_s_application3/core/utils/validation_functions.dart';
import 'package:anderson_s_application3/presentation/home_screen_page/home_screen_page.dart';
import 'package:anderson_s_application3/widgets/app_bar/appbar_leading_image.dart';
import 'package:anderson_s_application3/widgets/app_bar/appbar_title.dart';
import 'package:anderson_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:anderson_s_application3/widgets/custom_bottom_bar.dart';
import 'package:anderson_s_application3/widgets/custom_elevated_button.dart';
import 'package:anderson_s_application3/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ContactUsScreen extends GetWidget<ContactUsController> {
  ContactUsScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(),
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                SizedBox(height: 9.v),
                Expanded(
                  child: SingleChildScrollView(
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 15.h,
                        vertical: 30.v,
                      ),
                      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderTL30,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          _buildGetInTouchFrame(),
                          SizedBox(height: 23.v),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "lbl_your_details".tr,
                              style: CustomTextStyles
                                  .titleLargeBlack90001SemiBold_1,
                            ),
                          ),
                          SizedBox(height: 11.v),
                          _buildFirstNameEditText(),
                          SizedBox(height: 16.v),
                          _buildLastNameEditText(),
                          SizedBox(height: 16.v),
                          _buildEmailEditText(),
                          SizedBox(height: 16.v),
                          _buildPhoneNumberEditText(),
                          SizedBox(height: 16.v),
                          _buildAdditionalInfoEditText(),
                          SizedBox(height: 30.v),
                          _buildSendMessageButton(),
                          SizedBox(height: 24.v),
                          _buildRoyalLnMesaNewJerseyButton(),
                          SizedBox(height: 24.v),
                          _buildRowFrame(),
                          SizedBox(height: 24.v),
                          _buildSggrocerygmailcomButton(),
                          SizedBox(height: 97.v),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
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
          top: 14.v,
          bottom: 15.v,
        ),
      ),
      title: AppbarTitle(
        text: "lbl_contact_us".tr,
        margin: EdgeInsets.only(left: 16.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildGetInTouchFrame() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 21.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "lbl_get_in_touch".tr,
            style: CustomTextStyles.titleLargeBlack90001SemiBold_1,
          ),
          SizedBox(height: 30.v),
          SizedBox(
            width: 353.h,
            child: Text(
              "msg_one_of_our_workspace".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.bodyMediumGray60001.copyWith(
                height: 2.07,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFirstNameEditText() {
    return CustomTextFormField(
      controller: controller.firstNameEditTextController,
      hintText: "lbl_first_name".tr,
      hintStyle: theme.textTheme.bodyLarge!,
      validator: (value) {
        if (!isText(value)) {
          return "err_msg_please_enter_valid_text".tr;
        }
        return null;
      },
      contentPadding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 21.v,
      ),
    );
  }

  /// Section Widget
  Widget _buildLastNameEditText() {
    return CustomTextFormField(
      controller: controller.lastNameEditTextController,
      hintText: "lbl_last_name".tr,
      hintStyle: theme.textTheme.bodyLarge!,
      validator: (value) {
        if (!isText(value)) {
          return "err_msg_please_enter_valid_text".tr;
        }
        return null;
      },
      contentPadding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 21.v,
      ),
    );
  }

  /// Section Widget
  Widget _buildEmailEditText() {
    return CustomTextFormField(
      controller: controller.emailEditTextController,
      hintText: "lbl_email".tr,
      hintStyle: theme.textTheme.bodyLarge!,
      textInputType: TextInputType.emailAddress,
      validator: (value) {
        if (value == null || (!isValidEmail(value, isRequired: true))) {
          return "err_msg_please_enter_valid_email".tr;
        }
        return null;
      },
      contentPadding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 21.v,
      ),
    );
  }

  /// Section Widget
  Widget _buildPhoneNumberEditText() {
    return CustomTextFormField(
      controller: controller.phoneNumberEditTextController,
      hintText: "lbl_phone_number".tr,
      hintStyle: theme.textTheme.bodyLarge!,
      textInputType: TextInputType.phone,
      prefix: Padding(
        padding: EdgeInsets.fromLTRB(15.08.h, 19.v, 30.h, 18.v),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imageNotFound,
              height: 27.v,
              width: 26.13.h,
              margin: EdgeInsets.fromLTRB(15.08.h, 19.v, 30.h, 18.v),
            ),
            CustomImageView(
              imagePath: ImageConstant.imageNotFound,
              height: 24.v,
              width: 24.12.h,
            ),
          ],
        ),
      ),
      prefixConstraints: BoxConstraints(
        maxHeight: 64.v,
      ),
      validator: (value) {
        if (!isValidPhone(value)) {
          return "err_msg_please_enter_valid_phone_number".tr;
        }
        return null;
      },
      contentPadding: EdgeInsets.only(
        top: 20.v,
        right: 30.h,
        bottom: 20.v,
      ),
      borderDecoration: TextFormFieldStyleHelper.fillGrayTL10,
    );
  }

  /// Section Widget
  Widget _buildAdditionalInfoEditText() {
    return CustomTextFormField(
      controller: controller.additionalInfoEditTextController,
      hintText: "lbl_additional_info".tr,
      hintStyle: theme.textTheme.bodyLarge!,
      textInputAction: TextInputAction.done,
      maxLines: 7,
      contentPadding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 13.v,
      ),
    );
  }

  /// Section Widget
  Widget _buildSendMessageButton() {
    return CustomElevatedButton(
      width: 200.h,
      text: "lbl_send_message".tr,
    );
  }

  /// Section Widget
  Widget _buildRoyalLnMesaNewJerseyButton() {
    return CustomElevatedButton(
      height: 60.v,
      text: "msg_2464_royal_ln_mesa".tr,
      leftIcon: Container(
        margin: EdgeInsets.only(right: 16.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgLocationPrimary24x24,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
      buttonStyle: CustomButtonStyles.fillGray,
      buttonTextStyle: CustomTextStyles.titleSmallPrimarySemiBold_1,
    );
  }

  /// Section Widget
  Widget _buildRowFrame() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 38.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.fillGray10002.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgIconPrimary24x24,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 4.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 9.v,
              bottom: 6.v,
            ),
            child: Text(
              "msg_1_773_600_4875".tr,
              style: CustomTextStyles.titleSmallPrimarySemiBold_1,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              top: 15.v,
            ),
            child: Text(
              "lbl2".tr,
              style: CustomTextStyles.titleSmallPrimarySemiBold_1,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              top: 9.v,
              bottom: 6.v,
            ),
            child: Text(
              "msg_1_773_600_4866".tr,
              style: CustomTextStyles.titleSmallPrimarySemiBold_1,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSggrocerygmailcomButton() {
    return CustomElevatedButton(
      height: 60.v,
      text: "msg_sggrocery_gmail_com".tr,
      leftIcon: Container(
        margin: EdgeInsets.only(right: 16.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgMail,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
      buttonStyle: CustomButtonStyles.fillGray,
      buttonTextStyle: CustomTextStyles.titleSmallPrimarySemiBold_1,
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
