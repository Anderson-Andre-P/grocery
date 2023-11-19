import 'package:anderson_s_application3/core/app_export.dart';
import 'package:anderson_s_application3/presentation/add_new_address_screen/models/add_new_address_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the AddNewAddressScreen.
///
/// This class manages the state of the AddNewAddressScreen, including the
/// current addNewAddressModelObj
class AddNewAddressController extends GetxController {
  TextEditingController countryController = TextEditingController();

  TextEditingController stateController = TextEditingController();

  TextEditingController cityController = TextEditingController();

  TextEditingController pincodeController = TextEditingController();

  TextEditingController areaController = TextEditingController();

  TextEditingController landmarkController = TextEditingController();

  Rx<AddNewAddressModel> addNewAddressModelObj = AddNewAddressModel().obs;

  Rx<bool> homeCheckbox = false.obs;

  Rx<bool> workOfficeCheckbox = false.obs;

  Rx<bool> otherCheckbox = false.obs;

  @override
  void onClose() {
    super.onClose();
    countryController.dispose();
    stateController.dispose();
    cityController.dispose();
    pincodeController.dispose();
    areaController.dispose();
    landmarkController.dispose();
  }
}
