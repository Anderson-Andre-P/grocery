import 'package:anderson_s_application3/presentation/splash_screen/splash_screen.dart';
import 'package:anderson_s_application3/presentation/splash_screen/binding/splash_binding.dart';
import 'package:anderson_s_application3/presentation/login_with_email_id_screen/login_with_email_id_screen.dart';
import 'package:anderson_s_application3/presentation/login_with_email_id_screen/binding/login_with_email_id_binding.dart';
import 'package:anderson_s_application3/presentation/register_screen/register_screen.dart';
import 'package:anderson_s_application3/presentation/register_screen/binding/register_binding.dart';
import 'package:anderson_s_application3/presentation/home_screen_container_screen/home_screen_container_screen.dart';
import 'package:anderson_s_application3/presentation/home_screen_container_screen/binding/home_screen_container_binding.dart';
import 'package:anderson_s_application3/presentation/explore_screen/explore_screen.dart';
import 'package:anderson_s_application3/presentation/explore_screen/binding/explore_binding.dart';
import 'package:anderson_s_application3/presentation/fruits_screen/fruits_screen.dart';
import 'package:anderson_s_application3/presentation/fruits_screen/binding/fruits_binding.dart';
import 'package:anderson_s_application3/presentation/details_screen/details_screen.dart';
import 'package:anderson_s_application3/presentation/details_screen/binding/details_binding.dart';
import 'package:anderson_s_application3/presentation/my_subscription_screen/my_subscription_screen.dart';
import 'package:anderson_s_application3/presentation/my_subscription_screen/binding/my_subscription_binding.dart';
import 'package:anderson_s_application3/presentation/my_cart_screen/my_cart_screen.dart';
import 'package:anderson_s_application3/presentation/my_cart_screen/binding/my_cart_binding.dart';
import 'package:anderson_s_application3/presentation/payment_tab_container_screen/payment_tab_container_screen.dart';
import 'package:anderson_s_application3/presentation/payment_tab_container_screen/binding/payment_tab_container_binding.dart';
import 'package:anderson_s_application3/presentation/user_screen/user_screen.dart';
import 'package:anderson_s_application3/presentation/user_screen/binding/user_binding.dart';
import 'package:anderson_s_application3/presentation/my_addresses_screen/my_addresses_screen.dart';
import 'package:anderson_s_application3/presentation/my_addresses_screen/binding/my_addresses_binding.dart';
import 'package:anderson_s_application3/presentation/my_wallet_screen/my_wallet_screen.dart';
import 'package:anderson_s_application3/presentation/my_wallet_screen/binding/my_wallet_binding.dart';
import 'package:anderson_s_application3/presentation/my_orders_screen/my_orders_screen.dart';
import 'package:anderson_s_application3/presentation/my_orders_screen/binding/my_orders_binding.dart';
import 'package:anderson_s_application3/presentation/faq_screen/faq_screen.dart';
import 'package:anderson_s_application3/presentation/faq_screen/binding/faq_binding.dart';
import 'package:anderson_s_application3/presentation/contact_us_screen/contact_us_screen.dart';
import 'package:anderson_s_application3/presentation/contact_us_screen/binding/contact_us_binding.dart';
import 'package:anderson_s_application3/presentation/about_us_screen/about_us_screen.dart';
import 'package:anderson_s_application3/presentation/about_us_screen/binding/about_us_binding.dart';
import 'package:anderson_s_application3/presentation/privacy_policy_screen/privacy_policy_screen.dart';
import 'package:anderson_s_application3/presentation/privacy_policy_screen/binding/privacy_policy_binding.dart';
import 'package:anderson_s_application3/presentation/terms_of_services_screen/terms_of_services_screen.dart';
import 'package:anderson_s_application3/presentation/terms_of_services_screen/binding/terms_of_services_binding.dart';
import 'package:anderson_s_application3/presentation/add_new_address_screen/add_new_address_screen.dart';
import 'package:anderson_s_application3/presentation/add_new_address_screen/binding/add_new_address_binding.dart';
import 'package:anderson_s_application3/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:anderson_s_application3/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String loginWithEmailIdScreen = '/login_with_email_id_screen';

  static const String registerScreen = '/register_screen';

  static const String homeScreenPage = '/home_screen_page';

  static const String homeScreenContainerScreen =
      '/home_screen_container_screen';

  static const String exploreScreen = '/explore_screen';

  static const String fruitsScreen = '/fruits_screen';

  static const String detailsScreen = '/details_screen';

  static const String mySubscriptionScreen = '/my_subscription_screen';

  static const String myCartScreen = '/my_cart_screen';

  static const String paymentPage = '/payment_page';

  static const String paymentTabContainerScreen =
      '/payment_tab_container_screen';

  static const String userScreen = '/user_screen';

  static const String myAddressesScreen = '/my_addresses_screen';

  static const String myWalletScreen = '/my_wallet_screen';

  static const String myOrdersScreen = '/my_orders_screen';

  static const String faqScreen = '/faq_screen';

  static const String contactUsScreen = '/contact_us_screen';

  static const String aboutUsScreen = '/about_us_screen';

  static const String privacyPolicyScreen = '/privacy_policy_screen';

  static const String termsOfServicesScreen = '/terms_of_services_screen';

  static const String addNewAddressScreen = '/add_new_address_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: loginWithEmailIdScreen,
      page: () => LoginWithEmailIdScreen(),
      bindings: [
        LoginWithEmailIdBinding(),
      ],
    ),
    GetPage(
      name: registerScreen,
      page: () => RegisterScreen(),
      bindings: [
        RegisterBinding(),
      ],
    ),
    GetPage(
      name: homeScreenContainerScreen,
      page: () => HomeScreenContainerScreen(),
      bindings: [
        HomeScreenContainerBinding(),
      ],
    ),
    GetPage(
      name: exploreScreen,
      page: () => ExploreScreen(),
      bindings: [
        ExploreBinding(),
      ],
    ),
    GetPage(
      name: fruitsScreen,
      page: () => FruitsScreen(),
      bindings: [
        FruitsBinding(),
      ],
    ),
    GetPage(
      name: detailsScreen,
      page: () => DetailsScreen(),
      bindings: [
        DetailsBinding(),
      ],
    ),
    GetPage(
      name: mySubscriptionScreen,
      page: () => MySubscriptionScreen(),
      bindings: [
        MySubscriptionBinding(),
      ],
    ),
    GetPage(
      name: myCartScreen,
      page: () => MyCartScreen(),
      bindings: [
        MyCartBinding(),
      ],
    ),
    GetPage(
      name: paymentTabContainerScreen,
      page: () => PaymentTabContainerScreen(),
      bindings: [
        PaymentTabContainerBinding(),
      ],
    ),
    GetPage(
      name: userScreen,
      page: () => UserScreen(),
      bindings: [
        UserBinding(),
      ],
    ),
    GetPage(
      name: myAddressesScreen,
      page: () => MyAddressesScreen(),
      bindings: [
        MyAddressesBinding(),
      ],
    ),
    GetPage(
      name: myWalletScreen,
      page: () => MyWalletScreen(),
      bindings: [
        MyWalletBinding(),
      ],
    ),
    GetPage(
      name: myOrdersScreen,
      page: () => MyOrdersScreen(),
      bindings: [
        MyOrdersBinding(),
      ],
    ),
    GetPage(
      name: faqScreen,
      page: () => FaqScreen(),
      bindings: [
        FaqBinding(),
      ],
    ),
    GetPage(
      name: contactUsScreen,
      page: () => ContactUsScreen(),
      bindings: [
        ContactUsBinding(),
      ],
    ),
    GetPage(
      name: aboutUsScreen,
      page: () => AboutUsScreen(),
      bindings: [
        AboutUsBinding(),
      ],
    ),
    GetPage(
      name: privacyPolicyScreen,
      page: () => PrivacyPolicyScreen(),
      bindings: [
        PrivacyPolicyBinding(),
      ],
    ),
    GetPage(
      name: termsOfServicesScreen,
      page: () => TermsOfServicesScreen(),
      bindings: [
        TermsOfServicesBinding(),
      ],
    ),
    GetPage(
      name: addNewAddressScreen,
      page: () => AddNewAddressScreen(),
      bindings: [
        AddNewAddressBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    )
  ];
}
