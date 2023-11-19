import 'controller/splash_controller.dart';
import 'package:anderson_s_application3/core/app_export.dart';
import 'package:flutter/material.dart';

class SplashScreen extends GetWidget<SplashController> {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor:
                theme.colorScheme.onPrimaryContainer.withOpacity(1),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 51.h),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(right: 11.h),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgFolder,
                                height: 78.v,
                                width: 53.h),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 17.h, top: 20.v, bottom: 5.v),
                                child: RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: "lbl_sg".tr,
                                          style: CustomTextStyles
                                              .displayMediumBlack900),
                                      TextSpan(text: " "),
                                      TextSpan(
                                          text: "lbl_grocery".tr,
                                          style: theme.textTheme.displayMedium)
                                    ]),
                                    textAlign: TextAlign.left))
                          ])),
                      SizedBox(height: 9.v),
                      Padding(
                          padding: EdgeInsets.only(left: 8.h),
                          child: Text("msg_your_needs_in_just".tr,
                              style:
                                  CustomTextStyles.titleLargePrimaryRegular)),
                      SizedBox(height: 5.v)
                    ]))));
  }
}
