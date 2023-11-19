import '../../../core/app_export.dart';

/// This class is used in the [featureditems_item_widget] screen.
class FeatureditemsItemModel {
  FeatureditemsItemModel({
    this.fortunerice,
    this.fortuneRice,
    this.price,
    this.thirtySeven,
    this.off,
    this.id,
  }) {
    fortunerice = fortunerice ?? Rx(ImageConstant.imgImage92x86);
    fortuneRice = fortuneRice ?? Rx("Fortune rice");
    price = price ?? Rx("3/kg");
    thirtySeven = thirtySeven ?? Rx("37%");
    off = off ?? Rx("off");
    id = id ?? Rx("");
  }

  Rx<String>? fortunerice;

  Rx<String>? fortuneRice;

  Rx<String>? price;

  Rx<String>? thirtySeven;

  Rx<String>? off;

  Rx<String>? id;
}
