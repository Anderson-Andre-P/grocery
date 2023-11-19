import 'package:anderson_s_application3/core/app_export.dart';
import 'package:anderson_s_application3/presentation/terms_of_services_screen/models/terms_of_services_model.dart';

/// A controller class for the TermsOfServicesScreen.
///
/// This class manages the state of the TermsOfServicesScreen, including the
/// current termsOfServicesModelObj
class TermsOfServicesController extends GetxController {
  Rx<TermsOfServicesModel> termsOfServicesModelObj = TermsOfServicesModel().obs;
}
