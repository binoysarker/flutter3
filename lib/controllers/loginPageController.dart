import 'package:ecommerce_app/controllers/userController.dart';
import 'package:ecommerce_app/controllers/utilityController.dart';
import 'package:ecommerce_app/graphqlSection/authentication.graphql.dart';
import 'package:ecommerce_app/graphqlSection/schema.graphql.dart';
import 'package:ecommerce_app/pages/store_page.dart';
import 'package:ecommerce_app/services/commonVariables.dart';
import 'package:ecommerce_app/services/graphql_service.dart';
import 'package:ecommerce_app/services/util_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class LoginPageController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();
  GraphqlService graphqlService = GraphqlService();
  UtilityController utilityController = Get.find<UtilityController>();
  UserController userController = Get.find<UserController>();
  var showSignIn = true.obs;

  var currentSignInProcessName = '${SignInProcessNames.normal.name}'.obs;

  var checkboxStatus = false.obs;

  void setShowSignIn(bool value) {
    showSignIn.value = value;
  }
  void resetFormField(){
    emailController.text = '';
    passwordController.text = '';
    firstName.text = '';
    lastName.text = '';
    phoneNumber.text = '';
    checkboxStatus.value = false;
  }

  void setCurrentSignInProcess(String value) {
    currentSignInProcessName.value = value;
  }

  void toggleShowSignIn() {
    showSignIn.value = !showSignIn.value;
  }

  void setCheckboxStatus(bool value) {
    checkboxStatus.value = value;
  }

  void onUserSignIn(BuildContext context) async {
    final navigator = Navigator.of(context);
    utilityController.setLoadingState(true);
    final signInResponse = await graphqlService.clientToQuery().mutate$SignIn(
        Options$Mutation$SignIn(
            variables: Variables$Mutation$SignIn(
                emailAddress: emailController.text,
                password: passwordController.text,
                rememberMe: checkboxStatus.value)));
    if (signInResponse.hasException) {
      debugPrint('${signInResponse.exception.toString()}');
    }
    if (signInResponse.data != null) {
      debugPrint('${signInResponse.data}');

      final loginData = signInResponse.parsedData?.login.toJson();

      if (loginData?['message'] != null) {
        utilityController
            .setAlertMessage(true, loginData?['message']);
        utilityController.setLoadingState(false);
        return;
      }
      if (loginData?['errorCode'] == 'NOT_VERIFIED_ERROR') {
        navigator.pushReplacementNamed('/${PageRouteNames.verifyToken.name}');
      } else {
        // login successful
        UtilService.createSnakeBar(context: context, text: 'Login successful');
        String authToken =
            '${signInResponse.context.entry<HttpLinkResponseContext>()?.headers['vendure-auth-token']}';
        userController.currentAuthToken.value = authToken;
        Get.to(() => StorePage());
      }
      utilityController.setLoadingState(false);
    }
  }

  void onUserRegister(BuildContext context) async {
    utilityController.setLoadingState(true);
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
        utilityController.setAlertMessage(false, '');
        utilityController.setLoadingState(false);
        UtilService.createSnakeBar(
            context: context, text: 'Registered Successfully');
        navigator.pushReplacementNamed('${PageRouteNames.verifyToken.name}');
      } else {
        utilityController.setAlertMessage(true, 'some error');
      }
    }
    utilityController.setLoadingState(false);
  }

  void onGoogleSignIn(BuildContext context) async {
    Get.find<UtilityController>().setLoadingState(true);
    try {
      setCurrentSignInProcess(SignInProcessNames.firebase.name);
      late UserCredential res;
      if (emailController.text.isEmpty || passwordController.text.isEmpty) {
        UtilService.createSnakeBar(text: 'Fill up the form', context: context);
      } else {
        if (showSignIn.value) {
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
      Get.find<UtilityController>().setLoadingState(false);
    } on FirebaseAuthException catch (e) {
      debugPrint('${e.message}');
      UtilService.createSnakeBar(context: context, text: '${e.message}');
      Get.find<UtilityController>().setLoadingState(false);
    }
  }
}
