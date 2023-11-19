import '../../../core/app_export.dart';
import 'frame_item_model.dart';

/// This class defines the variables used in the [details_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class DetailsModel {
  Rx<List<FrameItemModel>> frameItemList = Rx([
    FrameItemModel(
        pinapple: ImageConstant.imgImage85x84.obs,
        pinapple1: ImageConstant.imgCardOrangeA200.obs,
        pinapple2: "Pinapple".obs),
    FrameItemModel(
        pinapple: ImageConstant.imgImage23.obs,
        pinapple1: ImageConstant.imgCardRedA200.obs,
        pinapple2: "Strawberry".obs),
    FrameItemModel(
        pinapple: ImageConstant.imgFloatingIcon.obs,
        pinapple1: ImageConstant.imgCardLime60001.obs,
        pinapple2: "Grapes".obs)
  ]);
}
