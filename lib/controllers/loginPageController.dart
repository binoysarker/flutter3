import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:localstorage/localstorage.dart';
import 'package:move_to_background/move_to_background.dart';
import 'package:recipe.app/controllers/userController.dart';
import 'package:recipe.app/controllers/utilityController.dart';
import 'package:recipe.app/graphqlSection/authentication.graphql.dart';
import 'package:recipe.app/graphqlSection/schema.graphql.dart';
import 'package:recipe.app/pages/login_page.dart';
import 'package:recipe.app/pages/register_success_page.dart';
import 'package:recipe.app/pages/resetPasswordPage.dart';
import 'package:recipe.app/pages/store_page.dart';
import 'package:recipe.app/pages/verifyOTPPage.dart';
import 'package:recipe.app/services/commonVariables.dart';
import 'package:recipe.app/services/graphql_service.dart';
import 'package:recipe.app/themes.dart';

import '../allGlobalKeys.dart';

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
  var loading = false.obs;
  var currentlyGivenOTP = 0.obs;
  var smsQuery = {
    'userid': '1671',
    'password': 'trP2V3o5bhZTK9JM',
    'sender': 'SMSKAI',
    'to': '9840032880',
    'message':
        'KAAIKANI App Registration Code is 81154.Use this to verify your mobile. By KAAIKANI',
    'reqid': '1',
    'format': '{json|text}',
    'route_id': '3'
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
    emailController.text = '';
    passwordController.text = '';
    firstName.text = '';
    lastName.text = '';
    otpController.text = '';
    phoneNumber.text = '';
    checkboxStatus.value = false;
    loginFormKey.currentState!.reset();
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

  void onUserLogout() async {
    loading.value = true;
    graphqlService = GraphqlService();
    final res = await graphqlService
        .client.value
        .mutate$LogoutUser(Options$Mutation$LogoutUser());
    if (res.hasException) {
      print('${res.exception.toString()}');
      loading.value = false;
    }
    if (res.data != null) {
      print('${res.parsedData!.logout.toJson()}');
      loading.value = false;
      final LocalStorage localStorage =
          new LocalStorage(LocalStorageStrings.auth_token.name);
      localStorage.clear();
      Get.offAll(() => LoginPage());
      Get.snackbar('', 'You are logged out', backgroundColor: Colors.green);
      resetFormField();
    }
  }

  Future exitDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(
              'Are you sure to exit the app ?',
              style: CustomTheme.headerStyle,
            ),
            content: Row(
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                      MoveToBackground.moveTaskToBack();
                    },
                    child: Text(
                      'YES',
                      style: CustomTheme.headerStyle,
                    )),
                SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'NO',
                      style: CustomTheme.headerStyle,
                    )),
              ],
            ),
          );
        });
  }

  void onUserSignIn(BuildContext context) async {
    
    final navigator = Navigator.of(context);
    utilityController.setLoadingState(true);
    final signInResponse = await graphqlService.client.value.mutate$SignIn(
        Options$Mutation$SignIn(
            variables: Variables$Mutation$SignIn(
                emailAddress:
                    '${phoneNumber.text}@${dotenv.env['USER_EMAIL'].toString()}',
                password: passwordController.text,
                rememberMe: checkboxStatus.value)));
    if (signInResponse.hasException) {
      debugPrint('${signInResponse.exception.toString()}');
      utilityController.setLoadingState(false);
      Get.snackbar('Error', 'Please Login again',
          colorText: Colors.white, backgroundColor: Colors.red);
      Get.offAll(() => LoginPage());
    }
    if (signInResponse.data != null) {
      debugPrint('onUserSignIn ${signInResponse.data}');

      final loginData = signInResponse.parsedData?.login.toJson();

      if (loginData?['message'] != null) {
        if (loginData?['errorCode'] == 'INVALID_CREDENTIALS_ERROR') {
          utilityController.setAlertMessage(
              true, 'user does not exist create user');
          utilityController.setLoadingState(false);
        } else {
          utilityController.setAlertMessage(true, loginData?['message']);
          utilityController.setLoadingState(false);
        }
        return;
      }
      if (loginData?['errorCode'] == 'NOT_VERIFIED_ERROR') {
        navigator.pushReplacementNamed('/${PageRouteNames.verify_token.name}');
      } else {
        // login successful
        // UtilService.createSnakeBar(context: context, text: 'Login successful');
        String authToken =
            '${signInResponse.context.entry<HttpLinkResponseContext>()?.headers['vendure-auth-token']}';
        GraphqlService.currentAuthToken = authToken;
        final LocalStorage localStorage =
            new LocalStorage(LocalStorageStrings.auth_token.name);
        localStorage.ready.then((value) => {
              localStorage.setItem(
                  LocalStorageStrings.auth_token.name, authToken)
            });
        // GraphqlService.setToken(authToken);
        Get.offAll(() => StorePage());
      }
      utilityController.setLoadingState(false);
    }
  }

  void checkUniquePhone(String phone) async {
    try {
      print('phone $phone');
      graphqlService = GraphqlService();
      final res = await graphqlService.client.value.query$CheckUniquePhone(
          Options$Query$CheckUniquePhone(
              variables: Variables$Query$CheckUniquePhone(phone: phone)));
      if (res.hasException) {
        print(res.exception.toString());
      }
      if (res.data != null) {
        // true means it is unique and false means it is not unique
        print(res.parsedData?.checkUniquePhone);
        if (res.parsedData!.checkUniquePhone) {
          sendOtpToUser();
        } else {
          Get.snackbar('Error', 'This Phone is already used',
              colorText: Colors.white, backgroundColor: Colors.red);
        }
      }
    } on Exception catch (e) {
      print(e.toString());
    }
  }

  void sendOtpToUser() async {
    try {
      generateRandomDigit();
      print('current otp is ${currentlyGivenOTP.value}');
      // OTP TEMPLATE
      smsQuery.value['message'] =
          'Your OTP is ${currentlyGivenOTP.value} for login to Kaaikani app registration. Please do not share it with anyone.';
      smsQuery.value['to'] = '${phoneNumber.text}';

      final url = Uri.https(dotenv.env['SMS_URL'].toString(),
          'API/WebSMS/Http/v1.0a/index.php', smsQuery.value);
      final res = await http.get(url);
      print('${res.body}');
      Get.offAll(() => VerifyOTPPage());
      resetFormField();
      verifyOTPForm.currentState!.reset();
    } on Exception catch (e) {
      print(e.toString());
    }
  }

  void sendRegistrationSuccessSms() async {
    try {
      smsQuery.value['message'] =
          'Thank you for registering in KAAIKANI app.you can proceed to order in KAAIKANI app';
      smsQuery.value['to'] = '${phoneNumber.text}';

      final url = Uri.https(dotenv.env['SMS_URL'].toString(),
          'API/WebSMS/Http/v1.0a/index.php', smsQuery.value);
      final res = await http.get(url);
      print('${res.body}');
    } on Exception catch (e) {
      print(e.toString());
    }
  }

  void onUserRegister() async {
    utilityController.setLoadingState(true);
    final registerResponse = await graphqlService
        .client.value
        .mutate$Register(Options$Mutation$Register(
            variables: Variables$Mutation$Register(
                input: Input$RegisterCustomerInput(
          emailAddress:
              '${phoneNumber.text}@${dotenv.env['USER_EMAIL'].toString()}',
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
        Get.snackbar('', 'Registered Successfully',
            backgroundColor: Colors.greenAccent);
        sendRegistrationSuccessSms();
        showSignIn.value = true;
        Get.offAll(() => RegisterSuccessPage());
        resetFormField();
      } else {
        utilityController.setAlertMessage(true, 'some error');
      }
    }
    utilityController.setLoadingState(false);
  }

  void requestPasswordReset(String email) async {
    try {
      final response = await this
          .graphqlService
          .client.value
          .mutate$RequestPasswordReset(Options$Mutation$RequestPasswordReset(
              variables: Variables$Mutation$RequestPasswordReset(
                  email:
                      '${phoneNumber.text}@${dotenv.env['USER_EMAIL'].toString()}')));
      if (response.hasException) {
        print(response.exception.toString());
      }
      if (response.data != null) {
        print(
            'requestPasswordReset ${response.parsedData!.requestPasswordReset!.toJson()}');
      }
      generateRandomDigit();
      print('current otp is ${currentlyGivenOTP.value}');
      // Reset password
      smsQuery.value['message'] =
          'your OTP to reset password for Kaaikani app is ${currentlyGivenOTP.value}.Please do not share it with anyone.';
      smsQuery.value['to'] = '${phoneNumber.text}';

      final url = Uri.https(dotenv.env['SMS_URL'].toString(),
          'API/WebSMS/Http/v1.0a/index.php', smsQuery.value);
      final res = await http.get(url);
      print('${res.body}');
      Get.offAll(() => ResetPasswordPage());
      resetFormField();
    } on Exception catch (e) {
      print(e.toString());
    }
  }

  void resetUserPassword() async {
    loading.value = true;
    final res =
        await this.graphqlService.client.value.query$GetPasswordResetToken();
    if (res.hasException) {
      print(res.exception.toString());
      loading.value = false;
    }
    if (res.data != null) {
      var token = res.parsedData!.getPasswordResetToken.toString();
      print('password token $token');
      final response = await this
          .graphqlService
          .client.value
          .mutate$ResetPassword(Options$Mutation$ResetPassword(
              variables: Variables$Mutation$ResetPassword(
                  token: token, password: passwordController.text)));
      if (response.hasException) {
        print(response.exception.toString());
        loading.value = false;
      }
      if (response.data != null) {
        print(
            'resetUserPassword ${response.parsedData!.resetPassword.toJson()}');
        loading.value = false;
        Get.snackbar('', 'Password is successfully reset.Please login now',
            colorText: Colors.white, backgroundColor: Colors.lightGreen);
        Get.offAll(() => LoginPage());
        resetFormField();
      }
      loading.value = false;
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
