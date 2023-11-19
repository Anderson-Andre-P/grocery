import 'package:anderson_s_application3/core/app_export.dart';
import 'package:anderson_s_application3/presentation/my_subscription_screen/models/my_subscription_model.dart';

/// A controller class for the MySubscriptionScreen.
///
/// This class manages the state of the MySubscriptionScreen, including the
/// current mySubscriptionModelObj
class MySubscriptionController extends GetxController {
  Rx<MySubscriptionModel> mySubscriptionModelObj = MySubscriptionModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  onSelected(dynamic value) {
    for (var element in mySubscriptionModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    mySubscriptionModelObj.value.dropdownItemList.refresh();
  }
}
