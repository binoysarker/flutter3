import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:http/http.dart' as http;
import 'package:recipe.app/graphqlSection/collections.graphql.dart';
import 'package:recipe.app/graphqlSection/orders.graphql.dart';
import 'package:recipe.app/graphqlSection/schema.graphql.dart';
import 'package:recipe.app/services/graphql_service.dart';

class OrderController extends GetxController {
  GraphqlService graphqlService = GraphqlService();
  TextEditingController fullName = TextEditingController();
  TextEditingController company = TextEditingController();
  TextEditingController streetLine1 = TextEditingController();
  TextEditingController streetLine2 = TextEditingController();
  TextEditingController city = TextEditingController();
  TextEditingController province = TextEditingController();
  TextEditingController postalCode = TextEditingController();
  TextEditingController country = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();
  var currentStep = 0.obs;

  var activeOrderResponse = {}.obs;
  var isLoading = false.obs;
  var activeOrderItemList = <Fragment$Cart$lines>[].obs;
  var availableCountryList =
      <Query$GetAvailableCountries$availableCountries>[].obs;
  var currentlySelectedCountryCode = ''.obs;
  var currentlySelectedShippingMethodId = ''.obs;
  var eligibleShippingMethodList =
      <Query$GetEligibleShippingMethods$eligibleShippingMethods>[].obs;
  var shippingMethodSelected = '1'.obs;
  var clientToken = ''.obs;
  var currencyCode = ''.obs;
  var productLines =
      <Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines>[].obs;
  var shippingLines =
      <Mutation$SetShippingMethod$setOrderShippingMethod$$Order$shippingLines>[]
          .obs;
  Fragment$OrderAddress? finalShippingAddress;

  // ignore: unnecessary_cast
  var shippingAddressOrder =
      (null as Mutation$SetShippingAddress$setOrderShippingAddress$$Order?).obs;
  var currentNonce = ''.obs;

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
        activeOrderResponse.value = res.parsedData!.activeOrder!.toJson();
        activeOrderItemList.value = res.parsedData!.activeOrder!.lines;
      }
      isLoading.value = false;
    }
  }

  void resetForm() {}

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
      var orderResponse =
          Mutation$SetShippingMethod$setOrderShippingMethod$$Order.fromJson(
              res.parsedData!.setOrderShippingMethod.toJson());
      print('set shipping method ${orderResponse}');
      productLines.value = orderResponse.lines.toList();
      shippingLines.value = orderResponse.shippingLines.toList();
      currentStep.value++;
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
      availableCountryList.value = res.parsedData!.availableCountries.toList();
      currentlySelectedCountryCode.value = availableCountryList.first.code;
      isLoading.value = false;
    }
  }

  void setShippingAddress() async {
    final res = await this
        .graphqlService
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
      shippingAddressOrder.value =
          Mutation$SetShippingAddress$setOrderShippingAddress$$Order.fromJson(
              res.parsedData!.setOrderShippingAddress.toJson());
      finalShippingAddress = shippingAddressOrder.value!.shippingAddress;
    }
  }

  void onUserCheckout() async {
    try {
      final url = Uri.http('${dotenv.env['BRAINTREE_URL']}', 'checkout');
      final res = await http.post(url,
          body: jsonEncode({'payment_method_nonce': currentNonce.value}),
          headers: {"Content-Type": "application/json"});
      print(res.body);
    } on Exception catch (e) {
      print(e.toString());
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
      print('shipping method ${res.parsedData!.eligibleShippingMethods}');
      eligibleShippingMethodList.value =
          res.parsedData!.eligibleShippingMethods;
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
