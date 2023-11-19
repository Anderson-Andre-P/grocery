import '../../../core/app_export.dart';
import 'fruits_item_model.dart';

/// This class defines the variables used in the [fruits_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class FruitsModel {
  Rx<List<FruitsItemModel>> fruitsItemList = Rx([
    FruitsItemModel(
        icon: ImageConstant.imgIcon.obs,
        strawberry: ImageConstant.imgImage52x71.obs,
        strawberry1: "Strawberry".obs,
        kg: "(1 kg)".obs,
        price: "4".obs,
        one: "1".obs,
        subscribe: "Subscribe".obs,
        button: "Buy Once".obs),
    FruitsItemModel(
        icon: ImageConstant.imgIconRed400.obs,
        strawberry: ImageConstant.imgImage73x131.obs,
        strawberry1: "Grapes".obs,
        kg: "(1 kg)".obs,
        price: "4".obs,
        one: "1".obs,
        subscribe: "Subscribe".obs,
        button: "Buy Once".obs)
  ]);
}
