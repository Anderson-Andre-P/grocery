import 'package:anderson_s_application3/core/app_export.dart';
import 'package:anderson_s_application3/presentation/my_addresses_screen/models/my_addresses_model.dart';

/// A controller class for the MyAddressesScreen.
///
/// This class manages the state of the MyAddressesScreen, including the
/// current myAddressesModelObj
class MyAddressesController extends GetxController {
  Rx<MyAddressesModel> myAddressesModelObj = MyAddressesModel().obs;
}
