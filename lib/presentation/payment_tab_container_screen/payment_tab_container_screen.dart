import 'controller/payment_tab_container_controller.dart';
import 'package:anderson_s_application3/core/app_export.dart';
import 'package:anderson_s_application3/core/utils/validation_functions.dart';
import 'package:anderson_s_application3/presentation/payment_page/payment_page.dart';
import 'package:anderson_s_application3/widgets/app_bar/appbar_leading_image.dart';
import 'package:anderson_s_application3/widgets/app_bar/appbar_title.dart';
import 'package:anderson_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:anderson_s_application3/widgets/custom_elevated_button.dart';
import 'package:anderson_s_application3/widgets/custom_radio_button.dart';
import 'package:anderson_s_application3/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class PaymentTabContainerScreen
    extends GetWidget<PaymentTabContainerController> {
  PaymentTabContainerScreen({Key? key})
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
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 31.v),
            child: SizedBox(
              height: 1934.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderTL30,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 16.h),
                              child: Text(
                                "lbl_contact_details".tr,
                                style: CustomTextStyles
                                    .titleLargeBlack90001SemiBold_1,
                              ),
                            ),
                          ),
                          SizedBox(height: 24.v),
                          _buildFirstName(),
                          SizedBox(height: 16.v),
                          _buildLastName(),
                          SizedBox(height: 16.v),
                          _buildEmail(),
                          SizedBox(height: 16.v),
                          _buildPhoneNumber(),
                          SizedBox(height: 31.v),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 16.h),
                              child: Text(
                                "msg_choose_delivery".tr,
                                style: CustomTextStyles
                                    .titleLargeBlack90001SemiBold_1,
                              ),
                            ),
                          ),
                          SizedBox(height: 22.v),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16.h),
                            child: _buildFrame(
                              iconImage: ImageConstant.imgIconBlack90001,
                              officeLabel: "lbl_home".tr,
                              thornridgeLabel: "msg_4517_washington".tr,
                            ),
                          ),
                          SizedBox(height: 24.v),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16.h),
                            child: _buildFrame(
                              iconImage: ImageConstant.imgIconBlack9000120x19,
                              officeLabel: "lbl_office".tr,
                              thornridgeLabel: "msg_2118_thornridge".tr,
                            ),
                          ),
                          SizedBox(height: 15.v),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: EdgeInsets.only(right: 16.h),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  CustomImageView(
                                    imagePath:
                                        ImageConstant.imgFloatingIconPrimary,
                                    height: 18.v,
                                    width: 17.h,
                                    margin: EdgeInsets.only(
                                      top: 2.v,
                                      bottom: 1.v,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 8.h),
                                    child: Text(
                                      "lbl_add_new_address".tr,
                                      style: theme.textTheme.titleMedium,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 30.v),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 16.h),
                              child: Text(
                                "msg_do_you_have_a_promo".tr,
                                style: CustomTextStyles.titleMediumBlack90001,
                              ),
                            ),
                          ),
                          SizedBox(height: 11.v),
                          _buildPromoCode(),
                          SizedBox(height: 24.v),
                          _buildApplyNow(),
                          SizedBox(height: 31.v),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 16.h),
                              child: Text(
                                "msg_choose_payment_method".tr,
                                style: CustomTextStyles
                                    .titleLargeGray80001SemiBold,
                              ),
                            ),
                          ),
                          SizedBox(height: 14.v),
                          _buildCashOnDelivery(),
                          SizedBox(height: 16.v),
                          _buildUPI(),
                          SizedBox(height: 16.v),
                          _buildWallet(),
                          SizedBox(height: 16.v),
                          _buildCreditDebitCard(),
                          SizedBox(height: 16.v),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: EdgeInsets.only(right: 16.h),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  CustomImageView(
                                    imagePath:
                                        ImageConstant.imgIconPrimary16x16,
                                    height: 16.adaptSize,
                                    width: 16.adaptSize,
                                    margin: EdgeInsets.only(
                                      top: 1.v,
                                      bottom: 2.v,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 4.h),
                                    child: Text(
                                      "lbl_add_new_card".tr,
                                      style: CustomTextStyles.titleMedium16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 198.v),
                          _buildTabview(),
                          _buildTabBarView(),
                        ],
                      ),
                    ),
                  ),
                  _buildFrame3(),
                ],
              ),
            ),
          ),
        ),
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
        text: "lbl_payment".tr,
        margin: EdgeInsets.only(left: 16.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildFirstName() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: CustomTextFormField(
        controller: controller.firstNameController,
        hintText: "lbl_first_name".tr,
        hintStyle: theme.textTheme.bodyLarge!,
        validator: (value) {
          if (!isText(value)) {
            return "err_msg_please_enter_valid_text".tr;
          }
          return null;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildLastName() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: CustomTextFormField(
        controller: controller.lastNameController,
        hintText: "lbl_last_name".tr,
        hintStyle: theme.textTheme.bodyLarge!,
        validator: (value) {
          if (!isText(value)) {
            return "err_msg_please_enter_valid_text".tr;
          }
          return null;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildEmail() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: CustomTextFormField(
        controller: controller.emailController,
        hintText: "lbl_email".tr,
        hintStyle: theme.textTheme.bodyLarge!,
        textInputType: TextInputType.emailAddress,
        validator: (value) {
          if (value == null || (!isValidEmail(value, isRequired: true))) {
            return "err_msg_please_enter_valid_email".tr;
          }
          return null;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildPhoneNumber() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: CustomTextFormField(
        controller: controller.phoneNumberController,
        hintText: "lbl_phone_number".tr,
        hintStyle: theme.textTheme.bodyLarge!,
        textInputType: TextInputType.phone,
        prefix: Padding(
          padding: EdgeInsets.fromLTRB(14.43.h, 19.v, 30.h, 18.v),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imageNotFound,
                height: 27.v,
                width: 25.01.h,
                margin: EdgeInsets.fromLTRB(14.43.h, 19.v, 30.h, 18.v),
              ),
              CustomImageView(
                imagePath: ImageConstant.imageNotFound,
                height: 24.v,
                width: 23.09.h,
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
      ),
    );
  }

  /// Section Widget
  Widget _buildPromoCode() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: CustomTextFormField(
        controller: controller.promoCodeController,
        hintText: "lbl_enter_your_code".tr,
        textInputAction: TextInputAction.done,
        prefix: Container(
          margin: EdgeInsets.fromLTRB(25.h, 20.v, 10.h, 20.v),
          child: CustomImageView(
            imagePath: ImageConstant.imgOffer,
            height: 23.v,
            width: 22.h,
          ),
        ),
        prefixConstraints: BoxConstraints(
          maxHeight: 64.v,
        ),
        contentPadding: EdgeInsets.only(
          top: 22.v,
          right: 25.h,
          bottom: 22.v,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildApplyNow() {
    return CustomElevatedButton(
      width: 200.h,
      text: "lbl_apply_now".tr,
    );
  }

  /// Section Widget
  Widget _buildCashOnDelivery() {
    return Container(
      width: 396.h,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      padding: EdgeInsets.all(17.h),
      decoration: AppDecoration.fillGray10002.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 3.v),
          Obx(
            () => CustomRadioButton(
              text: "msg_cash_on_delivery".tr,
              value: "msg_cash_on_delivery".tr,
              groupValue: controller.radioGroup.value,
              onChange: (value) {
                controller.radioGroup.value = value;
              },
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUPI() {
    return Container(
      width: 396.h,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      padding: EdgeInsets.all(17.h),
      decoration: AppDecoration.fillGray10002.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Obx(
        () => CustomRadioButton(
          text: "lbl_upi".tr,
          value: "lbl_upi".tr,
          groupValue: controller.radioGroup1.value,
          onChange: (value) {
            controller.radioGroup1.value = value;
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildWallet() {
    return Container(
      width: 396.h,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      padding: EdgeInsets.symmetric(
        horizontal: 17.h,
        vertical: 18.v,
      ),
      decoration: AppDecoration.fillGray10002.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Obx(
        () => CustomRadioButton(
          text: "lbl_wallet".tr,
          value: "lbl_wallet".tr,
          groupValue: controller.radioGroup2.value,
          onChange: (value) {
            controller.radioGroup2.value = value;
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCreditDebitCard() {
    return Container(
      width: 396.h,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      padding: EdgeInsets.all(17.h),
      decoration: AppDecoration.fillGray10002.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Obx(
        () => CustomRadioButton(
          text: "msg_credit_debit_card".tr,
          value: "msg_credit_debit_card".tr,
          groupValue: controller.radioGroup3.value,
          onChange: (value) {
            controller.radioGroup3.value = value;
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview() {
    return Container(
      height: 42.v,
      width: 364.h,
      child: TabBar(
        controller: controller.tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        labelStyle: TextStyle(
          fontSize: 16.fSize,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w400,
        ),
        unselectedLabelColor: appTheme.gray40001,
        unselectedLabelStyle: TextStyle(
          fontSize: 16.fSize,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w400,
        ),
        indicator: BoxDecoration(
          color: theme.colorScheme.primary,
          borderRadius: BorderRadius.circular(
            10.h,
          ),
        ),
        tabs: [
          Tab(
            child: Text(
              "lbl_enter_cvv".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_e_g_123".tr,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabBarView() {
    return SizedBox(
      height: 259.v,
      child: TabBarView(
        controller: controller.tabviewController,
        children: [
          PaymentPage(),
          PaymentPage(),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame3() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.only(bottom: 325.v),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgImage151x250,
              height: 151.v,
              width: 250.h,
            ),
            CustomImageView(
              imagePath: ImageConstant.imgImage150x148,
              height: 150.v,
              width: 148.h,
              margin: EdgeInsets.only(left: 14.h),
            ),
          ],
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildFrame({
    required String iconImage,
    required String officeLabel,
    required String thornridgeLabel,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgSelect,
          height: 18.adaptSize,
          width: 18.adaptSize,
          margin: EdgeInsets.only(
            top: 50.v,
            bottom: 106.v,
          ),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.only(left: 16.h),
            padding: EdgeInsets.symmetric(
              horizontal: 24.h,
              vertical: 20.v,
            ),
            decoration: AppDecoration.outlineBlack90001.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 4.v,
                    bottom: 34.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CustomImageView(
                            imagePath: iconImage,
                            height: 20.v,
                            width: 19.h,
                            margin: EdgeInsets.only(bottom: 2.v),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8.h),
                            child: Text(
                              officeLabel,
                              style: CustomTextStyles.titleMediumBlack90001
                                  .copyWith(
                                color: appTheme.black90001,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 21.v),
                      Align(
                        alignment: Alignment.centerRight,
                        child: SizedBox(
                          width: 203.h,
                          child: Text(
                            thornridgeLabel,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.bodyMedium!.copyWith(
                              color: appTheme.black90001,
                              height: 1.82,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgEdit,
                  height: 18.adaptSize,
                  width: 18.adaptSize,
                  margin: EdgeInsets.only(bottom: 116.v),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgIconGray60001,
                  height: 18.adaptSize,
                  width: 18.adaptSize,
                  margin: EdgeInsets.only(
                    left: 16.h,
                    bottom: 116.v,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
