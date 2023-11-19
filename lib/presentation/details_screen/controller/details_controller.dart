import 'package:anderson_s_application3/core/app_export.dart';
import 'package:anderson_s_application3/presentation/details_screen/models/details_model.dart';

/// A controller class for the DetailsScreen.
///
/// This class manages the state of the DetailsScreen, including the
/// current detailsModelObj
class DetailsController extends GetxController {
  Rx<DetailsModel> detailsModelObj = DetailsModel().obs;
}
