import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:recipe.app/controllers/orderController.dart';
import 'package:get/get.dart';
import 'package:recipe.app/controllers/userController.dart';
import 'package:recipe.app/services/util_service.dart';

import '../graphqlSection/vendureSchema.graphql.dart';

class PaymentServices{
  static late Razorpay razorpay;
  static OrderController orderController = Get.find<OrderController>();
  static UserController userController = Get.find<UserController>();
  static void initializeRazorPay(){
    //  razorpay
    razorpay = Razorpay();
    razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, handlePaymentSuccess);
    razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, handlePaymentError);
    razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, handleExternalWallet);
  }


  static void startRazorPay() async {
    var options = {
      'key': dotenv.env['RAZORPAY_KEY'],
      'amount': orderController.shippingAddressOrder.value!.totalWithTax,
      'order_id': orderController.createOrderResponse.value!.id,
      'currency': Enum$CurrencyCode.INR.name,
      'name':'Company Name',
      'description':
      orderController.shippingAddressOrder.value!.lines.isNotEmpty
          ? 'Multiple Items'
          : orderController
          .shippingAddressOrder.value!.lines.first.productVariant.name,
      'retry': {'enabled': true, 'max_count': 1},
      'send_sms_hash': true,
      'prefill': {
        'contact':
        '${orderController.shippingAddressOrder.value!.shippingAddress!.phoneNumber}',
        'email': userController.currentAuthenticatedUser.value!.emailAddress,
        'name': orderController.shippingAddressOrder.value!.shippingAddress!.fullName,
      },
      'external': {
        'wallets': ['paytm']
      }
    };

    try {
      razorpay.open(options);
    } catch (e) {
      print('Error: $e');
    }
  }

  static void handlePaymentSuccess(PaymentSuccessResponse response) {
    print(
        'Success Response: ${response.orderId},${response.paymentId},${response.signature}');
    PaymentServices.orderController.paymentSuccessResponse.value = response;
    orderController.verifyPayment();
  }

  static void handlePaymentError(PaymentFailureResponse response) {
    print('Error Response: ${response.message}');
    Get.snackbar('', '${response.message}',backgroundColor: Colors.red);
    //  Payment Failed
    // UtilService.sendSms('647b0268d6fc056087309262', number, smsDeliveryType, orderId, paymentValue)
  }

  static void handleExternalWallet(ExternalWalletResponse response) {
    print('External SDK Response: ${response.walletName}');
  }
}