import 'package:anderson_s_application3/core/app_export.dart';
import 'package:anderson_s_application3/presentation/faq_screen/models/faq_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the FaqScreen.
///
/// This class manages the state of the FaqScreen, including the
/// current faqModelObj
class FaqController extends GetxController {
  TextEditingController fortyEightController = TextEditingController();

  Rx<FaqModel> faqModelObj = FaqModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  SelectionPopupModel? selectedDropDownValue2;

  SelectionPopupModel? selectedDropDownValue3;

  SelectionPopupModel? selectedDropDownValue4;

  SelectionPopupModel? selectedDropDownValue5;

  @override
  void onClose() {
    super.onClose();
    fortyEightController.dispose();
  }

  onSelected(dynamic value) {
    for (var element in faqModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    faqModelObj.value.dropdownItemList.refresh();
  }

  onSelected1(dynamic value) {
    for (var element in faqModelObj.value.dropdownItemList1.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    faqModelObj.value.dropdownItemList1.refresh();
  }

  onSelected2(dynamic value) {
    for (var element in faqModelObj.value.dropdownItemList2.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    faqModelObj.value.dropdownItemList2.refresh();
  }

  onSelected3(dynamic value) {
    for (var element in faqModelObj.value.dropdownItemList3.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    faqModelObj.value.dropdownItemList3.refresh();
  }

  onSelected4(dynamic value) {
    for (var element in faqModelObj.value.dropdownItemList4.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    faqModelObj.value.dropdownItemList4.refresh();
  }

  onSelected5(dynamic value) {
    for (var element in faqModelObj.value.dropdownItemList5.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    faqModelObj.value.dropdownItemList5.refresh();
  }
}
