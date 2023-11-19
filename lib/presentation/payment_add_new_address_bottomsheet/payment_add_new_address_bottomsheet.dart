import 'controller/payment_add_new_address_controller.dart';
import 'package:anderson_s_application3/core/app_export.dart';
import 'package:anderson_s_application3/core/utils/validation_functions.dart';
import 'package:anderson_s_application3/widgets/custom_checkbox_button.dart';
import 'package:anderson_s_application3/widgets/custom_elevated_button.dart';
import 'package:anderson_s_application3/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class PaymentAddNewAddressBottomsheet extends StatelessWidget {
  PaymentAddNewAddressBottomsheet(this.controller, {Key? key})
      : super(key: key);

  PaymentAddNewAddressController controller;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return _buildScrollView();
  }

  /// Section Widget
  Widget _buildAddressCountry() {
    return CustomTextFormField(
        controller: controller.addressCountryController,
        hintText: "lbl_country".tr,
        hintStyle: theme.textTheme.bodyLarge!);
  }

  /// Section Widget
  Widget _buildAddressState() {
    return CustomTextFormField(
        controller: controller.addressStateController,
        hintText: "lbl_state".tr,
        hintStyle: theme.textTheme.bodyLarge!);
  }

  /// Section Widget
  Widget _buildAddressCity() {
    return CustomTextFormField(
        controller: controller.addressCityController,
        hintText: "lbl_city".tr,
        hintStyle: theme.textTheme.bodyLarge!);
  }

  /// Section Widget
  Widget _buildAddressPincode() {
    return CustomTextFormField(
        controller: controller.addressPincodeController,
        hintText: "lbl_pincode".tr,
        hintStyle: theme.textTheme.bodyLarge!,
        textInputType: TextInputType.number,
        validator: (value) {
          if (!isNumeric(value)) {
            return "err_msg_please_enter_valid_number".tr;
          }
          return null;
        },
        contentPadding: EdgeInsets.symmetric(horizontal: 20.h));
  }

  /// Section Widget
  Widget _buildAddressArea() {
    return CustomTextFormField(
        controller: controller.addressAreaController,
        hintText: "lbl_area".tr,
        hintStyle: theme.textTheme.bodyLarge!);
  }

  /// Section Widget
  Widget _buildAddressLandmark() {
    return CustomTextFormField(
        controller: controller.addressLandmarkController,
        hintText: "lbl_landmark".tr,
        hintStyle: theme.textTheme.bodyLarge!,
        textInputAction: TextInputAction.done);
  }

  /// Section Widget
  Widget _buildSaveButton() {
    return CustomElevatedButton(width: 199.h, text: "lbl_save".tr);
  }

  /// Section Widget
  Widget _buildScrollView() {
    return SingleChildScrollView(
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 46.h, vertical: 20.v),
            decoration: AppDecoration.fillOnPrimaryContainer
                .copyWith(borderRadius: BorderRadiusStyle.customBorderTL20),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgCloseBlack90001,
                  height: 24.v,
                  width: 23.h,
                  alignment: Alignment.centerRight,
                  onTap: () {
                    onTapImgClose();
                  }),
              SizedBox(height: 23.v),
              Text("lbl_add_new_address".tr,
                  style: CustomTextStyles.titleLargePrimarySemiBold),
              SizedBox(height: 24.v),
              _buildAddressCountry(),
              SizedBox(height: 16.v),
              _buildAddressState(),
              SizedBox(height: 16.v),
              _buildAddressCity(),
              SizedBox(height: 16.v),
              _buildAddressPincode(),
              SizedBox(height: 15.v),
              _buildAddressArea(),
              SizedBox(height: 16.v),
              _buildAddressLandmark(),
              SizedBox(height: 14.v),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: EdgeInsets.only(right: 38.h),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(bottom: 16.v),
                                child: Obx(() => CustomCheckboxButton(
                                    text: "lbl_home".tr,
                                    value: controller.home.value,
                                    onChange: (value) {
                                      controller.home.value = value;
                                    }))),
                            Padding(
                                padding: EdgeInsets.only(left: 22.h),
                                child: Obx(() => CustomCheckboxButton(
                                    text: "lbl_work_office".tr,
                                    isExpandedText: true,
                                    value: controller.workOffice.value,
                                    onChange: (value) {
                                      controller.workOffice.value = value;
                                    }))),
                            Spacer(),
                            Padding(
                                padding: EdgeInsets.only(bottom: 16.v),
                                child: Obx(() => CustomCheckboxButton(
                                    text: "lbl_other".tr,
                                    value: controller.other.value,
                                    onChange: (value) {
                                      controller.other.value = value;
                                    })))
                          ]))),
              SizedBox(height: 13.v),
              _buildSaveButton(),
              SizedBox(height: 27.v)
            ])));
  }

  /// Navigates to the previous screen.
  onTapImgClose() {
    Get.back();
  }
}
