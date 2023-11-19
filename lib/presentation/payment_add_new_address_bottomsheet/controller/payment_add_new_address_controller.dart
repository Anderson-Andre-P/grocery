import 'package:anderson_s_application3/core/app_export.dart';
import 'package:anderson_s_application3/presentation/payment_add_new_address_bottomsheet/models/payment_add_new_address_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the PaymentAddNewAddressBottomsheet.
///
/// This class manages the state of the PaymentAddNewAddressBottomsheet, including the
/// current paymentAddNewAddressModelObj
class PaymentAddNewAddressController extends GetxController {
  TextEditingController addressCountryController = TextEditingController();

  TextEditingController addressStateController = TextEditingController();

  TextEditingController addressCityController = TextEditingController();

  TextEditingController addressPincodeController = TextEditingController();

  TextEditingController addressAreaController = TextEditingController();

  TextEditingController addressLandmarkController = TextEditingController();

  Rx<PaymentAddNewAddressModel> paymentAddNewAddressModelObj =
      PaymentAddNewAddressModel().obs;

  Rx<bool> home = false.obs;

  Rx<bool> workOffice = false.obs;

  Rx<bool> other = false.obs;

  @override
  void onClose() {
    super.onClose();
    addressCountryController.dispose();
    addressStateController.dispose();
    addressCityController.dispose();
    addressPincodeController.dispose();
    addressAreaController.dispose();
    addressLandmarkController.dispose();
  }
}
