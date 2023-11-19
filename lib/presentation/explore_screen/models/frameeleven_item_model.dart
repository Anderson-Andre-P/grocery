import '../../../core/app_export.dart';

/// This class is used in the [frameeleven_item_widget] screen.
class FrameelevenItemModel {
  FrameelevenItemModel({
    this.parleRusk,
    this.parleRusk1,
    this.weight,
    this.price,
    this.id,
  }) {
    parleRusk = parleRusk ?? Rx(ImageConstant.imgImage50x62);
    parleRusk1 = parleRusk1 ?? Rx("Parle Rusk");
    weight = weight ?? Rx("500 g");
    price = price ?? Rx("3");
    id = id ?? Rx("");
  }

  Rx<String>? parleRusk;

  Rx<String>? parleRusk1;

  Rx<String>? weight;

  Rx<String>? price;

  Rx<String>? id;
}
