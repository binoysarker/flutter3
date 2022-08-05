import 'package:ecommerce_app/graphqlSection/authentication.graphql.dart';
import 'package:ecommerce_app/providers/utilityProvider.dart';
import 'package:ecommerce_app/services/commonVariables.dart';
import 'package:ecommerce_app/services/graphql_service.dart';
import 'package:ecommerce_app/services/util_service.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class TokenPageProvider with ChangeNotifier {
  TextEditingController tokenController = TextEditingController();
  GraphqlService graphqlService = GraphqlService();
  late final UtilityProvider? _utilityProvider;

  TokenPageProvider(this._utilityProvider){}

  void onTokenSubmit(BuildContext context) async {
    final navigator = Navigator.of(context);
    _utilityProvider?.setLoadingState(true);
    final res = await graphqlService.clientToQuery()
        .mutate$VerifyCustomerAccount(Options$Mutation$VerifyCustomerAccount(
            variables: Variables$Mutation$VerifyCustomerAccount(
      token: tokenController.text,
    )));
    if (res.hasException) {
      debugPrint('${res.exception.toString()}');
      _utilityProvider?.setLoadingState(false);
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
      _utilityProvider?.setLoadingState(false);

    }

  }
}
