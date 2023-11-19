import 'package:anderson_s_application3/core/app_export.dart';
import 'package:anderson_s_application3/presentation/my_cart_screen/models/my_cart_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the MyCartScreen.
///
/// This class manages the state of the MyCartScreen, including the
/// current myCartModelObj
class MyCartController extends GetxController {
  TextEditingController discountController = TextEditingController();

  Rx<MyCartModel> myCartModelObj = MyCartModel().obs;

  @override
  void onClose() {
    super.onClose();
    discountController.dispose();
  }
}
