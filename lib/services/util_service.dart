import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:html/parser.dart' show parse;
import 'package:http/http.dart' as http;
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:recipe.app/controllers/cartController.dart';
import 'package:recipe.app/controllers/orderController.dart';
import 'package:recipe.app/services/commonVariables.dart';

import '../graphqlSection/collections.graphql.dart';
import '../graphqlSection/orders.graphql.dart';
import '../graphqlSection/products.graphql.dart';

class UtilService {
  static final CartController cartController = Get.find<CartController>();
  static final OrderController orderController = Get.find<OrderController>();
  static final UtilService _utilService = UtilService._internal();

  factory UtilService() => _utilService;
  late String _apiBaseUrl;
  late String appName;

  String get apiBaseUrl => _apiBaseUrl;

  set apiBaseUrl(String value) {
    _apiBaseUrl = value;
  }

  static Future<void> toggleScreenshotRestriction(bool status) async {
    // Toggle the screen shot restriction status.
    if (status) {
      await SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    } else {
      await SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    }
  }

  late String _shopApiUrl;
  static Map<String, String> customHeader = {
    "Content-Type": "application/json"
  };

  String get shopApiUrl => _shopApiUrl;

  set shopApiUrl(String value) {
    _shopApiUrl = value;
  }

  UtilService._internal() {
    debugPrint('${dotenv.env['API_BASE_URL']}');
    _apiBaseUrl = dotenv.env['API_BASE_URL'] as String;
    _shopApiUrl = dotenv.env['SHOP_API_URL'] as String;
    appName = dotenv.env['APP_NAME'] as String;
  }

  static String formatPriceValue(int price) {
    return (price.abs() / 100).toStringAsFixed(2);
  }

  static void addItemToCart(dynamic element, String controllerType) {
    debugPrint('select item $element controller type $controllerType');
    if (controllerType == ControllerTypeNames.productVariantItems.name) {
      var item = element as Query$GetAllProducts$products$items;
      var selectedVariant =
          item.variants.firstWhereOrNull((item) => item.id.isNotEmpty);
      cartController.addItemToCart(selectedVariant!.id, 1);
    }
    if (controllerType ==
        ControllerTypeNames.productChildrenVariantItems.name) {
      var item = element
          as Query$GetCollectionsByIdOrSlug$collection$productVariants$items;
      // item.variants.firstWhereOrNull((item) => item.id.isNotEmpty);
      cartController.addItemToCart(item.id, 1);
    }
  }

  static String formatPriceValueForCouponCode(
      List<Query$GetOrderForCheckout$activeOrder$lines> lines,
      String currencyCode,
      String code,
      int price) {
    var priceString = '';
    debugPrint(code);
    if (code == 'order_percentage_discount') {
      var sumOfLines = 0;
      for (var i in lines) {
        sumOfLines += i.linePriceWithTax;
      }

      priceString = formatPriceValue((sumOfLines / 100 * price).toInt());
    } else {
      priceString =
          '${formatPriceValue(price)}${(price / 100).toStringAsFixed(2)}';
    }
    return priceString;
  }

  static String? getBannerAdUnitId() {
    if (defaultTargetPlatform == TargetPlatform.iOS) {
      return 'ca-app-pub-3940256099942544/2934735716';
    } else if (defaultTargetPlatform == TargetPlatform.android) {
      return 'ca-app-pub-3940256099942544/6300978111';
    }
    return null;
  }

  static String? getInterstitialAdUnitId() {
    if (defaultTargetPlatform == TargetPlatform.iOS) {
      return 'ca-app-pub-3940256099942544/4411468910';
    } else if (defaultTargetPlatform == TargetPlatform.android) {
      return 'ca-app-pub-3940256099942544/1033173712';
    }
    return null;
  }

  static String? getRewardBasedVideoAdUnitId() {
    if (defaultTargetPlatform == TargetPlatform.iOS) {
      return 'ca-app-pub-3940256099942544/1712485313';
    } else if (defaultTargetPlatform == TargetPlatform.android) {
      return 'ca-app-pub-3940256099942544/5224354917';
    }
    return null;
  }

  static double getConvertedIndianAmount(int givenValue) {
    double value = givenValue.toDouble();
    int exchangeRate = int.parse(dotenv.env['INR_EXCHANGE_RATE'].toString());
    int smallestUnit = 100;
    value = (givenValue * exchangeRate * smallestUnit).toDouble();
    return value;
  }

  static sendSms(
      String templateId,
      String number,
      SmsDeliveryType smsDeliveryType,
      String orderId,
      String paymentValue) async {
    var smsData = {
      "template_id": templateId,
      "sender": "KAIMSG",
      "mobiles": "+91$number",
    };
    initializeDateFormatting('en-IN', '');
    var currentTime = DateTime.now();
    var tomorrowTime = DateTime(
        currentTime.year, currentTime.month, currentTime.day + 1, 0, 0);
    String formattedTime =
        DateFormat('yyyy-MM-dd HH:mm', 'en-IN').format(tomorrowTime);
    var headerData = {
      'accept': 'application/json',
      'authkey': '395929AcYuel89696451b515P1',
      'content-type': 'application/json'
    };
    var isMorningDelivery = templateId == '64900e1ed6fc056a7b3a9c32';
    if (smsDeliveryType == SmsDeliveryType.morning_evening) {
      smsData['var1'] = orderId;
      smsData[isMorningDelivery ? 'var2' : 'VAR2'] = '$formattedTime';
    }
    if (smsDeliveryType == SmsDeliveryType.payment_failed) {
      smsData['var1'] = paymentValue;
      smsData['var2'] = orderId;
    }

    try {
      debugPrint('send sms detail ${smsData}');
      final url = Uri.https(dotenv.env['SMS_URL'].toString(), '/api/v5/flow/');
      final res =
          await http.post(url, headers: headerData, body: jsonEncode(smsData));
      debugPrint('send sms response ${res.body}');
    } on Exception catch (e) {
      debugPrint('send sms error ${e.toString()}');
    }
  }

  static String getCurrencySymble(String currencyCode) {
    var symble = r'₹';
    if (currencyCode == CurrencyCodeEnum.USD.name) {
      symble = r'$';
    }
    if (currencyCode == CurrencyCodeEnum.INR.name) {
      symble = r'₹';
    }
    if (currencyCode == CurrencyCodeEnum.BDT.name) {
      symble = r'৳';
    }
    return symble;
  }

  static String parseHtmlData(String? text) {
    if (text != null) {
      var document = parse(text);
      return parse(document.body!.text).documentElement!.text;
    } else {
      return '';
    }
  }

  static formateText(String text) {
    return text.length > 20 ? '${text.substring(0, 20)}...' : text;
  }

  static createSnakeBar(
      {text = 'some message', required BuildContext context}) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(text)));
  }
}
