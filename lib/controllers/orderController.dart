// ignore_for_file: unnecessary_cast

import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:http/http.dart' as http;
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:recipe.app/allGlobalKeys.dart';
import 'package:recipe.app/controllers/userController.dart';
import 'package:recipe.app/graphqlSection/collections.graphql.dart';
import 'package:recipe.app/graphqlSection/orders.graphql.dart';
import 'package:recipe.app/models/createOrderResponseModel.dart';
import 'package:recipe.app/pages/store_page.dart';
import 'package:recipe.app/services/commonVariables.dart';
import 'package:recipe.app/services/graphql_service.dart';
import 'package:recipe.app/services/paymentServices.dart';
import 'package:recipe.app/services/util_service.dart';

import '../graphqlSection/vendureSchema.graphql.dart';

class OrderController extends GetxController {
  GraphqlService graphqlService = GraphqlService();
  TextEditingController fullName = TextEditingController();
  TextEditingController streetLine1 = TextEditingController();
  TextEditingController streetLine2 = TextEditingController();
  TextEditingController city = TextEditingController();

  // TextEditingController postalCode = TextEditingController();
  TextEditingController country = TextEditingController();
  // TextEditingController phoneNumber = TextEditingController();
  TextEditingController couponCode = TextEditingController();
  TextEditingController otherInstructions = TextEditingController();
  UserController userController = Get.find<UserController>();
  var currentStep = 0.obs;
  var selectedPaymentOption = 'offline'.obs;
  var selectedPostalCode = '625018'.obs;
  var otherInstructionResponse = (null as Mutation$SetOtherInstruction$otherInstructions?).obs;
  var makeDefaultShippingAddress = false.obs;
  var paymentOptionDropdownItems =
      [PaymentOptionType.offline.name, PaymentOptionType.online.name].obs;

  var activeOrderResponse = (null as Query$GetActiveOrder$activeOrder?).obs;
  var isLoading = false.obs;
  var isLoading2 = false.obs;
  var eligiblePaymentIsLoading = false.obs;
  var availableCountryList =
      <Query$GetAvailableCountries$availableCountries>[].obs;
  var currentlySelectedCountryCode = 'IN'.obs;
  var currentlySelectedShippingMethod =
      (null as Query$GetEligibleShippingMethods$eligibleShippingMethods?).obs;
  var eligibleShippingMethodList = <Query$GetEligibleShippingMethods$eligibleShippingMethods>[].obs;
  var shippingMethodSelected = '1'.obs;
  var clientToken = ''.obs;
  var currencyCode = ''.obs;
  var hasCouponCode = false.obs;

  // ignore: unnecessary_cast
  var shippingAddressOrder =
      (null as Mutation$SetShippingAddress$setOrderShippingAddress$$Order?).obs;
  var currentNonce = ''.obs;

  // ignore: unnecessary_cast
  var activeOrderForCheckout =
      (null as Query$GetOrderForCheckout$activeOrder?).obs;
  var createOrderResponse = (null as CreateOrderResponseModel?).obs;
  var paymentSuccessResponse = (null as PaymentSuccessResponse?).obs;
  var eligiblePaymentMethods =
      <Query$GetEligiblePaymentMethods$eligiblePaymentMethods>[].obs;
  var addPaymentToOrderResponse = {}.obs;
  var getOrderByCodeResponse = (null as Query$GetOrderByCode$orderByCode?).obs;

  var transitionToOrderStateResponse = {}.obs;
  var useCurrentUserAddress = false.obs;

  void getActiveOrders() async {
    graphqlService = GraphqlService();
    isLoading.value = true;
    final res = await graphqlService.client.value
        .query$GetActiveOrder(Options$Query$GetActiveOrder());
    if (res.hasException) {
      print('${res.exception.toString()}');
      isLoading.value = false;
    }
    if (res.data != null) {
      if (res.parsedData!.activeOrder != null) {
        print('active orders ${res.parsedData!.activeOrder!.toJson()}');
        currencyCode.value = res.parsedData!.activeOrder!.currencyCode.name;
        activeOrderResponse.value = res.parsedData!.activeOrder;
        print(
            'total active orders ${activeOrderResponse.value!.totalQuantity}');
      }
      isLoading.value = false;
    }
  }

  void resetData() {
    activeOrderResponse.value = null;
  }

  Future<List<String>> getNextOrderStates() async {
    isLoading.value = true;
    graphqlService = GraphqlService();
    final res = await graphqlService.client.value.query$NextOrderStates();
    if (res.hasException) {
      print(res.exception.toString());
      isLoading.value = false;
    }
    if (res.data != null) {
      print('getNextOrderStates ${res.parsedData!.nextOrderStates.toList()}');
    }
    return res.parsedData!.nextOrderStates.toList();
  }

  void requestToCancelOrder(String orderId, int value) async {
    isLoading.value = true;
    graphqlService = GraphqlService();
    final res = await graphqlService.client.value
        .mutate$CancelOrderOnClientRequest(
            Options$Mutation$CancelOrderOnClientRequest(
                variables: Variables$Mutation$CancelOrderOnClientRequest(
                    orderId: orderId, value: value)));
    if (res.hasException) {
      print(res.exception.toString());
    }
    if (res.data != null) {
      print(
          'requestToCancelOrder ${res.parsedData!.cancelOrderOnClientRequest.toJson()}');
      Get.offAll(() => StorePage());
    }
  }

  void transitionToOrderState(String state) async {
    isLoading.value = true;
    graphqlService = GraphqlService();
    final res = await graphqlService.client.value.mutate$TransitionOrderToState(
        Options$Mutation$TransitionOrderToState(
            variables:
                Variables$Mutation$TransitionOrderToState(state: state)));
    if (res.hasException) {
      print(res.exception.toString());
      isLoading.value = false;
    }
    if (res.data != null) {
      print(
          'transitionToOrderState ${res.parsedData!.transitionOrderToState!.toJson()}');
    }
    transitionToOrderStateResponse.value =
        res.parsedData!.transitionOrderToState!.toJson();
  }

  void transitionToArrangingPayment() async {
    isLoading.value = true;
    graphqlService = GraphqlService();
    final res =
        await graphqlService.client.value.mutate$TransitionToArrangingPayment();
    if (res.hasException) {
      print(res.exception.toString());
      isLoading.value = false;
    }
    if (res.data != null) {
      var currentState = res.parsedData!.transitionOrderToState!.toJson();
      print('transitionToArrangingPayment ${currentState}');
      if (currentState['message'] != null) {
        Get.snackbar('Error', "${currentState['message']}",
            colorText: Colors.red);
      } else {
        addPaymentToOrder({
          'paymentId': paymentSuccessResponse.value!.paymentId,
          'orderId': paymentSuccessResponse.value!.orderId,
          'signature': paymentSuccessResponse.value!.signature
        });
      }
      isLoading.value = false;
    }
  }

  void transitionToAddingItems() async {
    isLoading.value = true;
    final res =
        await graphqlService.client.value.mutate$TransitionToAddingItems();
    if (res.hasException) {
      print(res.exception.toString());
      isLoading.value = false;
    }
    if (res.data != null) {
      print(
          'transitionToAddingItems ${res.parsedData!.transitionOrderToState!.toJson()}');
      isLoading.value = true;
    }
  }

  void addPaymentToOrder(dynamic metaData) async {
    isLoading.value = true;
    graphqlService = GraphqlService();
    final res = await graphqlService.client.value.mutate$AddPayment(
        Options$Mutation$AddPayment(
            variables: Variables$Mutation$AddPayment(
                input: Input$PaymentInput(
                    method: eligiblePaymentMethods.first.code,
                    metadata: jsonEncode(metaData)))));
    if (res.hasException) {
      print(res.exception.toString());
      isLoading.value = false;
      Get.snackbar('Error', res.exception.toString(),
          backgroundColor: Colors.red, colorText: Colors.white);
    }
    if (res.data != null) {
      var jsonData = res.parsedData!.addPaymentToOrder.toJson();
      if (jsonData.containsKey('message')) {
        Get.snackbar('', jsonData['message'],
            backgroundColor: Colors.red, colorText: Colors.white);
      } else {
        print(
            'add payment order ${res.parsedData!.addPaymentToOrder.toJson()}');
        addPaymentToOrderResponse.value =
            res.parsedData!.addPaymentToOrder.toJson();
        getOrderByCode(addPaymentToOrderResponse.value['code']);
        currentStep.value++;
      }
      isLoading.value = false;
    }
  }

  void getOrderByCode(String code) async {
    isLoading.value = true;
    graphqlService = GraphqlService();
    final res = await graphqlService.client.value.query$GetOrderByCode(
        Options$Query$GetOrderByCode(
            variables: Variables$Query$GetOrderByCode(code: code)));
    if (res.hasException) {
      print(res.exception.toString());
      isLoading.value = false;
    }
    if (res.data != null) {
      print('getOrderByCode ${res.parsedData!.orderByCode!.toJson()}');
      getOrderByCodeResponse.value = res.parsedData!.orderByCode;
      isLoading.value = false;
    }
  }

  void setShippingMethod() async {
    isLoading2.value = true;
    graphqlService = GraphqlService();
    final res = await graphqlService.client.value.mutate$SetShippingMethod(
        Options$Mutation$SetShippingMethod(
            variables: Variables$Mutation$SetShippingMethod(
                id: currentlySelectedShippingMethod.value!.id)));
    if (res.hasException) {
      print('${res.exception.toString()}');
      isLoading2.value = false;
    }
    if (res.data != null) {
      var currentData = res.parsedData!.setOrderShippingMethod;
      var orderResponse =
          Mutation$SetShippingMethod$setOrderShippingMethod$$Order.fromJson(
              currentData.toJson());
      print('set shipping method ${jsonEncode(orderResponse)}');
      getActiveOrders();
      isLoading2.value = false;
    }
  }

  void getAvailableCountries() async {
    isLoading.value = true;
    final res =
        await this.graphqlService.client.value.query$GetAvailableCountries();
    if (res.hasException) {
      print('${res.exception.toString()}');
      isLoading.value = false;
    }
    if (res.data != null) {
      availableCountryList.value = res.parsedData!.availableCountries;
      print('available countries ${availableCountryList}');
      // currentlySelectedCountryCode.value = availableCountryList.first.code;
      isLoading.value = false;
    }
  }

  void resetShippingMethodForm() {
    fullName.clear();
    streetLine1.clear();
    streetLine2.clear();
    // phoneNumber.clear();
    // postalCode.clear();
    city.clear();
    couponCode.clear();
    shippingAddressFormKey.currentState?.reset();
  }

  void createRazorPayOrder() async {
    isLoading2.value = true;
    try {
      final url =
          Uri.https(dotenv.env['RAZORPAY_URL'].toString(), 'create-order');
      final res = await http.post(url,
          headers: UtilService.customHeader,
          body: jsonEncode({
            'amount': shippingAddressOrder.value!.totalWithTax,
            'currency': currencyCode.value,
            'receipt': "receipt#${shippingAddressOrder.value!.code}",
          }));
      var jsonData = await jsonDecode(res.body);
      print(jsonData);
      if (jsonData['error'] != null) {
        if (jsonData['error']['code'].toString().isNotEmpty) {
          print('error ${res.body}');
          Get.snackbar('Error', '${jsonData['error']['description']}',
              colorText: Colors.red);
        }
      } else {
        print('createOrderResponse ${res.body}');
        createOrderResponse.value = createOrderResponseModelFromJson(res.body);
        PaymentServices.startRazorPay();
      }
      isLoading2.value = false;
    } on Exception catch (e) {
      print(e.toString());
      isLoading2.value = false;
    }
  }

  void verifyPayment() async {
    try {
      isLoading.value = true;
      final url =
          Uri.https(dotenv.env['RAZORPAY_URL'].toString(), 'verify-payment');
      final res = await http.post(url,
          headers: UtilService.customHeader,
          body: jsonEncode({
            'razorpayOrderId': createOrderResponse.value!.id,
            'razorpayPaymentId': paymentSuccessResponse.value!.paymentId,
            'signature': paymentSuccessResponse.value!.signature,
          }));
      if (res.body == 'true') {
        print('payment is verified');
        isLoading.value = false;
        var states = await getNextOrderStates();
        transitionToOrderState(states[0]);

        Timer(Duration(seconds: 3), () {
          addPaymentToOrder({
            'paymentId': paymentSuccessResponse.value!.paymentId,
            'orderId': paymentSuccessResponse.value!.orderId,
            'signature': paymentSuccessResponse.value!.signature
          });
        });
      } else {
        print('not verified');
        Get.snackbar('Warning', 'Payment is not verified. Please Try again');
        isLoading.value = false;
      }
    } on Exception catch (e) {
      print(e.toString());
      isLoading.value = false;
    }
  }

  Future<bool> applyCouponCode(String couponCode) async {
    isLoading.value = true;
    var status = true;
    graphqlService = GraphqlService();
    final res = await graphqlService.client.value.mutate$ApplyCouponCode(
        Options$Mutation$ApplyCouponCode(
            variables: Variables$Mutation$ApplyCouponCode(input: couponCode)));
    if (res.hasException) {
      print('${res.exception.toString()}');
      isLoading.value = false;
      Get.snackbar('', 'Coupon Code is not valid',
          colorText: Colors.red,
          backgroundColor: Colors.yellow,
          duration: Duration(seconds: 2));
      status = false;
    }
    if (res.data != null) {
      print('coupon code ${res.parsedData!.applyCouponCode.toJson()}');
      if (res.parsedData!.applyCouponCode.$__typename ==
          'CouponCodeInvalidError') {
        Get.snackbar('', 'Coupon Code is not valid',
            colorText: Colors.red,
            backgroundColor: Colors.yellow,
            duration: Duration(seconds: 2));
        status = false;
      } else if (res.parsedData!.applyCouponCode.$__typename ==
          'CouponCodeExpiredError') {
        Get.snackbar('', 'Coupon Code is expired',
            colorText: Colors.red,
            backgroundColor: Colors.yellow,
            duration: Duration(seconds: 2));
        status = false;
      } else if (res.parsedData!.applyCouponCode.$__typename ==
          'CouponCodeLimitError') {
        Get.snackbar('', 'this coupon code is already applied for you',
            colorText: Colors.red,
            backgroundColor: Colors.yellow,
            duration: Duration(seconds: 2));
        status = false;
      } else if (res.parsedData!.applyCouponCode.$__typename == 'order') {
        print('code is applied');
        status = true;
      }
      isLoading.value = false;
    }
    return status;
  }

  void setOtherInstruction() async {
    isLoading.value = true;
    graphqlService = GraphqlService();
    final res = await graphqlService.client.value.mutate$SetOtherInstruction(
        Options$Mutation$SetOtherInstruction(
            variables: Variables$Mutation$SetOtherInstruction(
                orderId: activeOrderResponse.value!.id, value: otherInstructions.text)));
    if (res.hasException) {
      print(res.exception.toString());
    }
    if (res.data != null) {
      print(
          'setOtherInstruction ${jsonEncode(res.parsedData!.otherInstructions.customFields)}');
      otherInstructionResponse.value = res.parsedData!.otherInstructions;
    }

  }

  void setShippingAddress() async {
    isLoading.value = true;
    graphqlService = GraphqlService();
    final res = await graphqlService.client.value.mutate$SetShippingAddress(
        Options$Mutation$SetShippingAddress(
            variables: Variables$Mutation$SetShippingAddress(
                input: Input$CreateAddressInput(
                    streetLine1: useCurrentUserAddress.value
                        ? userController.currentAuthenticatedUser.value!
                            .addresses!.first.streetLine1
                        : streetLine1.text,
                    streetLine2: useCurrentUserAddress.value
                        ? userController.currentAuthenticatedUser.value!
                            .addresses!.first.streetLine2
                        : streetLine2.text,
                    countryCode: currentlySelectedCountryCode.value,
                    city: CityToUseType.Madurai.name,
                    province: 'Maharashtra',
                    fullName: useCurrentUserAddress.value
                        ? userController.currentAuthenticatedUser.value!
                            .addresses!.first.fullName
                        : fullName.text,
                    postalCode: useCurrentUserAddress.value
                        ? userController.currentAuthenticatedUser.value!
                            .addresses!.first.postalCode
                        : selectedPostalCode.value,
                    defaultShippingAddress: makeDefaultShippingAddress.value,
                    phoneNumber: useCurrentUserAddress.value
                        ? userController.currentAuthenticatedUser.value!
                            .addresses!.first.phoneNumber
                        : userController.currentAuthenticatedUser.value!.phoneNumber.toString()))));
    if (res.hasException) {
      print(res.exception.toString());
      isLoading.value = false;
    }
    if (res.data != null) {
      print(
          'setShippingAddress ${jsonEncode(res.parsedData!.setOrderShippingAddress)}');
      shippingAddressOrder.value = res.parsedData!.setOrderShippingAddress
          as Mutation$SetShippingAddress$setOrderShippingAddress$$Order?;
      isLoading.value = false;
      currentStep.value++;
    }
  }

  void onUserCheckout() async {
    try {
      final url = Uri.http('${dotenv.env['BRAINTREE_URL']}', 'checkout');
      final res = await http.post(url,
          body: jsonEncode({'payment_method_nonce': currentNonce.value}),
          headers: UtilService.customHeader);
      print(res.body);
    } on Exception catch (e) {
      print(e.toString());
    }
  }

  void getEligiblePaymentMethod() async {
    eligiblePaymentIsLoading.value = true;
    final res =
        await graphqlService.client.value.query$GetEligiblePaymentMethods();
    if (res.hasException) {
      print(res.exception.toString());
      eligiblePaymentIsLoading.value = false;
    }
    if (res.data != null) {
      print(
          'getEligiblePaymentMethod ${jsonEncode(res.parsedData!.eligiblePaymentMethods)}');
      eligiblePaymentMethods.value = res.parsedData!.eligiblePaymentMethods;
      eligiblePaymentIsLoading.value = false;
    }
  }

  void getEligibleShippingMethod() async {
    isLoading.value = true;
    final res = await this
        .graphqlService
        .client
        .value
        .query$GetEligibleShippingMethods();
    if (res.hasException) {
      print('${res.exception.toString()}');
      isLoading.value = false;
    }
    if (res.data != null) {
      print(
          'getEligibleShippingMethod ${jsonEncode(res.parsedData!.eligibleShippingMethods)}');
      eligibleShippingMethodList.value =
          res.parsedData!.eligibleShippingMethods;
      currentlySelectedShippingMethod.value = emptyShippingMethod as Query$GetEligibleShippingMethods$eligibleShippingMethods?;
      isLoading.value = false;
    }
  }

  void getOrderForCheckout() async {
    isLoading.value = true;
    final res = await this
        .graphqlService
        .client
        .value
        .query$GetOrderForCheckout(Options$Query$GetOrderForCheckout());
    if (res.hasException) {
      print('${res.exception.toString()}');
      isLoading.value = false;
    }
    if (res.data != null) {
      print('order for checkout ${res.parsedData!.activeOrder!.toJson()}');
      activeOrderForCheckout.value = res.parsedData!.activeOrder;
      isLoading.value = false;
    }
  }

  void adjustOrderLine(String orderLineId, int quantity) async {
    graphqlService = GraphqlService();
    final res = await graphqlService.client.value.mutate$AdjustOrderLine(
        Options$Mutation$AdjustOrderLine(
            variables: Variables$Mutation$AdjustOrderLine(
                orderLineId: orderLineId, quantity: quantity)));
    if (res.hasException) {
      print('${res.exception.toString()}');
    }
    if (res.data != null) {
      print('adjusted order ${res.parsedData!.adjustOrderLine.toJson()}');
      getActiveOrders();
    }
  }

  void removeItemFromOrder(String orderLineId) async {
    isLoading.value = true;
    graphqlService = GraphqlService();
    final res = await graphqlService.client.value.mutate$RemoveOrderLine(
        Options$Mutation$RemoveOrderLine(
            variables:
                Variables$Mutation$RemoveOrderLine(orderLineId: orderLineId)));
    if (res.hasException) {
      print('${res.exception.toString()}');
      isLoading.value = false;
      Get.snackbar('Error', res.exception.toString());
      removeAllItemFromOrder();
    }
    if (res.data != null) {
      var parsedData = res.parsedData!.removeOrderLine;
      print('removeItemFromOrder ${parsedData.toJson()}');
      if (parsedData.toJson()['errorCode'] == 'ORDER_MODIFICATION_ERROR') {
        Get.snackbar('Error', '${parsedData.toJson()['message']}',
            colorText: Colors.white, backgroundColor: Colors.red);
        transitionToOrderState('AddingItems');
      } else {
        getActiveOrders();
      }
      isLoading.value = false;
    }
  }

  void removeAllItemFromOrder() async {
    isLoading.value = true;
    final res = await graphqlService.client.value.mutate$RemoveAllOrderLines();
    if (res.hasException) {
      print('${res.exception.toString()}');
      isLoading.value = false;
    }
    if (res.data != null) {
      print('${res.parsedData!.removeAllOrderLines.toJson()}');

      isLoading.value = false;
    }
  }
}
