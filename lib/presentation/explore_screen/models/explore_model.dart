import '../../../core/app_export.dart';
import 'framethree_item_model.dart';
import 'framefive_item_model.dart';
import 'frameseven_item_model.dart';
import 'framenine_item_model.dart';
import 'frameeleven_item_model.dart';

/// This class defines the variables used in the [explore_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ExploreModel {
  Rx<List<FramethreeItemModel>> framethreeItemList = Rx([
    FramethreeItemModel(
        jaggeryPowder: ImageConstant.imgImage69x69.obs,
        jaggeryPowder1: "Jaggery Powder".obs,
        weight: "500 g".obs,
        price: "3".obs)
  ]);

  Rx<List<FramefiveItemModel>> framefiveItemList = Rx([
    FramefiveItemModel(
        tomato: ImageConstant.imgImage55x76.obs,
        tomato1: "Tomato".obs,
        weight: "1 kg".obs,
        price: "2".obs),
    FramefiveItemModel(
        tomato: ImageConstant.imgImage13.obs,
        tomato1: "Potato".obs,
        weight: "1 kg".obs,
        price: "1".obs),
    FramefiveItemModel(
        tomato: ImageConstant.imgImage14.obs,
        tomato1: "Potato".obs,
        weight: "1 kg".obs,
        price: "2".obs),
    FramefiveItemModel(
        tomato: ImageConstant.imgImage15.obs,
        tomato1: "Lemon".obs,
        weight: "1 kg".obs,
        price: "2".obs)
  ]);

  Rx<List<FramesevenItemModel>> framesevenItemList = Rx([
    FramesevenItemModel(
        strawberry: ImageConstant.imgImage52x71.obs,
        strawberry1: "Strawberry".obs,
        weight: "1 kg".obs,
        price: "4".obs),
    FramesevenItemModel(
        strawberry: ImageConstant.imgImage16.obs,
        strawberry1: "Banana".obs,
        weight: "1 kg".obs,
        price: "2".obs),
    FramesevenItemModel(
        strawberry: ImageConstant.imgImage17.obs,
        strawberry1: "Kiwifruit".obs,
        weight: "1 kg".obs,
        price: "4".obs),
    FramesevenItemModel(
        strawberry: ImageConstant.imgImage18.obs,
        strawberry1: "Orange".obs,
        weight: "1 kg".obs,
        price: "2".obs)
  ]);

  Rx<List<FramenineItemModel>> framenineItemList = Rx([
    FramenineItemModel(
        aMATEmilk: ImageConstant.imgImage57x46.obs,
        aMATEMilk: "A2MATE milk".obs,
        ltrCounter: "0.5 ltr.".obs,
        price: "2".obs),
    FramenineItemModel(aMATEmilk: ImageConstant.imgImage19.obs),
    FramenineItemModel(aMATEmilk: ImageConstant.imgImage20.obs),
    FramenineItemModel(aMATEmilk: ImageConstant.imgImage21.obs)
  ]);

  Rx<List<FrameelevenItemModel>> frameelevenItemList = Rx([
    FrameelevenItemModel(
        parleRusk: ImageConstant.imgImage50x62.obs,
        parleRusk1: "Parle Rusk".obs,
        weight: "500 g".obs,
        price: "3".obs),
    FrameelevenItemModel(
        parleRusk: ImageConstant.imgImage91.obs,
        parleRusk1: "Choco muffin".obs,
        weight: "6 pcs.".obs,
        price: "4".obs),
    FrameelevenItemModel(
        parleRusk: ImageConstant.imgImage89.obs,
        parleRusk1: "Harshey’s Bar".obs,
        weight: "43 g".obs,
        price: "2".obs),
    FrameelevenItemModel(
        parleRusk: ImageConstant.imgImage22.obs,
        parleRusk1: "Bread Crums".obs,
        weight: "500 g".obs,
        price: "5".obs)
  ]);
}
