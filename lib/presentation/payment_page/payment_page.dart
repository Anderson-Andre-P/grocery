import 'controller/payment_controller.dart';
import 'models/payment_model.dart';
import 'package:anderson_s_application3/core/app_export.dart';
import 'package:anderson_s_application3/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class PaymentPage extends StatelessWidget {
  PaymentPage({Key? key})
      : super(
          key: key,
        );

  PaymentController controller = Get.put(PaymentController(PaymentModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: _buildPayButton(),
      ),
    );
  }

  /// Section Widget
  Widget _buildPayButton() {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 30.v),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 16.h,
                right: 35.h,
              ),
              child: Column(
                children: [
                  CustomElevatedButton(
                    width: 200.h,
                    text: "lbl_pay_9_97".tr,
                    margin: EdgeInsets.only(right: 79.h),
                    alignment: Alignment.centerRight,
                  ),
                  SizedBox(height: 17.v),
                  SizedBox(
                    width: 377.h,
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "msg_your_personal_data2".tr,
                            style: CustomTextStyles.bodyMediumGray50002,
                          ),
                          TextSpan(
                            text: "lbl_privacy_policy".tr,
                            style: CustomTextStyles.titleSmallPrimarySemiBold,
                          ),
                          TextSpan(
                            text: "lbl".tr,
                            style: CustomTextStyles.titleSmallGray50002,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
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
