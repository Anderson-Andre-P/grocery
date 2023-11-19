import '../../../core/app_export.dart';

/// This class is used in the [frameseven_item_widget] screen.
class FramesevenItemModel {
  FramesevenItemModel({
    this.strawberry,
    this.strawberry1,
    this.weight,
    this.price,
    this.id,
  }) {
    strawberry = strawberry ?? Rx(ImageConstant.imgImage52x71);
    strawberry1 = strawberry1 ?? Rx("Strawberry");
    weight = weight ?? Rx("1 kg");
    price = price ?? Rx("4");
    id = id ?? Rx("");
  }

  Rx<String>? strawberry;

  Rx<String>? strawberry1;

  Rx<String>? weight;

  Rx<String>? price;

  Rx<String>? id;
}
