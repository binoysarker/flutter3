import 'dart:math';

import 'package:get/get.dart';
import 'package:recipe.app/controllers/cartController.dart';
import 'package:recipe.app/services/commonVariables.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:html/parser.dart' show parse;
import 'package:http/http.dart' as http;
import 'package:recipe.app/themes.dart';

import '../graphqlSection/orders.graphql.dart';
import '../graphqlSection/products.graphql.dart';
import '../graphqlSection/sellers.graphql.dart';

class UtilService {
  static final CartController cartController = Get.find<CartController>();
  static final UtilService _utilService = UtilService._internal();

  factory UtilService() => _utilService;
  late String _apiBaseUrl;
  late String appName;

  String get apiBaseUrl => _apiBaseUrl;

  set apiBaseUrl(String value) {
    _apiBaseUrl = value;
  }

  late String _shopApiUrl;
  static Map<String, String> customHeader = {"Content-Type": "application/json"};

  String get shopApiUrl => _shopApiUrl;

  set shopApiUrl(String value) {
    _shopApiUrl = value;
  }
  UtilService._internal() {
    print('${dotenv.env['API_BASE_URL']}');
    _apiBaseUrl = dotenv.env['API_BASE_URL'] as String;
    _shopApiUrl = dotenv.env['SHOP_API_URL'] as String;
    appName = dotenv.env['App_Name'] as String;
  }


  static String formatPriceValue(int price){

    return (price.abs() / 100).toStringAsFixed(2);
  }

  static void addItemToCart(dynamic element, String controllerType) {
    if(controllerType == ControllerTypeNames.featuredItemList.name){
      var item = element as Query$GetTopSellers$search$items;
      cartController.addItemToCart(item.productId, 1);
    }else {
    var item = element.variants.firstWhereOrNull((item) => item.id.isNotEmpty);
    cartController.addItemToCart(item!.id, 1);
    }
  }
  static String formatPriceValueForCouponCode(List<Query$GetOrderForCheckout$activeOrder$lines> lines,String currencyCode,String code,int price){
    var priceString = '';
    print(code);
    if(code == 'order_percentage_discount'){
      var sumOfLines = 0;
      for(var i in lines){
        sumOfLines += i.linePriceWithTax;
      }

      priceString = formatPriceValue((sumOfLines / 100 * price).toInt());
    }else {
      priceString = '${formatPriceValue(price)}${(price / 100).toStringAsFixed(2)}';
    }
    return priceString;
  }

  static double getConvertedIndianAmount(int givenValue) {
    double value = givenValue.toDouble();
    int exchangeRate = int.parse(dotenv.env['INR_EXCHANGE_RATE'].toString());
    int smallestUnit = 100;
    value = (givenValue * exchangeRate * smallestUnit).toDouble();
    return value;
  }


  static sendSms(String message,String number) async{
    var smsQuery = {
      'userid':'1671',
      'password':'trP2V3o5bhZTK9JM',
      'sender':'SMSKAI',
      'to': number,
      'message': message,
      'reqid': '1',
      'format':'{json|text}',
      'route_id':'3'
    };

    try{

      final url = Uri.https(dotenv.env['SMS_URL'].toString(), 'API/WebSMS/Http/v1.0a/index.php',smsQuery);
      final res = await http.get(url);
      print('${res.body}');
    }on Exception catch(e){
      print(e.toString());
    }
  }

  static String getCurrencySymble(String currencyCode){
    var symble = r'₹';
    if(currencyCode == CurrencyCodeEnum.USD.name){
      symble = r'$';
    }
    if(currencyCode == CurrencyCodeEnum.INR.name){
      symble = r'₹';
    }
    if(currencyCode == CurrencyCodeEnum.BDT.name){
      symble = r'৳';
    }
    return symble;
  }
  static String parseHtmlData(String text){
    var document = parse(text);
    return parse(document.body!.text).documentElement!.text;
  }
  static formateText(String text){
    return text.length > 20 ? '${text.substring(0, 20)}...' : text;
  }
  static createSnakeBar(
      {text = 'some message', required BuildContext context}) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(text)));
  }

  static Future<void> showMyDialog(
      {required BuildContext context, required String message}) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Alert'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('$message'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
