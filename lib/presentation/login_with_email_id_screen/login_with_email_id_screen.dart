import 'controller/login_with_email_id_controller.dart';
import 'package:anderson_s_application3/core/app_export.dart';
import 'package:anderson_s_application3/core/utils/validation_functions.dart';
import 'package:anderson_s_application3/widgets/custom_elevated_button.dart';
import 'package:anderson_s_application3/widgets/custom_outlined_button.dart';
import 'package:anderson_s_application3/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

// ignore_for_file: must_be_immutable
class LoginWithEmailIdScreen extends GetWidget<LoginWithEmailIdController> {
  LoginWithEmailIdScreen({Key? key})
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
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.all(16.h),
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
                              style: CustomTextStyles.headlineMediumBlack900,
                            ),
                            TextSpan(
                              text: " ",
                            ),
                            TextSpan(
                              text: "lbl_grocery".tr,
                              style: CustomTextStyles.headlineMediumPrimary,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 50.v),
                SizedBox(
                  height: 152.v,
                  width: 157.h,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          width: 157.h,
                          margin: EdgeInsets.only(bottom: 18.v),
                          padding: EdgeInsets.symmetric(vertical: 1.v),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: fs.Svg(
                                ImageConstant.imgGroup253,
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgSpeechBubble,
                                height: 21.v,
                                width: 18.h,
                                margin: EdgeInsets.only(
                                  top: 47.v,
                                  bottom: 61.v,
                                ),
                              ),
                              Container(
                                height: 122.v,
                                width: 73.h,
                                margin: EdgeInsets.only(bottom: 7.v),
                                child: Stack(
                                  alignment: Alignment.bottomLeft,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgPadlock,
                                      height: 36.v,
                                      width: 30.h,
                                      alignment: Alignment.topRight,
                                    ),
                                    Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Container(
                                        height: 106.v,
                                        width: 53.h,
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 2.h,
                                          vertical: 3.v,
                                        ),
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: fs.Svg(
                                              ImageConstant.imgGroup17,
                                            ),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        child: Stack(
                                          alignment: Alignment.bottomCenter,
                                          children: [
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgVector,
                                              height: 99.v,
                                              width: 48.h,
                                              alignment: Alignment.center,
                                            ),
                                            Align(
                                              alignment: Alignment.bottomCenter,
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                  left: 6.h,
                                                  right: 3.h,
                                                  bottom: 2.v,
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: SizedBox(
                                                        height: 5.v,
                                                        width: 4.h,
                                                        child: Stack(
                                                          alignment:
                                                              Alignment.center,
                                                          children: [
                                                            CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgVectorPrimary5x4,
                                                              height: 5.v,
                                                              width: 4.h,
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                            ),
                                                            Opacity(
                                                              opacity: 0.1,
                                                              child:
                                                                  CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgVectorBlack90001,
                                                                height: 5.v,
                                                                width: 4.h,
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(height: 1.v),
                                                    Opacity(
                                                      opacity: 0.2,
                                                      child: Align(
                                                        alignment:
                                                            Alignment.center,
                                                        child: Container(
                                                          height: 2.v,
                                                          width: 17.h,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: theme
                                                                .colorScheme
                                                                .onPrimaryContainer,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(height: 6.v),
                                                    Opacity(
                                                      opacity: 0.1,
                                                      child: Container(
                                                        height: 1.v,
                                                        width: 9.h,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: appTheme
                                                              .black90001
                                                              .withOpacity(
                                                                  0.39),
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(height: 2.v),
                                                    SizedBox(
                                                      height: 6.v,
                                                      width: 37.h,
                                                      child: Stack(
                                                        alignment:
                                                            Alignment.topLeft,
                                                        children: [
                                                          CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgVectorGray300,
                                                            height: 6.v,
                                                            width: 37.h,
                                                            alignment: Alignment
                                                                .center,
                                                          ),
                                                          Opacity(
                                                            opacity: 0.2,
                                                            child: Align(
                                                              alignment:
                                                                  Alignment
                                                                      .topLeft,
                                                              child: Container(
                                                                height: 1.v,
                                                                width: 17.h,
                                                                margin:
                                                                    EdgeInsets
                                                                        .only(
                                                                  left: 2.h,
                                                                  top: 2.v,
                                                                ),
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: theme
                                                                      .colorScheme
                                                                      .onPrimaryContainer,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(height: 5.v),
                                                    Opacity(
                                                      opacity: 0.1,
                                                      child: Container(
                                                        height: 1.v,
                                                        width: 9.h,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: appTheme
                                                              .black90001
                                                              .withOpacity(
                                                                  0.39),
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(height: 2.v),
                                                    SizedBox(
                                                      height: 6.v,
                                                      width: 37.h,
                                                      child: Stack(
                                                        alignment: Alignment
                                                            .centerLeft,
                                                        children: [
                                                          CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgVectorGray3006x37,
                                                            height: 6.v,
                                                            width: 37.h,
                                                            alignment: Alignment
                                                                .center,
                                                          ),
                                                          Opacity(
                                                            opacity: 0.2,
                                                            child: Align(
                                                              alignment: Alignment
                                                                  .centerLeft,
                                                              child: Container(
                                                                height: 1.v,
                                                                width: 17.h,
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        left: 2
                                                                            .h),
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: theme
                                                                      .colorScheme
                                                                      .onPrimaryContainer,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(height: 5.v),
                                                    Opacity(
                                                      opacity: 0.1,
                                                      child: Container(
                                                        height: 1.v,
                                                        width: 9.h,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: appTheme
                                                              .black90001
                                                              .withOpacity(
                                                                  0.39),
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(height: 2.v),
                                                    SizedBox(
                                                      height: 6.v,
                                                      width: 37.h,
                                                      child: Stack(
                                                        alignment: Alignment
                                                            .bottomLeft,
                                                        children: [
                                                          CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgVector6x37,
                                                            height: 6.v,
                                                            width: 37.h,
                                                            alignment: Alignment
                                                                .center,
                                                          ),
                                                          Align(
                                                            alignment: Alignment
                                                                .bottomLeft,
                                                            child: Container(
                                                              height: 1.v,
                                                              width: 20.h,
                                                              margin: EdgeInsets
                                                                  .only(
                                                                left: 2.h,
                                                                bottom: 2.v,
                                                              ),
                                                              child: Stack(
                                                                alignment: Alignment
                                                                    .centerLeft,
                                                                children: [
                                                                  CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgVectorPrimary1x1,
                                                                    height: 1
                                                                        .adaptSize,
                                                                    width: 1
                                                                        .adaptSize,
                                                                    alignment:
                                                                        Alignment
                                                                            .topLeft,
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .centerLeft,
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsets.only(
                                                                          left:
                                                                              2.h),
                                                                      child:
                                                                          Row(
                                                                        children: [
                                                                          CustomImageView(
                                                                            imagePath:
                                                                                ImageConstant.imgVector1x1,
                                                                            height:
                                                                                1.adaptSize,
                                                                            width:
                                                                                1.adaptSize,
                                                                          ),
                                                                          CustomImageView(
                                                                            imagePath:
                                                                                ImageConstant.imgVector1,
                                                                            height:
                                                                                1.adaptSize,
                                                                            width:
                                                                                1.adaptSize,
                                                                          ),
                                                                          CustomImageView(
                                                                            imagePath:
                                                                                ImageConstant.imgVector1,
                                                                            height:
                                                                                1.adaptSize,
                                                                            width:
                                                                                1.adaptSize,
                                                                          ),
                                                                          CustomImageView(
                                                                            imagePath:
                                                                                ImageConstant.imgVector1,
                                                                            height:
                                                                                1.adaptSize,
                                                                            width:
                                                                                1.adaptSize,
                                                                          ),
                                                                          CustomImageView(
                                                                            imagePath:
                                                                                ImageConstant.imgVectorPrimary1x1,
                                                                            height:
                                                                                1.adaptSize,
                                                                            width:
                                                                                1.adaptSize,
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgVector2,
                                                                    height: 1
                                                                        .adaptSize,
                                                                    width: 1
                                                                        .adaptSize,
                                                                    alignment:
                                                                        Alignment
                                                                            .centerRight,
                                                                    margin: EdgeInsets.only(
                                                                        right: 4
                                                                            .h),
                                                                  ),
                                                                  CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgVectorPrimary1x1,
                                                                    height: 1
                                                                        .adaptSize,
                                                                    width: 1
                                                                        .adaptSize,
                                                                    alignment:
                                                                        Alignment
                                                                            .centerRight,
                                                                    margin: EdgeInsets.only(
                                                                        right: 2
                                                                            .h),
                                                                  ),
                                                                  CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgVectorPrimary1x1,
                                                                    height: 1
                                                                        .adaptSize,
                                                                    width: 1
                                                                        .adaptSize,
                                                                    alignment:
                                                                        Alignment
                                                                            .centerRight,
                                                                  ),
                                                                  Opacity(
                                                                    opacity:
                                                                        0.2,
                                                                    child:
                                                                        CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgGroup,
                                                                      height:
                                                                          1.v,
                                                                      width:
                                                                          20.h,
                                                                      alignment:
                                                                          Alignment
                                                                              .center,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(height: 10.v),
                                                    Container(
                                                      height: 18.v,
                                                      width: 28.h,
                                                      margin: EdgeInsets.only(
                                                          left: 3.h),
                                                      child: Stack(
                                                        alignment: Alignment
                                                            .centerLeft,
                                                        children: [
                                                          CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgVectorPrimary,
                                                            height: 8.v,
                                                            width: 28.h,
                                                            alignment: Alignment
                                                                .topCenter,
                                                          ),
                                                          Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Container(
                                                              width: 12.h,
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      left:
                                                                          5.h),
                                                              child: Text(
                                                                "lbl_log_in".tr,
                                                                maxLines: 2,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                style: CustomTextStyles
                                                                    .montserratGray30001,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: SizedBox(
                          width: 113.h,
                          child: Divider(
                            color: theme.colorScheme.primaryContainer,
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgCharacter,
                        height: 100.v,
                        width: 52.h,
                        alignment: Alignment.bottomLeft,
                        margin: EdgeInsets.only(left: 30.h),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 41.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "lbl_login2".tr,
                    style: theme.textTheme.headlineSmall,
                  ),
                ),
                SizedBox(height: 27.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "lbl_email_id".tr,
                    style: CustomTextStyles.titleMediumOnPrimary,
                  ),
                ),
                SizedBox(height: 13.v),
                _buildEmail(),
                SizedBox(height: 23.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "lbl_password".tr,
                    style: CustomTextStyles.titleMediumOnPrimary,
                  ),
                ),
                SizedBox(height: 13.v),
                _buildPassword(),
                SizedBox(height: 24.v),
                _buildLoginButton(),
                SizedBox(height: 24.v),
                _buildOrContinueWith(),
                SizedBox(height: 23.v),
                _buildFrame(),
                SizedBox(height: 31.v),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "msg_don_t_you_have_an2".tr,
                        style: CustomTextStyles.bodyLargeBluegray400,
                      ),
                      TextSpan(
                        text: "lbl_register".tr,
                        style: CustomTextStyles.titleMediumGray900,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEmail() {
    return CustomTextFormField(
      controller: controller.emailController,
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
  Widget _buildPassword() {
    return CustomTextFormField(
      controller: controller.passwordController,
      hintText: "msg_enter_your_password".tr,
      hintStyle: CustomTextStyles.bodyLargeBluegray40016,
      textInputAction: TextInputAction.done,
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
  Widget _buildLoginButton() {
    return CustomElevatedButton(
      text: "lbl_login2".tr,
      buttonStyle: CustomButtonStyles.outlineIndigoA,
    );
  }

  /// Section Widget
  Widget _buildOrContinueWith() {
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
