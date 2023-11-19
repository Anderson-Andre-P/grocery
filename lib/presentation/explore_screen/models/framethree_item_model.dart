import '../../../core/app_export.dart';

/// This class is used in the [framethree_item_widget] screen.
class FramethreeItemModel {
  FramethreeItemModel({
    this.jaggeryPowder,
    this.jaggeryPowder1,
    this.weight,
    this.price,
    this.id,
  }) {
    jaggeryPowder = jaggeryPowder ?? Rx(ImageConstant.imgImage69x69);
    jaggeryPowder1 = jaggeryPowder1 ?? Rx("Jaggery Powder");
    weight = weight ?? Rx("500 g");
    price = price ?? Rx("3");
    id = id ?? Rx("");
  }

  Rx<String>? jaggeryPowder;

  Rx<String>? jaggeryPowder1;

  Rx<String>? weight;

  Rx<String>? price;

  Rx<String>? id;
}
