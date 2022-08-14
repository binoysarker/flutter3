import 'package:ecommerce_app/pages/login_page.dart';
import 'package:ecommerce_app/pages/my_account_page.dart';
import 'package:ecommerce_app/pages/orders_page.dart';
import 'package:ecommerce_app/pages/page_not_found.dart';
import 'package:ecommerce_app/pages/rewards_page.dart';
import 'package:ecommerce_app/pages/store_page.dart';
import 'package:ecommerce_app/pages/tokenVarifyPage.dart';
import 'package:get/get.dart';
class RoutesClass {
  static List<GetPage> routes = [
    GetPage(name: '/', page: () => StorePage()),
    GetPage(name: '/home', page: () => StorePage()),
    GetPage(name: '/verify_token', page: () => TokenVerifyPage()),
    GetPage(name: '/orders', page: () => OrdersPage()),
    GetPage(name: '/login', page: () => LoginPage()),
    GetPage(name: '/rewards', page: () => RewardsPage()),
    GetPage(name: '/my_account', page: () => MyAccountPage()),
    GetPage(name: '/page_not_found', page: () => PageNotFound()),
  ];
}