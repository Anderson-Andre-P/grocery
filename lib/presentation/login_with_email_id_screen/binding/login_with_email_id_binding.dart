import '../controller/login_with_email_id_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LoginWithEmailIdScreen.
///
/// This class ensures that the LoginWithEmailIdController is created when the
/// LoginWithEmailIdScreen is first loaded.
class LoginWithEmailIdBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginWithEmailIdController());
  }
}
