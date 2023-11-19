import '../../../core/app_export.dart';

/// This class is used in the [framefive_item_widget] screen.
class FramefiveItemModel {
  FramefiveItemModel({
    this.tomato,
    this.tomato1,
    this.weight,
    this.price,
    this.id,
  }) {
    tomato = tomato ?? Rx(ImageConstant.imgImage55x76);
    tomato1 = tomato1 ?? Rx("Tomato");
    weight = weight ?? Rx("1 kg");
    price = price ?? Rx("2");
    id = id ?? Rx("");
  }

  Rx<String>? tomato;

  Rx<String>? tomato1;

  Rx<String>? weight;

  Rx<String>? price;

  Rx<String>? id;
}
