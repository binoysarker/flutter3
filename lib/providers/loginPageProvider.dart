import 'package:ecommerce_app/graphqlSection/authentication.graphql.dart';
import 'package:ecommerce_app/services/graphql_service.dart';
import 'package:flutter/material.dart';

class LoginPageProvider with ChangeNotifier {
  GraphQlService graphQlService = GraphQlService();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool showSignIn = true;
  bool checkboxStatus = false;

  void setShowSignIn(bool value) {
    showSignIn = value;
    notifyListeners();
  }

  void toggleShowSignIn() {
    showSignIn = !showSignIn;
    notifyListeners();
  }

  void setCheckboxStatus(bool value) {
    checkboxStatus = value;
    notifyListeners();
  }

  void onUserSignIn() async {
    final signInResponse = await graphQlService.graphQLClient.mutate$SignIn(
        Options$Mutation$SignIn(
            variables: Variables$Mutation$SignIn(
                emailAddress: emailController.text,
                password: passwordController.text,
                rememberMe: checkboxStatus)));
    if (signInResponse.isLoading) {
      print('loading');
    }
    if (signInResponse.hasException) {

      print('${signInResponse.exception.toString()}');
    }
    if (signInResponse.data != null) {
      print('data ${signInResponse.data}');
    }
  }
}
