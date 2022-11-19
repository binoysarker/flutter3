import 'dart:math';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:recipe.app/controllers/userController.dart';
import 'package:recipe.app/controllers/utilityController.dart';
import 'package:recipe.app/graphqlSection/authentication.graphql.dart';
import 'package:recipe.app/graphqlSection/schema.graphql.dart';
import 'package:recipe.app/pages/login_page.dart';
import 'package:recipe.app/pages/register_success_page.dart';
import 'package:recipe.app/pages/resetPasswordPage.dart';
import 'package:recipe.app/pages/store_page.dart';
import 'package:recipe.app/pages/tokenVarifyPage.dart';
import 'package:http/http.dart' as http;
import 'package:recipe.app/pages/verifyOTPPage.dart';
import 'package:recipe.app/services/commonVariables.dart';
import 'package:recipe.app/services/graphql_service.dart';
import 'package:recipe.app/services/util_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class LoginPageController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController tokenController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController otpController = TextEditingController();
  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();
  GraphqlService graphqlService = GraphqlService();
  UtilityController utilityController = Get.find<UtilityController>();
  UserController userController = Get.find<UserController>();
  final loginPageState = GlobalKey<LoginPageState>();
  var showSignIn = true.obs;
  var currentlyGivenOTP = 0.obs;
  var smsQuery = {
    'userid':'1671',
    'password':'trP2V3o5bhZTK9JM',
    'sender':'SMSKAI',
    'to':'9894089302',
    'message':'KAAIKANI App Registration Code is 81154.Use this to verify your mobile. By KAAIKANI',
    'reqid': '1',
    'format':'\{json|text\}',
    'route_id':'3'
  }.obs;

  var currentSignInProcessName = '${SignInProcessNames.normal.name}'.obs;

  var checkboxStatus = false.obs;

  void setShowSignIn(bool value) {
    showSignIn.value = value;
  }
  void generateRandomDigit() {
    var rng = new Random();
    var code = rng.nextInt(9000) + 1000;
    currentlyGivenOTP.value = code;
  }

  void resetFormField() {
    emailController.clear();
    passwordController.clear();
    firstName.clear();
    lastName.clear();
    phoneNumber.clear();
    checkboxStatus.value = false;
    loginPageState.currentState?.loginFormKey.currentState?.reset();
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
      utilityController.setLoadingState(false);
      Get.snackbar('Sorry', 'Please Login again');
      Get.to(() =>  LoginPage());
    }
    if (signInResponse.data != null) {
      debugPrint('${signInResponse.data}');

      final loginData = signInResponse.parsedData?.login.toJson();

      if (loginData?['message'] != null) {
        utilityController.setAlertMessage(true, loginData?['message']);
        utilityController.setLoadingState(false);
        return;
      }
      if (loginData?['errorCode'] == 'NOT_VERIFIED_ERROR') {
        navigator.pushReplacementNamed('/${PageRouteNames.verify_token.name}');
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
  void sendOtpToUser() async{
    try{
      generateRandomDigit();
      print('current otp is ${currentlyGivenOTP.value}');
      smsQuery.value['message'] = 'KAAIKANI App Registration Code is ${currentlyGivenOTP.value}.Use this to verify your mobile. By KAAIKANI';
      smsQuery.value['to'] = '${phoneNumber.text}';

      final url = Uri.https(dotenv.env['SMS_URL'].toString(), 'API/WebSMS/Http/v1.0a/index.php',smsQuery.value);
      final res = await http.get(url);
      print('${res.body}');
      Get.to(() => VerifyOTPPage());
    }on Exception catch(e){
      print(e.toString());
    }


  }

  void onUserRegister() async {
    utilityController.setLoadingState(true);
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
      print('${registerResponse.exception.toString()}');
    }
    if (registerResponse.data != null) {
      print('${registerResponse.data}');
      final registerData =
          registerResponse.parsedData?.registerCustomerAccount.toJson();

      if (registerData?['success'] != null) {
        //  user is registered
        utilityController.setAlertMessage(false, '');
        utilityController.setLoadingState(false);
        Get.snackbar('', 'Registered Successfully', backgroundColor: Colors.greenAccent);
        showSignIn.value = true;
        Get.to(() => RegisterSuccessPage());

      } else {
        utilityController.setAlertMessage(true, 'some error');
      }
    }
    utilityController.setLoadingState(false);
  }

  void requestPasswordReset(String email) async {
    final res = await graphqlService
        .clientToQuery()
        .mutate$RequestPasswordReset(Options$Mutation$RequestPasswordReset(
            variables: Variables$Mutation$RequestPasswordReset(email: email)));
    if(res.hasException){
      print('${res.exception.toString()}');
    }
    if(res.data != null){
      print('${res.parsedData!.requestPasswordReset!.toJson()}');
      Get.to(() => ResetPasswordPage());
      Get.snackbar('', 'Please check your email to get the token',backgroundColor: Colors.green);
    }
  }
  void resetUserPassword(String password, String token) async {
    final res = await graphqlService
        .clientToQuery().mutate$ResetPassword(Options$Mutation$ResetPassword(variables: Variables$Mutation$ResetPassword(password: password, token: token)));
    if(res.hasException){
      print('${res.exception.toString()}');
    }
    if(res.data != null){
      print('${res.parsedData!.resetPassword.toJson()}');
      resetFormField();
      Get.to(()=> LoginPage());
      Get.snackbar('Success', 'Password reset is successful',backgroundColor: Colors.green);
    }
  }

  /*void onGoogleSignIn(BuildContext context) async {
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
  }*/
}
