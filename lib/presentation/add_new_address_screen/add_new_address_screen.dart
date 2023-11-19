import 'controller/add_new_address_controller.dart';
import 'package:anderson_s_application3/core/app_export.dart';
import 'package:anderson_s_application3/core/utils/validation_functions.dart';
import 'package:anderson_s_application3/widgets/app_bar/appbar_leading_image.dart';
import 'package:anderson_s_application3/widgets/app_bar/appbar_title.dart';
import 'package:anderson_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:anderson_s_application3/widgets/custom_checkbox_button.dart';
import 'package:anderson_s_application3/widgets/custom_elevated_button.dart';
import 'package:anderson_s_application3/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class AddNewAddressScreen extends GetWidget<AddNewAddressController> {
  AddNewAddressScreen({Key? key})
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
          child: Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(top: 10.v),
            padding: EdgeInsets.all(48.h),
            decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
              borderRadius: BorderRadiusStyle.customBorderTL30,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _buildCountry(),
                SizedBox(height: 16.v),
                _buildState(),
                SizedBox(height: 16.v),
                _buildCity(),
                SizedBox(height: 16.v),
                _buildPincode(),
                SizedBox(height: 16.v),
                _buildArea(),
                SizedBox(height: 16.v),
                _buildLandmark(),
                SizedBox(height: 15.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(right: 34.h),
                    child: Row(
                      children: [
                        _buildHomeCheckbox(),
                        _buildWorkOfficeCheckbox(),
                        _buildOtherCheckbox(),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 29.v),
                _buildSaveButton(),
                SizedBox(height: 5.v),
              ],
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
          top: 15.v,
          bottom: 14.v,
        ),
      ),
      title: AppbarTitle(
        text: "lbl_add_new_address".tr,
        margin: EdgeInsets.only(left: 15.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildCountry() {
    return CustomTextFormField(
      controller: controller.countryController,
      hintText: "lbl_country".tr,
      hintStyle: theme.textTheme.bodyLarge!,
    );
  }

  /// Section Widget
  Widget _buildState() {
    return CustomTextFormField(
      controller: controller.stateController,
      hintText: "lbl_state".tr,
      hintStyle: theme.textTheme.bodyLarge!,
    );
  }

  /// Section Widget
  Widget _buildCity() {
    return CustomTextFormField(
      controller: controller.cityController,
      hintText: "lbl_city".tr,
      hintStyle: theme.textTheme.bodyLarge!,
    );
  }

  /// Section Widget
  Widget _buildPincode() {
    return CustomTextFormField(
      controller: controller.pincodeController,
      hintText: "lbl_pincode".tr,
      hintStyle: theme.textTheme.bodyLarge!,
      textInputType: TextInputType.number,
      validator: (value) {
        if (!isNumeric(value)) {
          return "err_msg_please_enter_valid_number".tr;
        }
        return null;
      },
    );
  }

  /// Section Widget
  Widget _buildArea() {
    return CustomTextFormField(
      controller: controller.areaController,
      hintText: "lbl_area".tr,
      hintStyle: theme.textTheme.bodyLarge!,
    );
  }

  /// Section Widget
  Widget _buildLandmark() {
    return CustomTextFormField(
      controller: controller.landmarkController,
      hintText: "lbl_landmark".tr,
      hintStyle: theme.textTheme.bodyLarge!,
      textInputAction: TextInputAction.done,
    );
  }

  /// Section Widget
  Widget _buildHomeCheckbox() {
    return Obx(
      () => CustomCheckboxButton(
        text: "lbl_home".tr,
        value: controller.homeCheckbox.value,
        onChange: (value) {
          controller.homeCheckbox.value = value;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildWorkOfficeCheckbox() {
    return Padding(
      padding: EdgeInsets.only(left: 22.h),
      child: Obx(
        () => CustomCheckboxButton(
          text: "lbl_work_office".tr,
          value: controller.workOfficeCheckbox.value,
          onChange: (value) {
            controller.workOfficeCheckbox.value = value;
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildOtherCheckbox() {
    return Padding(
      padding: EdgeInsets.only(left: 21.h),
      child: Obx(
        () => CustomCheckboxButton(
          text: "lbl_other".tr,
          value: controller.otherCheckbox.value,
          onChange: (value) {
            controller.otherCheckbox.value = value;
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSaveButton() {
    return CustomElevatedButton(
      width: 199.h,
      text: "lbl_save".tr,
    );
  }
}
