import 'package:anderson_s_application3/core/app_export.dart';
import 'package:anderson_s_application3/presentation/contact_us_screen/models/contact_us_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ContactUsScreen.
///
/// This class manages the state of the ContactUsScreen, including the
/// current contactUsModelObj
class ContactUsController extends GetxController {
  TextEditingController firstNameEditTextController = TextEditingController();

  TextEditingController lastNameEditTextController = TextEditingController();

  TextEditingController emailEditTextController = TextEditingController();

  TextEditingController phoneNumberEditTextController = TextEditingController();

  TextEditingController additionalInfoEditTextController =
      TextEditingController();

  Rx<ContactUsModel> contactUsModelObj = ContactUsModel().obs;

  @override
  void onClose() {
    super.onClose();
    firstNameEditTextController.dispose();
    lastNameEditTextController.dispose();
    emailEditTextController.dispose();
    phoneNumberEditTextController.dispose();
    additionalInfoEditTextController.dispose();
  }
}
