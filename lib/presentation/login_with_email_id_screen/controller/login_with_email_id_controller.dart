import 'package:anderson_s_application3/core/app_export.dart';
import 'package:anderson_s_application3/presentation/login_with_email_id_screen/models/login_with_email_id_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the LoginWithEmailIdScreen.
///
/// This class manages the state of the LoginWithEmailIdScreen, including the
/// current loginWithEmailIdModelObj
class LoginWithEmailIdController extends GetxController {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<LoginWithEmailIdModel> loginWithEmailIdModelObj =
      LoginWithEmailIdModel().obs;

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    passwordController.dispose();
  }
}
