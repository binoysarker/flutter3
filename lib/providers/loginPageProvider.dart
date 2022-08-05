import 'package:ecommerce_app/graphqlSection/authentication.graphql.dart';
import 'package:ecommerce_app/graphqlSection/schema.graphql.dart';
import 'package:ecommerce_app/providers/userProvider.dart';
import 'package:ecommerce_app/providers/utilityProvider.dart';
import 'package:ecommerce_app/services/commonVariables.dart';
import 'package:ecommerce_app/services/graphql_service.dart';
import 'package:ecommerce_app/services/util_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class LoginPageProvider with ChangeNotifier {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();
  GraphqlService graphqlService = GraphqlService();
  bool showSignIn = true;

  String currentSignInProcessName = SignInProcessNames.normal.name;

  bool checkboxStatus = false;
  late final UtilityProvider? _utilityProvider;
  late final UserProvider? _userProvider;

  LoginPageProvider(this._utilityProvider, this._userProvider) {}

  void setShowSignIn(bool value) {
    showSignIn = value;
    notifyListeners();
  }

  void setCurrentSignInProcess(String value) {
    currentSignInProcessName = value;
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

  void onUserSignIn(BuildContext context) async {
    final navigator = Navigator.of(context);
    _utilityProvider?.setLoadingState(true);
    final signInResponse = await graphqlService.clientToQuery().mutate$SignIn(
        Options$Mutation$SignIn(
            variables: Variables$Mutation$SignIn(
                emailAddress: emailController.text,
                password: passwordController.text,
                rememberMe: checkboxStatus)));
    if (signInResponse.hasException) {
      debugPrint('${signInResponse.exception.toString()}');
    }
    if (signInResponse.data != null) {
      debugPrint('${signInResponse.data}');

      final loginData = signInResponse.parsedData?.login.toJson();

      if (loginData?['message'] != null) {
        _utilityProvider?.setAlertMessage(true, loginData?['message']);
        _utilityProvider?.setLoadingState(false);
        return;
      }
      if (loginData?['errorCode'] == 'NOT_VERIFIED_ERROR') {
        navigator.pushReplacementNamed('/${PageRouteNames.verifyToken.name}');
      } else {
        UtilService.createSnakeBar(context: context, text: 'Login successful');
        String authToken =
            '${signInResponse.context.entry<HttpLinkResponseContext>()?.headers['vendure-auth-token']}';
        _userProvider?.setCurrentAuthToken(authToken);
        navigator.pushReplacementNamed('/${PageRouteNames.home.name}');
      }
      _utilityProvider?.setLoadingState(false);
    }
    _utilityProvider?.setLoadingState(false);
  }

  void onUserRegister(BuildContext context) async {
    _utilityProvider?.setLoadingState(true);
    final navigator = Navigator.of(context);
    final registerResponse = await graphqlService
        .clientToQuery()
        .mutate$Register(Options$Mutation$Register(
            variables: Variables$Mutation$Register(
                input: Input$RegisterCustomerInput(
          emailAddress: emailController.text,
          password: passwordController.text,
          firstName: firstName.text,
          lastName: lastName.text,
          phoneNumber: phoneNumber.text,
        ))));
    if (registerResponse.hasException) {
      debugPrint('${registerResponse.exception.toString()}');
    }
    if (registerResponse.data != null) {
      debugPrint('${registerResponse.data}');
      final registerData =
          registerResponse.parsedData?.registerCustomerAccount.toJson();

      if (registerData?['success'] != null) {
        //  user is registered
        _utilityProvider?.setAlertMessage(false, '');
        _utilityProvider?.setLoadingState(false);
        UtilService.createSnakeBar(
            context: context, text: 'Registered Successfully');
        navigator.pushReplacementNamed('${PageRouteNames.verifyToken.name}');
      } else {
        _utilityProvider?.setAlertMessage(true, 'some error');
      }
    }
    _utilityProvider?.setLoadingState(false);
  }

  void onGoogleSignIn(BuildContext context) async {
    _utilityProvider?.setLoadingState(true);
    try {
      setCurrentSignInProcess(SignInProcessNames.firebase.name);
      late UserCredential res;
      if (emailController.text.isEmpty || passwordController.text.isEmpty) {
        UtilService.createSnakeBar(text: 'Fill up the form', context: context);
      } else {
        if (showSignIn) {
          res = await FirebaseAuth.instance.signInWithEmailAndPassword(
              email: emailController.text, password: passwordController.text);
        } else {
          res = await FirebaseAuth.instance.createUserWithEmailAndPassword(
              email: emailController.text, password: passwordController.text);
        }
      }
      debugPrint('${res.user}');
      if (res.user != null) {
        UtilService.createSnakeBar(context: context, text: 'Login Successfull');
        Navigator.pushReplacementNamed(context, '/home');
      }
      _utilityProvider?.setLoadingState(false);
    } on FirebaseAuthException catch (e) {
      debugPrint('${e.message}');
      UtilService.createSnakeBar(context: context, text: '${e.message}');
      _utilityProvider?.setLoadingState(false);
    }
  }
}
