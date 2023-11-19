import '../../../core/app_export.dart';
import 'categories_item_model.dart';
import 'featureditems_item_model.dart';
import 'dealsoftheweek_item_model.dart';
import 'frameten_item_model.dart';

/// This class defines the variables used in the [home_screen_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeScreenModel {
  Rx<List<CategoriesItemModel>> categoriesItemList = Rx([
    CategoriesItemModel(
        groecries: ImageConstant.imgImage65x75.obs, name: "Groecries".obs),
    CategoriesItemModel(
        groecries: ImageConstant.imgImage1.obs, name: "Vegetables".obs),
    CategoriesItemModel(
        groecries: ImageConstant.imgImage2.obs, name: "Fruits".obs),
    CategoriesItemModel(
        groecries: ImageConstant.imgImage3.obs, name: "Beverages".obs)
  ]);

  Rx<List<FeatureditemsItemModel>> featureditemsItemList = Rx([
    FeatureditemsItemModel(
        fortunerice: ImageConstant.imgImage92x86.obs,
        fortuneRice: "Fortune rice".obs,
        price: "3/kg".obs,
        thirtySeven: "37%".obs,
        off: "off".obs),
    FeatureditemsItemModel(
        fortunerice: ImageConstant.imgImage4.obs,
        fortuneRice: "Fresh Avocado".obs,
        price: "3/kg".obs,
        thirtySeven: "37%".obs,
        off: "off".obs),
    FeatureditemsItemModel(
        fortunerice: ImageConstant.imgImage5.obs,
        fortuneRice: "Organic Tomatoes".obs,
        price: "3/kg".obs,
        thirtySeven: "37%".obs,
        off: "off".obs)
  ]);

  Rx<List<DealsoftheweekItemModel>> dealsoftheweekItemList = Rx([
    DealsoftheweekItemModel(
        softdrinks: ImageConstant.imgImage81x92.obs,
        softDrinks: "Soft drinks".obs,
        offer: "Upto 40% off".obs),
    DealsoftheweekItemModel(
        softdrinks: ImageConstant.imgImage6.obs,
        softDrinks: "Tea".obs,
        offer: "Upto 30% off".obs),
    DealsoftheweekItemModel(
        softdrinks: ImageConstant.imgImage7.obs,
        softDrinks: "Bath".obs,
        offer: "Min 20% of".obs)
  ]);

  Rx<List<FrametenItemModel>> frametenItemList = Rx([
    FrametenItemModel(
        image: ImageConstant.imgImage84x126.obs,
        granolaPremium: "Granola \nPremium Almond ".obs,
        price: "22.00".obs,
        weight: "1 kg".obs),
    FrametenItemModel(
        image: ImageConstant.imgImage8.obs,
        granolaPremium: "SFT kiwi slice \n(Dried)".obs,
        price: "4.00".obs,
        weight: "3 pcs.".obs),
    FrametenItemModel(
        image: ImageConstant.imgImage9.obs,
        granolaPremium: "SFT kiwi slice \n(Dried)".obs,
        price: "5.00".obs,
        weight: "1 kg".obs)
  ]);
}
