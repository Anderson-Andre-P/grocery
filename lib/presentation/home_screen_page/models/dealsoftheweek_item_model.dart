import '../../../core/app_export.dart';

/// This class is used in the [dealsoftheweek_item_widget] screen.
class DealsoftheweekItemModel {
  DealsoftheweekItemModel({
    this.softdrinks,
    this.softDrinks,
    this.offer,
    this.id,
  }) {
    softdrinks = softdrinks ?? Rx(ImageConstant.imgImage81x92);
    softDrinks = softDrinks ?? Rx("Soft drinks");
    offer = offer ?? Rx("Upto 40% off");
    id = id ?? Rx("");
  }

  Rx<String>? softdrinks;

  Rx<String>? softDrinks;

  Rx<String>? offer;

  Rx<String>? id;
}
