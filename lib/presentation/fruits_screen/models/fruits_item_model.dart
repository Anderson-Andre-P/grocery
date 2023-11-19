import '../../../core/app_export.dart';

/// This class is used in the [fruits_item_widget] screen.
class FruitsItemModel {
  FruitsItemModel({
    this.icon,
    this.strawberry,
    this.strawberry1,
    this.kg,
    this.price,
    this.one,
    this.subscribe,
    this.button,
    this.id,
  }) {
    icon = icon ?? Rx(ImageConstant.imgIcon);
    strawberry = strawberry ?? Rx(ImageConstant.imgImage52x71);
    strawberry1 = strawberry1 ?? Rx("Strawberry");
    kg = kg ?? Rx("(1 kg)");
    price = price ?? Rx("4");
    one = one ?? Rx("1");
    subscribe = subscribe ?? Rx("Subscribe");
    button = button ?? Rx("Buy Once");
    id = id ?? Rx("");
  }

  Rx<String>? icon;

  Rx<String>? strawberry;

  Rx<String>? strawberry1;

  Rx<String>? kg;

  Rx<String>? price;

  Rx<String>? one;

  Rx<String>? subscribe;

  Rx<String>? button;

  Rx<String>? id;
}
