import 'package:recipe.app/controllers/loginPageController.dart';
import 'package:recipe.app/controllers/utilityController.dart';
import 'package:recipe.app/graphqlSection/authentication.graphql.dart';
import 'package:recipe.app/graphqlSection/sellers.graphql.dart';
import 'package:recipe.app/pages/login_page.dart';
import 'package:recipe.app/services/graphql_service.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:graphql/client.dart';

import '../services/util_service.dart';

class UserController with ChangeNotifier {
  // ignore: unnecessary_cast
  var currentAuthenticatedUser = (null as Query$GetActiveCustomer$activeCustomer?).obs;
  var currentAuthToken = ''.obs;
  final GraphqlService graphqlService = GraphqlService();
  final UtilityController utilityController = Get.find<UtilityController>();
  var topSellers = <Query$GetTopSellers$search$items>[].obs;
  var isLoading = false.obs;
  var isLoading2 = false.obs;
  final loginPageState = GlobalKey<LoginPageState>();


  void checkAndSetToken(){
    if(currentAuthToken.isNotEmpty){
      GraphqlService.setToken(currentAuthToken.value);
    }else {
      GraphqlService.removeToken();
    }
  }
  void onUserLogout() async{
    isLoading2.value =  true;
    final res = await graphqlService.clientToQuery().mutate$LogoutUser(Options$Mutation$LogoutUser());
    if(res.hasException){
      print('${res.exception.toString()}');
      isLoading2.value =  false;
    }
    if(res.data != null){
      print('${res.parsedData!.logout.toJson()}');
      if(res.parsedData!.logout.success){
        isLoading2.value =  false;
        Get.to(() => LoginPage());
        Get.snackbar('', 'You are logged out',backgroundColor: Colors.green);
      }
    }
  }

  void getActiveCustomer() async {
    isLoading2.value =  true;
    checkAndSetToken();
    final res = await graphqlService
        .clientToQuery()
        .query$GetActiveCustomer(Options$Query$GetActiveCustomer());
    if (res.hasException) {
      print('${res.exception.toString()}');
      isLoading2.value = false;
    }
    if (res.data != null) {
      print('active customer ${res.parsedData?.activeCustomer?.toJson()}');
      var activeCustomer = res.parsedData?.activeCustomer;
      if (activeCustomer == null) {
        Get.to(() => LoginPage());
        Get.snackbar('Alert', 'Need to login',backgroundColor: Colors.red);
      }else {
      //  get the auth user
        currentAuthenticatedUser.value = activeCustomer;
      }
      isLoading2.value = false;
    }
  }

  void getTopSellers() async {
    checkAndSetToken();
    isLoading.value = true;
    final res = await graphqlService
        .clientToQuery().query$GetTopSellers(Options$Query$GetTopSellers());
    if (res.hasException) {
      print('${res.exception.toString()}');
      isLoading.value = false;
    }
    if (res.data != null) {
      topSellers.value = res.parsedData!.search.items.toList();
      isLoading.value = false;
    }
  }

  void getCurrentUser(BuildContext context) async {
    if (currentAuthToken.isNotEmpty) {
      GraphqlService.setToken(currentAuthToken.value);
    }
    final navigator = Navigator.of(context);

    final res = await graphqlService
        .clientToQuery()
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
      final userInfo = res.parsedData?.me?.toJson();

    }
  }
}
