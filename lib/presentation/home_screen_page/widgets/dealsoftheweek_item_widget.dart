import '../controller/home_screen_controller.dart';
import '../models/dealsoftheweek_item_model.dart';
import 'package:anderson_s_application3/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DealsoftheweekItemWidget extends StatelessWidget {
  DealsoftheweekItemWidget(
    this.dealsoftheweekItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  DealsoftheweekItemModel dealsoftheweekItemModelObj;

  var controller = Get.find<HomeScreenController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 31.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      width: 156.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: dealsoftheweekItemModelObj.softdrinks!.value,
              height: 81.v,
              width: 92.h,
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Obx(
              () => Text(
                dealsoftheweekItemModelObj.softDrinks!.value,
                style: CustomTextStyles.titleMediumGray8000116,
              ),
            ),
          ),
          SizedBox(height: 11.v),
          Obx(
            () => Text(
              dealsoftheweekItemModelObj.offer!.value,
              style: CustomTextStyles.labelLargePrimary,
            ),
          ),
        ],
      ),
    );
  }
}
