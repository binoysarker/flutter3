import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:graphql/client.dart';
import 'package:localstorage/localstorage.dart';
import 'package:recipe.app/controllers/utilityController.dart';
import 'package:recipe.app/graphqlSection/authentication.graphql.dart';
import 'package:recipe.app/pages/login_page.dart';
import 'package:recipe.app/services/commonVariables.dart';
import 'package:recipe.app/services/graphql_service.dart';

import '../graphqlSection/vendureSchema.graphql.dart';
import '../services/util_service.dart';

class UserController with ChangeNotifier {
  // ignore: unnecessary_cast
  var currentAuthenticatedUser =
      (null as Query$GetActiveCustomer$activeCustomer?).obs;
  var currentAuthToken = ''.obs;
  var graphqlService = GraphqlService();
  final UtilityController utilityController = Get.find<UtilityController>();
  var isLoading = false.obs;
  var isLoading2 = false.obs;
  final loginPageState = GlobalKey<LoginPageState>();
  final LocalStorage storage =
      new LocalStorage(LocalStorageStrings.auth_token.name);



  void logUserOutBeforeExit() async {
    isLoading2.value = true;
    graphqlService = GraphqlService();
    final res = await graphqlService
        .client.value
        .mutate$LogoutUser(Options$Mutation$LogoutUser());
    if (res.hasException) {
      print('${res.exception.toString()}');
      isLoading2.value = false;
    }
    if (res.data != null) {
      print('logout ${res.parsedData!.logout.toJson()}');
      isLoading2.value = false;
      if (res.parsedData!.logout.success) {
        SystemNavigator.pop();
      } else {
        SystemNavigator.pop();
      }
    }
  }

  void getActiveCustomer() async {
    isLoading2.value = true;
    graphqlService = GraphqlService();
    final res = await graphqlService
        .client.value
        .query$GetActiveCustomer(Options$Query$GetActiveCustomer());
    if (res.hasException) {
      print('${res.exception.toString()}');
      isLoading2.value = false;
    }
    if (res.data != null) {
      print('active customer ${res.parsedData?.activeCustomer?.toJson()}');

      var activeCustomer = res.parsedData?.activeCustomer;
      if (activeCustomer == null) {
        Get.offAll(() => LoginPage());
        Get.snackbar('Alert', 'Need to login', backgroundColor: Colors.red);
      } else {
        //  get the auth user
        currentAuthenticatedUser.value = activeCustomer;
      }
      isLoading2.value = false;
    }
  }

  void updateCustomer(
      String firstName, String lastName, String phoneNumber) async {
    isLoading2.value = true;
    graphqlService = GraphqlService();
    final res = await graphqlService.client.value.mutate$UpdateCustomer(
        Options$Mutation$UpdateCustomer(
            variables: Variables$Mutation$UpdateCustomer(
                input: Input$UpdateCustomerInput(
                    firstName: firstName,
                    lastName: lastName,
                    phoneNumber: phoneNumber))));
    if (res.hasException) {
      print('${res.exception.toString()}');
      isLoading2.value = false;
    }
    if (res.data != null) {
      isLoading2.value = false;
      print('updated customer ${res.parsedData!.updateCustomer.toJson()}');
      getActiveCustomer();
    }
  }

  void updateCustomerAddress(String id, String city, String streetLine1,
      String streetLine2, String fullName, postalCode, phoneNumber) async {
    isLoading2.value = true;
    graphqlService = GraphqlService();
    final res = await graphqlService
        .client.value
        .mutate$UpdateCustomerAddress(Options$Mutation$UpdateCustomerAddress(
            variables: Variables$Mutation$UpdateCustomerAddress(
                input: Input$UpdateAddressInput(
                    id: id,
                    city: city,
                    streetLine1: streetLine1,
                    streetLine2: streetLine2,
                    fullName: fullName,
                    company: 'Test Company',
                    province: 'Test Province',
                    postalCode: postalCode,
                    phoneNumber: phoneNumber,
                    defaultShippingAddress: true,
                    defaultBillingAddress: false))));
    if (res.hasException) {
      print('${res.exception.toString()}');
      isLoading2.value = false;
    }
    if (res.data != null) {
      print(
          'update customer address ${res.parsedData!.updateCustomerAddress.toJson()}');
      // currentAuthenticatedUser.value!.addresses?.forEach((element) {
      //   if(element.id == res.parsedData!.updateCustomerAddress.id){
      //     element.phoneNumber = res.parsedData!.updateCustomerAddress.phoneNumber;
      //   }
      // });
      isLoading2.value = false;
    }
  }

  void getCurrentUser(BuildContext context) async {
    if (currentAuthToken.isNotEmpty) {
      // GraphqlService.setToken(currentAuthToken.value);
    }
    final navigator = Navigator.of(context);
    graphqlService = GraphqlService();
    final res = await graphqlService
        .client.value
        .query$GetCurrentUser(Options$Query$GetCurrentUser());
    if (res.hasException) {
      print('${res.exception.toString()}');
      final List<GraphQLError> graphqlErrors =
          (res.exception as OperationException).graphqlErrors;

      navigator.pushReplacementNamed('/login');
      for (var element in graphqlErrors) {
        UtilService.createSnakeBar(
            context: context, text: '${element.message}');
      }
    }
    if (res.data != null) {
      print('response ${res.data}');
    }
  }
}
