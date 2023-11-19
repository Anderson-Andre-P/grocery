import '../../../core/app_export.dart';
import 'mycart_item_model.dart';

/// This class defines the variables used in the [my_cart_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MyCartModel {
  Rx<List<MycartItemModel>> mycartItemList = Rx([
    MycartItemModel(
        shimlaApple: ImageConstant.imgImage38x57.obs,
        shimlaApple1: "Shimla Apple".obs,
        weight: "1 kg".obs,
        price: "2".obs,
        oldPrice: "3.25".obs,
        one: "1".obs)
  ]);
}
