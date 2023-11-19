import 'package:anderson_s_application3/core/app_export.dart';
import 'package:anderson_s_application3/presentation/payment_page/models/payment_model.dart';

/// A controller class for the PaymentPage.
///
/// This class manages the state of the PaymentPage, including the
/// current paymentModelObj
class PaymentController extends GetxController {
  PaymentController(this.paymentModelObj);

  Rx<PaymentModel> paymentModelObj;
}
