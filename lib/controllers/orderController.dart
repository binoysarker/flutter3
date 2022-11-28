// ignore_for_file: unnecessary_cast

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:http/http.dart' as http;
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:recipe.app/graphqlSection/collections.graphql.dart';
import 'package:recipe.app/graphqlSection/orders.graphql.dart';
import 'package:recipe.app/graphqlSection/schema.graphql.dart';
import 'package:recipe.app/models/createOrderResponseModel.dart';
import 'package:recipe.app/services/commonVariables.dart';
import 'package:recipe.app/services/graphql_service.dart';
import 'package:recipe.app/services/paymentServices.dart';
import 'package:recipe.app/services/util_service.dart';

class OrderController extends GetxController {
  GraphqlService graphqlService = GraphqlService();
  TextEditingController fullName = TextEditingController();
  TextEditingController company = TextEditingController();
  TextEditingController streetLine1 = TextEditingController();
  TextEditingController streetLine2 = TextEditingController();
  TextEditingController city = TextEditingController();
  TextEditingController postalCode = TextEditingController();
  TextEditingController country = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();
  var currentStep = 0.obs;

  var activeOrderResponse = (null as Query$GetActiveOrder$activeOrder?).obs;
  var isLoading = false.obs;
  var eligiblePaymentIsLoading = false.obs;
  var availableCountryList =
      <Query$GetAvailableCountries$availableCountries>[].obs;
  var currentlySelectedCountryCode = 'IN'.obs;
  var currentlySelectedShippingMethod = (null as Query$GetEligibleShippingMethods$eligibleShippingMethods?).obs;
  var currentlySelectedShippingMethodId = ''.obs;
  var eligibleShippingMethodList =
      <Query$GetEligibleShippingMethods$eligibleShippingMethods>[].obs;
  var shippingMethodSelected = '1'.obs;
  var clientToken = ''.obs;
  var currencyCode = ''.obs;


  // ignore: unnecessary_cast
  var shippingAddressOrder =
      (null as Mutation$SetShippingAddress$setOrderShippingAddress$$Order?).obs;
  var currentNonce = ''.obs;
  // ignore: unnecessary_cast
  var activeOrderForCheckout = (null as Query$GetOrderForCheckout$activeOrder?).obs;
  var createOrderResponse = (null as CreateOrderResponseModel?).obs;
  var paymentSuccessResponse = (null as PaymentSuccessResponse?).obs;
  var eligiblePaymentMethods = <Query$GetEligiblePaymentMethods$eligiblePaymentMethods>[].obs;
  var addPaymentToOrderResponse = (null as Mutation$AddPayment$addPaymentToOrder$$Order?).obs;
  var getOrderByCodeResponse = (null as Query$GetOrderByCode$orderByCode?).obs;

  void getActiveOrders() async {
    isLoading.value = true;
    final res = await graphqlService
        .clientToQuery()
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
      }
      isLoading.value = false;
    }
  }

  void transitionToArrangingPayment() async {
    isLoading.value = true;
    final res = await graphqlService.clientToQuery().mutate$TransitionToArrangingPayment();
    if(res.hasException){
      print(res.exception.toString());
      isLoading.value = false;
    }
    if(res.data != null){
      var currentState = res.parsedData!.transitionOrderToState!.toJson();
      print('transitionToArrangingPayment ${currentState['message']}');
      if(currentState['message'] != null){
        Get.snackbar('Error', "${currentState['message']}",colorText: Colors.red);
      }else {
        addPaymentToOrder();
      }
      isLoading.value = false;
    }
  }
  void transitionToAddingItems() async {
    isLoading.value = true;
    final res = await graphqlService.clientToQuery().mutate$TransitionToAddingItems();
    if(res.hasException){
      print(res.exception.toString());
      isLoading.value = false;
    }
    if(res.data != null){
      print('transitionToAddingItems ${res.parsedData!.transitionOrderToState!.toJson()}');
      isLoading.value = true;
    }
  }

  void addPaymentToOrder() async {
    isLoading.value = true;
    final res = await graphqlService.clientToQuery().mutate$AddPayment(
        Options$Mutation$AddPayment(
            variables: Variables$Mutation$AddPayment(
                input: Input$PaymentInput(
                    method: eligiblePaymentMethods.first.code,
                    metadata: jsonEncode({
                      'paymentId': paymentSuccessResponse.value!.paymentId,
                      'orderId': paymentSuccessResponse.value!.orderId,
                      'signature': paymentSuccessResponse.value!.signature
                    })))));
    if(res.hasException){
      print(res.exception.toString());
      isLoading.value = false;
      Get.snackbar('Error', res.exception.toString());
    }
    if(res.data != null){
      print('add payment order ${res.parsedData!.addPaymentToOrder.toJson()}');
      addPaymentToOrderResponse.value = Mutation$AddPayment$addPaymentToOrder$$Order.fromJson(res.parsedData!.addPaymentToOrder.toJson()) ;
      getOrderByCode(addPaymentToOrderResponse.value!.code);
      isLoading.value = false;
      currentStep.value++;
    }
  }
  void getOrderByCode(String code) async{
    isLoading.value = true;
    final res = await graphqlService.clientToQuery().query$GetOrderByCode(Options$Query$GetOrderByCode(variables: Variables$Query$GetOrderByCode(code: code)));
    if(res.hasException){
      print(res.exception.toString());
      isLoading.value = false;
    }
    if(res.data != null){
      print('getOrderByCode ${res.parsedData!.orderByCode!.toJson()}');
      getOrderByCodeResponse.value = res.parsedData!.orderByCode;
      isLoading.value = false;

    }
  }

  void setShippingMethod() async {
    isLoading.value = true;
    final res = await graphqlService.clientToQuery().mutate$SetShippingMethod(
        Options$Mutation$SetShippingMethod(
            variables: Variables$Mutation$SetShippingMethod(
                id: currentlySelectedShippingMethodId.value)));
    if (res.hasException) {
      print('${res.exception.toString()}');
      isLoading.value = false;
    }
    if (res.data != null) {
      var currentData = res.parsedData!.setOrderShippingMethod;
      var orderResponse =
          Mutation$SetShippingMethod$setOrderShippingMethod$$Order.fromJson(
              currentData.toJson());
      print('set shipping method ${jsonEncode(orderResponse)}');

      isLoading.value = false;
    }
  }

  void getAvailableCountries() async {
    isLoading.value = true;
    final res =
        await this.graphqlService.clientToQuery().query$GetAvailableCountries();
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
  void createRazorPayOrder() async{
      isLoading.value = true;
    try{
      final url = Uri.https(dotenv.env['RAZORPAY_URL'].toString(), 'create-order');
      final res = await http.post(url,headers: UtilService.customHeader,body: jsonEncode({
            'amount': shippingAddressOrder.value!.totalWithTax,
            'currency': currencyCode.value,
            'receipt': "receipt#${shippingAddressOrder.value!.code}",
          }));
      print('createOrderResponse ${res.body}');
      createOrderResponse.value = createOrderResponseModelFromJson(res.body);
      PaymentServices.startRazorPay();
      isLoading.value = false;
    }on Exception catch(e){
      print(e.toString());
      isLoading.value = false;
    }
  }
  void verifyPayment() async {
    try{
      isLoading.value = true;
      final url = Uri.https(dotenv.env['RAZORPAY_URL'].toString(), 'verify-payment');
      final res = await http.post(url,headers: UtilService.customHeader,body: jsonEncode({
        'razorpayOrderId': createOrderResponse.value!.id,
        'razorpayPaymentId': paymentSuccessResponse.value!.paymentId,
        'signature': paymentSuccessResponse.value!.signature,
      }));
      if(res.body == 'true'){
        print('payment is verified');
        isLoading.value = false;
        if(activeOrderResponse.value!.state == OrderStateEnums.AddingItems.name){
          transitionToArrangingPayment();
        }else {
          addPaymentToOrder();
        }
      }else {
        print('not verified');
        Get.snackbar('Warning', 'Payment is not verified. Please Try again');
        isLoading.value = false;
      }
    }on Exception catch(e){
      print(e.toString());
      isLoading.value = false;
    }
  }

  void setShippingAddress() async {
    isLoading.value = true;
    final res = await graphqlService
        .clientToQuery()
        .mutate$SetShippingAddress(Options$Mutation$SetShippingAddress(
            variables: Variables$Mutation$SetShippingAddress(
                input: Input$CreateAddressInput(
                    streetLine1: streetLine1.text,
                    streetLine2: streetLine2.text,
                    countryCode: currentlySelectedCountryCode.value,
                    city: city.text,
                    company: company.text,
                    fullName: fullName.text,
                    postalCode: postalCode.text,
                    phoneNumber: phoneNumber.text))));
    if (res.hasException) {
      print(res.exception.toString());
      isLoading.value = false;
    }
    if (res.data != null) {
      print('setShippingAddress ${jsonEncode(res.parsedData!.setOrderShippingAddress)}');
      shippingAddressOrder.value = res.parsedData!.setOrderShippingAddress as Mutation$SetShippingAddress$setOrderShippingAddress$$Order?;
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
    final res = await graphqlService.clientToQuery().query$GetEligiblePaymentMethods();
    if(res.hasException){
      print(res.exception.toString());
      eligiblePaymentIsLoading.value = false;
    }
    if(res.data != null){
      print('getEligiblePaymentMethod ${jsonEncode(res.parsedData!.eligiblePaymentMethods)}');
      eligiblePaymentMethods.value = res.parsedData!.eligiblePaymentMethods;
      eligiblePaymentIsLoading.value = false;
    }
  }

  void getEligibleShippingMethod() async {
    isLoading.value = true;
    final res = await this
        .graphqlService
        .clientToQuery()
        .query$GetEligibleShippingMethods();
    if (res.hasException) {
      print('${res.exception.toString()}');
      isLoading.value = false;
    }
    if (res.data != null) {
      print('shipping method ${jsonEncode(res.parsedData!.eligibleShippingMethods)}');
      eligibleShippingMethodList.value =
          res.parsedData!.eligibleShippingMethods;
      currentlySelectedShippingMethod.value = eligibleShippingMethodList.first;
      currentlySelectedShippingMethodId.value =
          eligibleShippingMethodList.first.id;
      isLoading.value = false;
    }
  }

  void getOrderForCheckout() async {
    isLoading.value = true;
    final res = await this
        .graphqlService
        .clientToQuery()
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
    final res = await graphqlService.clientToQuery().mutate$AdjustOrderLine(
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
    final res = await graphqlService.clientToQuery().mutate$RemoveOrderLine(
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
      print('${res.parsedData!.removeOrderLine.toJson()}');
      getActiveOrders();
      isLoading.value = false;
    }
  }

  void removeAllItemFromOrder() async {
    isLoading.value = true;
    final res =
        await graphqlService.clientToQuery().mutate$RemoveAllOrderLines();
    if (res.hasException) {
      print('${res.exception.toString()}');
      isLoading.value = false;
    }
    if (res.data != null) {
      print('${res.parsedData!.removeAllOrderLines.toJson()}');
      getActiveOrders();
      isLoading.value = false;
    }
  }
}
