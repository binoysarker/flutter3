import 'package:ecommerce_app/pages/forgetPasswordPage.dart';
import 'package:ecommerce_app/pages/login_page.dart';
import 'package:ecommerce_app/pages/my_account_page.dart';
import 'package:ecommerce_app/pages/orders_page.dart';
import 'package:ecommerce_app/pages/page_not_found.dart';
import 'package:ecommerce_app/pages/resetPasswordPage.dart';
import 'package:ecommerce_app/pages/rewards_page.dart';
import 'package:ecommerce_app/pages/store_page.dart';
import 'package:ecommerce_app/pages/tokenVarifyPage.dart';
import 'package:get/get.dart';
class RoutesClass {
  static List<GetPage> routes = [
    GetPage(name: '/', page: () => StorePage(), transition: Transition.rightToLeft),
    GetPage(name: '/home', page: () => StorePage(), transition: Transition.rightToLeft),
    GetPage(name: '/verify_token', page: () => TokenVerifyPage(), transition: Transition.leftToRight),
    GetPage(name: '/orders', page: () => OrdersPage(), transition: Transition.leftToRight),
    GetPage(name: '/login', page: () => LoginPage(),transition: Transition.leftToRight),
    GetPage(name: '/rewards', page: () => RewardsPage(),transition: Transition.leftToRight),
    GetPage(name: '/my_account', page: () => MyAccountPage(),transition: Transition.leftToRight),
    GetPage(name: '/forget_password', page: () => ForgetPasswordPage(),transition: Transition.leftToRight),
    GetPage(name: '/reset_password', page: () => ResetPasswordPage(),transition: Transition.leftToRight),
    GetPage(name: '/page_not_found', page: () => PageNotFound(),transition: Transition.leftToRight),
  ];
}