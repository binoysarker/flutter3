import 'package:ecommerce_app/controllers/utilityController.dart';
import 'package:ecommerce_app/graphqlSection/authentication.graphql.dart';
import 'package:ecommerce_app/graphqlSection/sellers.graphql.dart';
import 'package:ecommerce_app/pages/login_page.dart';
import 'package:ecommerce_app/services/graphql_service.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:graphql/client.dart';

import '../services/util_service.dart';

class UserController with ChangeNotifier {
  var currentAuthenticatedUser = {}.obs;
  var currentAuthToken = ''.obs;
  final GraphqlService graphqlService = GraphqlService();
  final UtilityController utilityController = Get.find<UtilityController>();
  var topSellers = <Query$GetTopSellers$search$items>[].obs;
  var isLoading = false.obs;


  void checkAndSetToken(){
    if(currentAuthToken.isNotEmpty){
      GraphqlService.setToken(currentAuthToken.value);
    }else {
      GraphqlService.removeToken();
    }
  }
  void getActiveCustomer() async {
    checkAndSetToken();
    final res = await graphqlService
        .clientToQuery()
        .query$GetActiveCustomer(Options$Query$GetActiveCustomer());
    if (res.hasException) {
      print('${res.exception.toString()}');
    }
    if (res.data != null) {
      print('${res.parsedData?.activeCustomer?.toJson()}');
      var activeCustomer = res.parsedData?.activeCustomer;
      if (activeCustomer == null) {
        Get.to(() => LoginPage());
        Get.snackbar('Alert', 'Need to login');
      }else {
      //  get the auth user
        currentAuthenticatedUser.value = activeCustomer.toJson();
      }
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
