import 'package:anderson_s_application3/core/app_export.dart';
import 'package:anderson_s_application3/presentation/home_screen_page/models/home_screen_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the HomeScreenPage.
///
/// This class manages the state of the HomeScreenPage, including the
/// current homeScreenModelObj
class HomeScreenController extends GetxController {
  HomeScreenController(this.homeScreenModelObj);

  TextEditingController searchController = TextEditingController();

  Rx<HomeScreenModel> homeScreenModelObj;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
