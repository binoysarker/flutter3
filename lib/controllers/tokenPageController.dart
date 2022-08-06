import 'package:ecommerce_app/controllers/utilityController.dart';
import 'package:ecommerce_app/graphqlSection/authentication.graphql.dart';
import 'package:ecommerce_app/services/commonVariables.dart';
import 'package:ecommerce_app/services/graphql_service.dart';
import 'package:ecommerce_app/services/util_service.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class TokenPageController extends GetxController {
  TextEditingController tokenController = TextEditingController();
  GraphqlService graphqlService = GraphqlService();




  void onTokenSubmit(BuildContext context) async {
    final navigator = Navigator.of(context);
    Get.find<UtilityController>().setLoadingState(true);
    final res = await graphqlService.clientToQuery()
        .mutate$VerifyCustomerAccount(Options$Mutation$VerifyCustomerAccount(
            variables: Variables$Mutation$VerifyCustomerAccount(
      token: tokenController.text,
    )));
    if (res.hasException) {
      debugPrint('${res.exception.toString()}');
      Get.find<UtilityController>().setLoadingState(false);
    }
    if (res.data != null) {
      debugPrint('${res.data?['verifyCustomerAccount']}');
      final verifyCustomerData = Map<dynamic,dynamic>.from(res.data?['verifyCustomerAccount']);
      if(verifyCustomerData['message'] != null){
        UtilService.createSnakeBar(context: context,text: '${verifyCustomerData['message']}');

      }else {
        UtilService.createSnakeBar(context: context,text: 'user is verified');
        navigator.pushReplacementNamed('/${PageRouteNames.login.name}');
      }
      Get.find<UtilityController>().setLoadingState(false);

    }

  }
}
