import 'package:anderson_s_application3/data/models/selectionPopupModel/selection_popup_model.dart';
import '../../../core/app_export.dart';
import 'mysubscription_item_model.dart';

/// This class defines the variables used in the [my_subscription_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MySubscriptionModel {
  Rx<List<SelectionPopupModel>> dropdownItemList = Rx([
    SelectionPopupModel(
      id: 1,
      title: "Item One",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Item Two",
    ),
    SelectionPopupModel(
      id: 3,
      title: "Item Three",
    )
  ]);

  Rx<List<MysubscriptionItemModel>> mysubscriptionItemList = Rx([
    MysubscriptionItemModel(
        m: ImageConstant.imgCardOnprimarycontainer119x396.obs,
        m1: "M ".obs,
        t: "T".obs,
        w: "W".obs,
        t1: "T".obs,
        f: "F ".obs,
        s: "S ".obs,
        s1: "S ".obs,
        m2: ImageConstant.imgImage63x65.obs,
        amulGoldMilk: "Amul Gold Milk".obs,
        measurement: "500 ml".obs,
        price: "2".obs,
        qtyTwo: "Qty : 2".obs)
  ]);
}
