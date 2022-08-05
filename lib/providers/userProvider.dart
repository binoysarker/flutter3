import 'package:ecommerce_app/graphqlSection/authentication.graphql.dart';
import 'package:ecommerce_app/services/graphql_service.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:graphql/client.dart';

import '../services/util_service.dart';

class UserProvider with ChangeNotifier {
  Map<String, dynamic>?  currentAuthenticatedUser = {};
  String currentAuthToken = '';
  final GraphqlService graphqlService = GraphqlService();

  void setCurrentUser(Map<String, dynamic> user){
    currentAuthenticatedUser = user;
    notifyListeners();
  }
  void setCurrentAuthToken(String text){
    currentAuthToken = text;
    notifyListeners();
  }

  void getActiveCustomer(BuildContext context) async {

    // print('${graphQlService.authLink.getToken()}');
    final res = await graphqlService.clientToQuery()
        .query$GetActiveCustomer(Options$Query$GetActiveCustomer());
    if (res.hasException) {
      print('${res.exception.toString()}');
    }
    if (res.data != null) {
      print('${res.data}');
    }
  }

  void getCurrentUser(BuildContext context) async {
    if(currentAuthToken.isNotEmpty){
      GraphqlService.setToken(currentAuthToken);
    }
    final navigator = Navigator.of(context);

    final res = await graphqlService.clientToQuery()
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
      setCurrentUser(userInfo!);
    }
  }
}
