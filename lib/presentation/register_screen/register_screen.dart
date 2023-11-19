import 'controller/register_controller.dart';
import 'package:anderson_s_application3/core/app_export.dart';
import 'package:anderson_s_application3/core/utils/validation_functions.dart';
import 'package:anderson_s_application3/widgets/custom_elevated_button.dart';
import 'package:anderson_s_application3/widgets/custom_outlined_button.dart';
import 'package:anderson_s_application3/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class RegisterScreen extends GetWidget<RegisterController> {
  RegisterScreen({Key? key})
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
        backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                SizedBox(height: 16.v),
                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 15.h,
                        right: 15.h,
                        bottom: 47.v,
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgFolder,
                                height: 53.v,
                                width: 36.h,
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 11.h,
                                  top: 13.v,
                                  bottom: 3.v,
                                ),
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "lbl_sg".tr,
                                        style: CustomTextStyles
                                            .headlineMediumBlack900,
                                      ),
                                      TextSpan(
                                        text: " ",
                                      ),
                                      TextSpan(
                                        text: "lbl_grocery".tr,
                                        style: CustomTextStyles
                                            .headlineMediumPrimary,
                                      ),
                                    ],
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 41.v),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "lbl_register".tr,
                              style: theme.textTheme.headlineSmall,
                            ),
                          ),
                          SizedBox(height: 27.v),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "lbl_your_name".tr,
                              style: CustomTextStyles.titleMediumOnPrimary,
                            ),
                          ),
                          SizedBox(height: 13.v),
                          _buildNameField(),
                          SizedBox(height: 23.v),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "lbl_email_id".tr,
                              style: CustomTextStyles.titleMediumOnPrimary,
                            ),
                          ),
                          SizedBox(height: 13.v),
                          _buildEmailField(),
                          SizedBox(height: 23.v),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "lbl_password".tr,
                              style: CustomTextStyles.titleMediumOnPrimary,
                            ),
                          ),
                          SizedBox(height: 13.v),
                          _buildPasswordField(),
                          SizedBox(height: 23.v),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "msg_confirm_password".tr,
                              style: CustomTextStyles.titleMediumOnPrimary,
                            ),
                          ),
                          SizedBox(height: 13.v),
                          _buildConfirmPasswordField(),
                          SizedBox(height: 23.v),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "lbl_contact_number".tr,
                              style: CustomTextStyles.titleMediumOnPrimary,
                            ),
                          ),
                          SizedBox(height: 13.v),
                          _buildContactNumberField(),
                          SizedBox(height: 24.v),
                          _buildRegisterButton(),
                          SizedBox(height: 24.v),
                          _buildOrContinueWithSection(),
                          SizedBox(height: 23.v),
                          _buildFrame(),
                          SizedBox(height: 31.v),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 47.h),
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "msg_already_have_an2".tr,
                                      style:
                                          CustomTextStyles.bodyLargeBluegray400,
                                    ),
                                    TextSpan(
                                      text: "lbl_login2".tr,
                                      style:
                                          CustomTextStyles.titleMediumGray900,
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildNameField() {
    return CustomTextFormField(
      controller: controller.nameFieldController,
      hintText: "lbl_enter_your_name".tr,
      hintStyle: CustomTextStyles.bodyLargeBluegray40016,
      validator: (value) {
        if (!isText(value)) {
          return "err_msg_please_enter_valid_text".tr;
        }
        return null;
      },
      contentPadding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 17.v,
      ),
    );
  }

  /// Section Widget
  Widget _buildEmailField() {
    return CustomTextFormField(
      controller: controller.emailFieldController,
      hintText: "msg_enter_your_email".tr,
      hintStyle: CustomTextStyles.bodyLargeBluegray40016,
      textInputType: TextInputType.emailAddress,
      validator: (value) {
        if (value == null || (!isValidEmail(value, isRequired: true))) {
          return "err_msg_please_enter_valid_email".tr;
        }
        return null;
      },
      contentPadding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 17.v,
      ),
    );
  }

  /// Section Widget
  Widget _buildPasswordField() {
    return CustomTextFormField(
      controller: controller.passwordFieldController,
      hintText: "msg_enter_your_password".tr,
      hintStyle: CustomTextStyles.bodyLargeBluegray40016,
      textInputType: TextInputType.visiblePassword,
      validator: (value) {
        if (value == null || (!isValidPassword(value, isRequired: true))) {
          return "err_msg_please_enter_valid_password".tr;
        }
        return null;
      },
      obscureText: true,
      contentPadding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 17.v,
      ),
    );
  }

  /// Section Widget
  Widget _buildConfirmPasswordField() {
    return CustomTextFormField(
      controller: controller.confirmPasswordFieldController,
      hintText: "msg_confirm_your_password".tr,
      hintStyle: CustomTextStyles.bodyLargeBluegray40016,
      textInputType: TextInputType.visiblePassword,
      validator: (value) {
        if (value == null || (!isValidPassword(value, isRequired: true))) {
          return "err_msg_please_enter_valid_password".tr;
        }
        return null;
      },
      obscureText: true,
      contentPadding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 17.v,
      ),
    );
  }

  /// Section Widget
  Widget _buildContactNumberField() {
    return CustomTextFormField(
      controller: controller.contactNumberFieldController,
      hintText: "msg_enter_your_contact".tr,
      hintStyle: CustomTextStyles.bodyLargeBluegray40016,
      textInputAction: TextInputAction.done,
      textInputType: TextInputType.number,
      validator: (value) {
        if (!isNumeric(value)) {
          return "err_msg_please_enter_valid_number".tr;
        }
        return null;
      },
      contentPadding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 17.v,
      ),
    );
  }

  /// Section Widget
  Widget _buildRegisterButton() {
    return CustomElevatedButton(
      text: "lbl_register".tr,
      buttonStyle: CustomButtonStyles.outlineIndigoA,
    );
  }

  /// Section Widget
  Widget _buildOrContinueWithSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 11.v,
            bottom: 7.v,
          ),
          child: SizedBox(
            width: 122.h,
            child: Divider(),
          ),
        ),
        Text(
          "msg_or_continue_with".tr,
          style: CustomTextStyles.bodyLargeBluegray40016,
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 11.v,
            bottom: 7.v,
          ),
          child: SizedBox(
            width: 122.h,
            child: Divider(),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildGoogleButton() {
    return CustomOutlinedButton(
      width: 183.h,
      text: "lbl_google".tr,
      leftIcon: Container(
        margin: EdgeInsets.only(right: 8.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgIconAmber500,
          height: 32.adaptSize,
          width: 32.adaptSize,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFacebookButton() {
    return CustomOutlinedButton(
      width: 194.h,
      text: "lbl_facebook".tr,
      leftIcon: Container(
        margin: EdgeInsets.only(right: 8.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgIconIndigo500,
          height: 32.v,
          width: 33.h,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildGoogleButton(),
        _buildFacebookButton(),
      ],
    );
  }
}
