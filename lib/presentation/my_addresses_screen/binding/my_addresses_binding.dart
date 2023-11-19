import '../controller/my_addresses_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MyAddressesScreen.
///
/// This class ensures that the MyAddressesController is created when the
/// MyAddressesScreen is first loaded.
class MyAddressesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyAddressesController());
  }
}
