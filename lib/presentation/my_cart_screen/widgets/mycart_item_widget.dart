import '../controller/my_cart_controller.dart';
import '../models/mycart_item_model.dart';
import 'package:anderson_s_application3/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

// ignore: must_be_immutable
class MycartItemWidget extends StatelessWidget {
  MycartItemWidget(
    this.mycartItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  MycartItemModel mycartItemModelObj;

  var controller = Get.find<MyCartController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 396.h,
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 12.v,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: fs.Svg(
            ImageConstant.imgCardOnprimarycontainer,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 89.adaptSize,
            width: 89.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 3.v),
            padding: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 25.v,
            ),
            decoration: AppDecoration.fillGray50.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Obx(
              () => CustomImageView(
                imagePath: mycartItemModelObj.shimlaApple!.value,
                height: 38.v,
                width: 57.h,
                alignment: Alignment.center,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 18.h,
              top: 1.v,
              bottom: 18.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    mycartItemModelObj.shimlaApple1!.value,
                    style: CustomTextStyles.bodyLargeGray80001,
                  ),
                ),
                SizedBox(height: 8.v),
                Obx(
                  () => Text(
                    mycartItemModelObj.weight!.value,
                    style: CustomTextStyles.bodyMediumGray60003,
                  ),
                ),
                SizedBox(height: 6.v),
                Row(
                  children: [
                    Obx(
                      () => Text(
                        mycartItemModelObj.price!.value,
                        style: CustomTextStyles.titleMediumHelveticaGray80001,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: Obx(
                        () => Text(
                          mycartItemModelObj.oldPrice!.value,
                          style: CustomTextStyles.bodyLargeHelveticaGray40003
                              .copyWith(
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 29.h),
            child: Column(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgClose,
                  height: 12.adaptSize,
                  width: 12.adaptSize,
                  alignment: Alignment.centerRight,
                ),
                SizedBox(height: 52.v),
                SizedBox(
                  width: 100.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgIconPrimary,
                        height: 30.adaptSize,
                        width: 30.adaptSize,
                      ),
                      Obx(
                        () => Text(
                          mycartItemModelObj.one!.value,
                          style: theme.textTheme.headlineSmall,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgIconPrimary18x18,
                        height: 30.adaptSize,
                        width: 30.adaptSize,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
