import 'package:anderson_s_application3/core/app_export.dart';
import 'package:anderson_s_application3/presentation/explore_screen/models/explore_model.dart';

/// A controller class for the ExploreScreen.
///
/// This class manages the state of the ExploreScreen, including the
/// current exploreModelObj
class ExploreController extends GetxController {
  Rx<ExploreModel> exploreModelObj = ExploreModel().obs;
}
