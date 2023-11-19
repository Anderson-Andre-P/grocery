import '../../../core/app_export.dart';

/// This class is used in the [framenine_item_widget] screen.
class FramenineItemModel {
  FramenineItemModel({
    this.aMATEmilk,
    this.aMATEMilk,
    this.ltrCounter,
    this.price,
    this.id,
  }) {
    aMATEmilk = aMATEmilk ?? Rx(ImageConstant.imgImage57x46);
    aMATEMilk = aMATEMilk ?? Rx("A2MATE milk");
    ltrCounter = ltrCounter ?? Rx("0.5 ltr.");
    price = price ?? Rx("2");
    id = id ?? Rx("");
  }

  Rx<String>? aMATEmilk;

  Rx<String>? aMATEMilk;

  Rx<String>? ltrCounter;

  Rx<String>? price;

  Rx<String>? id;
}
