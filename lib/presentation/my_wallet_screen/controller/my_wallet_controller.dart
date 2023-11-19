import 'package:anderson_s_application3/core/app_export.dart';
import 'package:anderson_s_application3/presentation/my_wallet_screen/models/my_wallet_model.dart';

/// A controller class for the MyWalletScreen.
///
/// This class manages the state of the MyWalletScreen, including the
/// current myWalletModelObj
class MyWalletController extends GetxController {
  Rx<MyWalletModel> myWalletModelObj = MyWalletModel().obs;
}
