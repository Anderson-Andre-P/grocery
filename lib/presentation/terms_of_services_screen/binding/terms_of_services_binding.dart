import '../controller/terms_of_services_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TermsOfServicesScreen.
///
/// This class ensures that the TermsOfServicesController is created when the
/// TermsOfServicesScreen is first loaded.
class TermsOfServicesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TermsOfServicesController());
  }
}
