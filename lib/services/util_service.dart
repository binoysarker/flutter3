import 'package:recipe.app/services/commonVariables.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:html/parser.dart' show parse;

class UtilService {
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

  static double getConvertedIndianAmount(int givenValue) {
    double value = givenValue.toDouble();
    int exchangeRate = int.parse(dotenv.env['INR_EXCHANGE_RATE'].toString());
    int smallestUnit = 100;
    value = (givenValue * exchangeRate * smallestUnit).toDouble();
    return value;
  }

  static String getCurrencySymble(String currencyCode){
    var symble = r'$';
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
