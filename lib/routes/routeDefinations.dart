import 'package:ecommerce_app/pages/login_page.dart';
import 'package:ecommerce_app/pages/tokenVarifyPage.dart';
import 'package:flutter/material.dart';

import '../pages/my_account_page.dart';
import '../pages/orders_page.dart';
import '../pages/page_not_found.dart';
import '../pages/rewards_page.dart';
import '../pages/store_page.dart';

MaterialPageRoute generatedRoute(RouteSettings settings) {
  print('settings name ${settings.name}');
  final homeRoutePat = RegExp(r'\/*home$');
  final verifyRoutePat = RegExp(r'\/*verifyToken$');
  final orderRoutePat = RegExp(r'\/*orders$');
  final loginRoutePat = RegExp(r'\/*login');
  final rewardsRoutePat = RegExp(r'\/*rewards$');
  final myAccountRoutePat = RegExp(r'\/*my-account$');
  if (homeRoutePat.hasMatch('${settings.name}')) {
    return MaterialPageRoute(
      settings: settings,
      builder: (context) => StorePage(),
    );
  } else if (loginRoutePat.hasMatch('${settings.name}')) {
    return MaterialPageRoute(
      settings: settings,
      builder: (context) => LoginPage(),
    );
  }else if (verifyRoutePat.hasMatch('${settings.name}')) {
    return MaterialPageRoute(
      settings: settings,
      builder: (context) => TokenVerifyPage(),
    );
  } else if (orderRoutePat.hasMatch('${settings.name}')) {
    return MaterialPageRoute(
      settings: settings,
      builder: (context) => OrdersPage(),
    );
  } else if (rewardsRoutePat.hasMatch('${settings.name}')) {
    return MaterialPageRoute(
      settings: settings,
      builder: (context) => RewardsPage(),
    );
  } else if (myAccountRoutePat.hasMatch('${settings.name}')) {
    return MaterialPageRoute(
      settings: settings,
      builder: (context) => MyAccountPage(),
    );
  } else if (settings.name == '/') {
    return MaterialPageRoute(
      settings: settings,
      builder: (context) => StorePage(),
    );
  } else {
    return MaterialPageRoute(
      settings: settings,
      builder: (context) => PageNotFound(),
    );
  }
}
