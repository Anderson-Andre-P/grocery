import '../../../core/app_export.dart';

/// This class is used in the [frame_item_widget] screen.
class FrameItemModel {
  FrameItemModel({
    this.pinapple,
    this.pinapple1,
    this.pinapple2,
    this.id,
  }) {
    pinapple = pinapple ?? Rx(ImageConstant.imgImage85x84);
    pinapple1 = pinapple1 ?? Rx(ImageConstant.imgCardOrangeA200);
    pinapple2 = pinapple2 ?? Rx("Pinapple");
    id = id ?? Rx("");
  }

  Rx<String>? pinapple;

  Rx<String>? pinapple1;

  Rx<String>? pinapple2;

  Rx<String>? id;
}
