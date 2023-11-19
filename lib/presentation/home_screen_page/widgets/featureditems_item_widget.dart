import '../controller/home_screen_controller.dart';
import '../models/featureditems_item_model.dart';
import 'package:anderson_s_application3/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FeatureditemsItemWidget extends StatelessWidget {
  FeatureditemsItemWidget(
    this.featureditemsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FeatureditemsItemModel featureditemsItemModelObj;

  var controller = Get.find<HomeScreenController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 162.h,
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.all(0),
        color: appTheme.gray100,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Container(
          height: 192.v,
          width: 162.h,
          padding: EdgeInsets.symmetric(vertical: 11.v),
          decoration: AppDecoration.fillGray.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Stack(
            alignment: Alignment.topLeft,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 13.h),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Obx(
                        () => CustomImageView(
                          imagePath:
                              featureditemsItemModelObj.fortunerice!.value,
                          height: 92.v,
                          width: 86.h,
                          alignment: Alignment.centerRight,
                        ),
                      ),
                      SizedBox(height: 8.v),
                      Obx(
                        () => Text(
                          featureditemsItemModelObj.fortuneRice!.value,
                          style: CustomTextStyles.titleMediumGray80001,
                        ),
                      ),
                      SizedBox(height: 7.v),
                      Obx(
                        () => Text(
                          featureditemsItemModelObj.price!.value,
                          style: CustomTextStyles
                              .titleMediumMicrosoftNewTaiLueGray80001,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: SizedBox(
                  height: 41.v,
                  width: 58.h,
                  child: Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgCard,
                        height: 41.v,
                        width: 58.h,
                        alignment: Alignment.center,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 7.h),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Obx(
                                () => Text(
                                  featureditemsItemModelObj.thirtySeven!.value,
                                  style: CustomTextStyles.titleSmallSemiBold,
                                ),
                              ),
                              Obx(
                                () => Text(
                                  featureditemsItemModelObj.off!.value,
                                  style: CustomTextStyles.titleSmallSemiBold,
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
      ),
    );
  }
}
