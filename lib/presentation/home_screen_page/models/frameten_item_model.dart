import '../../../core/app_export.dart';

/// This class is used in the [frameten_item_widget] screen.
class FrametenItemModel {
  FrametenItemModel({
    this.image,
    this.granolaPremium,
    this.price,
    this.weight,
    this.id,
  }) {
    image = image ?? Rx(ImageConstant.imgImage84x126);
    granolaPremium = granolaPremium ?? Rx("Granola \nPremium Almond ");
    price = price ?? Rx("22.00");
    weight = weight ?? Rx("1 kg");
    id = id ?? Rx("");
  }

  Rx<String>? image;

  Rx<String>? granolaPremium;

  Rx<String>? price;

  Rx<String>? weight;

  Rx<String>? id;
}
