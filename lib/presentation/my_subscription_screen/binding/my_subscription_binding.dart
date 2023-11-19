import '../controller/my_subscription_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MySubscriptionScreen.
///
/// This class ensures that the MySubscriptionController is created when the
/// MySubscriptionScreen is first loaded.
class MySubscriptionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MySubscriptionController());
  }
}
