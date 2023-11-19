import '../controller/fruits_controller.dart';
import 'package:get/get.dart';

/// A binding class for the FruitsScreen.
///
/// This class ensures that the FruitsController is created when the
/// FruitsScreen is first loaded.
class FruitsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FruitsController());
  }
}
