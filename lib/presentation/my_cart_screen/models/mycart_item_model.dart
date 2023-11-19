import '../../../core/app_export.dart';

/// This class is used in the [mycart_item_widget] screen.
class MycartItemModel {
  MycartItemModel({
    this.shimlaApple,
    this.shimlaApple1,
    this.weight,
    this.price,
    this.oldPrice,
    this.one,
    this.id,
  }) {
    shimlaApple = shimlaApple ?? Rx(ImageConstant.imgImage38x57);
    shimlaApple1 = shimlaApple1 ?? Rx("Shimla Apple");
    weight = weight ?? Rx("1 kg");
    price = price ?? Rx("2");
    oldPrice = oldPrice ?? Rx("3.25");
    one = one ?? Rx("1");
    id = id ?? Rx("");
  }

  Rx<String>? shimlaApple;

  Rx<String>? shimlaApple1;

  Rx<String>? weight;

  Rx<String>? price;

  Rx<String>? oldPrice;

  Rx<String>? one;

  Rx<String>? id;
}
