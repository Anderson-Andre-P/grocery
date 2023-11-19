import 'package:anderson_s_application3/core/app_export.dart';
import 'package:anderson_s_application3/presentation/register_screen/models/register_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the RegisterScreen.
///
/// This class manages the state of the RegisterScreen, including the
/// current registerModelObj
class RegisterController extends GetxController {
  TextEditingController nameFieldController = TextEditingController();

  TextEditingController emailFieldController = TextEditingController();

  TextEditingController passwordFieldController = TextEditingController();

  TextEditingController confirmPasswordFieldController =
      TextEditingController();

  TextEditingController contactNumberFieldController = TextEditingController();

  Rx<RegisterModel> registerModelObj = RegisterModel().obs;

  @override
  void onClose() {
    super.onClose();
    nameFieldController.dispose();
    emailFieldController.dispose();
    passwordFieldController.dispose();
    confirmPasswordFieldController.dispose();
    contactNumberFieldController.dispose();
  }
}
