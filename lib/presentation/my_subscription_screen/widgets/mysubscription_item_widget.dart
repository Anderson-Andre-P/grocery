import '../controller/my_subscription_controller.dart';
import '../models/mysubscription_item_model.dart';
import 'package:anderson_s_application3/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MysubscriptionItemWidget extends StatelessWidget {
  MysubscriptionItemWidget(
    this.mysubscriptionItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  MysubscriptionItemModel mysubscriptionItemModelObj;

  var controller = Get.find<MySubscriptionController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 119.v,
      width: 400.h,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: mysubscriptionItemModelObj.m!.value,
              height: 119.v,
              width: 396.h,
              alignment: Alignment.center,
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: 105.v,
              width: 377.h,
              margin: EdgeInsets.only(bottom: 1.v),
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  Align(
                    alignment: Alignment.bottomRight,
                    child: SizedBox(
                      height: 43.v,
                      width: 159.h,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgCardPrimary,
                            height: 43.v,
                            width: 159.h,
                            alignment: Alignment.center,
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                              padding: EdgeInsets.only(bottom: 8.v),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Obx(
                                        () => Text(
                                          mysubscriptionItemModelObj.m1!.value,
                                          style: theme.textTheme.titleSmall,
                                        ),
                                      ),
                                      CustomImageView(
                                        imagePath: ImageConstant.imgRound,
                                        height: 3.adaptSize,
                                        width: 3.adaptSize,
                                        margin: EdgeInsets.only(left: 5.h),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 8.h),
                                    child: Column(
                                      children: [
                                        Obx(
                                          () => Text(
                                            mysubscriptionItemModelObj.t!.value,
                                            style: theme.textTheme.titleSmall,
                                          ),
                                        ),
                                        CustomImageView(
                                          imagePath: ImageConstant.imgRound,
                                          height: 3.adaptSize,
                                          width: 3.adaptSize,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 8.h),
                                    child: Column(
                                      children: [
                                        Obx(
                                          () => Text(
                                            mysubscriptionItemModelObj.w!.value,
                                            style: theme.textTheme.titleSmall,
                                          ),
                                        ),
                                        CustomImageView(
                                          imagePath: ImageConstant.imgRound,
                                          height: 3.adaptSize,
                                          width: 3.adaptSize,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 8.h),
                                    child: Column(
                                      children: [
                                        Obx(
                                          () => Text(
                                            mysubscriptionItemModelObj
                                                .t1!.value,
                                            style: theme.textTheme.titleSmall,
                                          ),
                                        ),
                                        CustomImageView(
                                          imagePath: ImageConstant.imgRound,
                                          height: 3.adaptSize,
                                          width: 3.adaptSize,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 8.h),
                                    child: Column(
                                      children: [
                                        Obx(
                                          () => Text(
                                            mysubscriptionItemModelObj.f!.value,
                                            style: theme.textTheme.titleSmall,
                                          ),
                                        ),
                                        CustomImageView(
                                          imagePath: ImageConstant.imgRound,
                                          height: 3.adaptSize,
                                          width: 3.adaptSize,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 8.h),
                                    child: Column(
                                      children: [
                                        Obx(
                                          () => Text(
                                            mysubscriptionItemModelObj.s!.value,
                                            style: theme.textTheme.titleSmall,
                                          ),
                                        ),
                                        CustomImageView(
                                          imagePath: ImageConstant.imgRound,
                                          height: 3.adaptSize,
                                          width: 3.adaptSize,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 8.h,
                                      bottom: 3.v,
                                    ),
                                    child: Obx(
                                      () => Text(
                                        mysubscriptionItemModelObj.s1!.value,
                                        style: theme.textTheme.titleSmall,
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
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                        right: 18.h,
                        bottom: 15.v,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 89.adaptSize,
                            width: 89.adaptSize,
                            padding: EdgeInsets.symmetric(
                              horizontal: 12.h,
                              vertical: 13.v,
                            ),
                            decoration: AppDecoration.fillGray50.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10,
                            ),
                            child: Obx(
                              () => CustomImageView(
                                imagePath: mysubscriptionItemModelObj.m2!.value,
                                height: 63.v,
                                width: 65.h,
                                alignment: Alignment.center,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 22.h,
                              bottom: 14.v,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Obx(
                                  () => Text(
                                    mysubscriptionItemModelObj
                                        .amulGoldMilk!.value,
                                    style:
                                        CustomTextStyles.titleMediumGray700c6,
                                  ),
                                ),
                                SizedBox(height: 7.v),
                                Obx(
                                  () => Text(
                                    mysubscriptionItemModelObj
                                        .measurement!.value,
                                    style:
                                        CustomTextStyles.bodyMediumGray50004_1,
                                  ),
                                ),
                                SizedBox(height: 7.v),
                                Obx(
                                  () => Text(
                                    mysubscriptionItemModelObj.price!.value,
                                    style: CustomTextStyles
                                        .titleMediumHelveticaGray80001,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: EdgeInsets.only(bottom: 72.v),
                            child: Obx(
                              () => Text(
                                mysubscriptionItemModelObj.qtyTwo!.value,
                                style: CustomTextStyles.titleSmallGray50004,
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
          ),
        ],
      ),
    );
  }
}
