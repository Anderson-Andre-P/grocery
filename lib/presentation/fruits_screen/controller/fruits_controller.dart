import 'package:anderson_s_application3/core/app_export.dart';
import 'package:anderson_s_application3/presentation/fruits_screen/models/fruits_model.dart';

/// A controller class for the FruitsScreen.
///
/// This class manages the state of the FruitsScreen, including the
/// current fruitsModelObj
class FruitsController extends GetxController {
  Rx<FruitsModel> fruitsModelObj = FruitsModel().obs;
}
