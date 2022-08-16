import 'package:ecommerce_app/pages/forgetPasswordPage.dart';
import 'package:ecommerce_app/pages/login_page.dart';
import 'package:ecommerce_app/pages/my_account_page.dart';
import 'package:ecommerce_app/pages/orders_page.dart';
import 'package:ecommerce_app/pages/page_not_found.dart';
import 'package:ecommerce_app/pages/productDetailPage.dart';
import 'package:ecommerce_app/pages/resetPasswordPage.dart';
import 'package:ecommerce_app/pages/rewards_page.dart';
import 'package:ecommerce_app/pages/store_page.dart';
import 'package:ecommerce_app/pages/tokenVarifyPage.dart';
import 'package:get/get.dart';
class RoutesClass {
  static List<GetPage> routes = [
    GetPage(name: '/', page: () => StorePage(), transition: Transition.rightToLeftWithFade),
    GetPage(name: '/home', page: () => StorePage(), transition: Transition.rightToLeftWithFade),
    GetPage(name: '/verify_token', page: () => TokenVerifyPage(), transition: Transition.leftToRightWithFade),
    GetPage(name: '/orders', page: () => OrdersPage(), transition: Transition.leftToRightWithFade),
    GetPage(name: '/login', page: () => LoginPage(),transition: Transition.leftToRightWithFade),
    GetPage(name: '/rewards', page: () => RewardsPage(),transition: Transition.leftToRightWithFade),
    GetPage(name: '/my_account', page: () => MyAccountPage(),transition: Transition.leftToRightWithFade),
    GetPage(name: '/forget_password', page: () => ForgetPasswordPage(),transition: Transition.leftToRightWithFade),
    GetPage(name: '/reset_password', page: () => ResetPasswordPage(),transition: Transition.leftToRightWithFade),
    GetPage(name: '/product_detail/:slug', page: () => ProductDetailPage(),transition: Transition.leftToRightWithFade),
    GetPage(name: '/page_not_found', page: () => PageNotFound(),transition: Transition.leftToRightWithFade),
  ];
}