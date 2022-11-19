import 'package:recipe.app/pages/cartDetailPage.dart';
import 'package:recipe.app/pages/categoryDetailPage.dart';
import 'package:recipe.app/pages/checkout_page.dart';
import 'package:recipe.app/pages/forgetPasswordPage.dart';
import 'package:recipe.app/pages/login_page.dart';
import 'package:recipe.app/pages/my_account_page.dart';
import 'package:recipe.app/pages/orders_page.dart';
import 'package:recipe.app/pages/page_not_found.dart';
import 'package:recipe.app/pages/productDetailPage.dart';
import 'package:recipe.app/pages/register_success_page.dart';
import 'package:recipe.app/pages/resetPasswordPage.dart';
import 'package:recipe.app/pages/rewards_page.dart';
import 'package:recipe.app/pages/store_page.dart';
import 'package:recipe.app/pages/subCategoryDetailPage.dart';
import 'package:recipe.app/pages/tokenVarifyPage.dart';
import 'package:get/get.dart';
import 'package:recipe.app/pages/verifyOTPPage.dart';
class RoutesClass {
  static List<GetPage> routes = [
    GetPage(name: '/', page: () => StorePage(), transition: Transition.fade),
    GetPage(name: '/home', page: () => StorePage(), transition: Transition.fade),
    GetPage(name: '/verify_token', page: () => TokenVerifyPage(), transition: Transition.fade),
    GetPage(name: '/orders', page: () => OrdersPage(), transition: Transition.fade),
    GetPage(name: '/login', page: () => LoginPage(),transition: Transition.fade),
    GetPage(name: '/register_success', page: () => RegisterSuccessPage(),transition: Transition.fade),
    GetPage(name: '/rewards', page: () => RewardsPage(),transition: Transition.fade),
    GetPage(name: '/my_account', page: () => MyAccountPage(),transition: Transition.fade),
    GetPage(name: '/forget_password', page: () => ForgetPasswordPage(),transition: Transition.fade),
    GetPage(name: '/reset_password', page: () => ResetPasswordPage(),transition: Transition.fade),
    GetPage(name: '/verify_otp', page: () => VerifyOTPPage(),transition: Transition.fade),
    GetPage(name: '/product_detail', page: () => ProductDetailPage(),transition: Transition.fade),
    GetPage(name: '/category_detail', page: () => CategoryDetailPage(),transition: Transition.fade),
    GetPage(name: '/sub_category_detail', page: () => SubCategoryDetailPage(),transition: Transition.fade),
    GetPage(name: '/cart_detail', page: () => CartDetailPage(),transition: Transition.fade),
    GetPage(name: '/checkout', page: () => CheckoutPage(),transition: Transition.fade),
    GetPage(name: '/page_not_found', page: () => PageNotFound(),transition: Transition.fade),
  ];
}