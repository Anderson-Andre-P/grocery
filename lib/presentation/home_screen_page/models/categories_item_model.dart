import '../../../core/app_export.dart';

/// This class is used in the [categories_item_widget] screen.
class CategoriesItemModel {
  CategoriesItemModel({
    this.groecries,
    this.name,
    this.id,
  }) {
    groecries = groecries ?? Rx(ImageConstant.imgImage65x75);
    name = name ?? Rx("Groecries");
    id = id ?? Rx("");
  }

  Rx<String>? groecries;

  Rx<String>? name;

  Rx<String>? id;
}
