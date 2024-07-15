import 'dart:convert';
import 'dart:math';

import 'package:encryptor/encryptor.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:localstorage/localstorage.dart';
import 'package:move_to_background/move_to_background.dart';
import 'package:recipe.app/controllers/orderController.dart';
import 'package:recipe.app/controllers/userController.dart';
import 'package:recipe.app/controllers/utilityController.dart';
import 'package:recipe.app/graphqlSection/authentication.graphql.dart';
import 'package:recipe.app/pages/login_page.dart';
import 'package:recipe.app/pages/register_success_page.dart';
import 'package:recipe.app/pages/store_page.dart';
import 'package:recipe.app/pages/verifyOTPPage.dart';
import 'package:recipe.app/services/commonVariables.dart';
import 'package:recipe.app/services/graphql_service.dart';
import 'package:recipe.app/themes.dart';

import '../allGlobalKeys.dart';
import '../graphqlSection/vendureSchema.graphql.dart';

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
  OrderController orderController = Get.find<OrderController>();
  final loginPageState = GlobalKey<LoginPageState>();
  var showSignIn = true.obs;
  var loading = false.obs;
  var currentlyGivenOTP = '0'.obs;
  var smsData = {
    "template_id": "64638d10d6fc0577471d20a2",
    "sender": "KAIMSG",
    "mobiles": "919XXXXXXXXX",
  };
  var headerData = {
    'Accept': 'application/json',
    'authkey': '395929AcYuel89696451b515P1',
    'Content-Type': 'application/json'
  };

  var currentSignInProcessName = '${SignInProcessNames.normal.name}'.obs;

  var checkboxStatus = true.obs;

  void setShowSignIn(bool value) {
    showSignIn.value = value;
  }

  void generateRandomDigit() {
    var rng = new Random();
    var code = rng.nextInt(9000) + 1000;
    currentlyGivenOTP.value = code.toString();
  }

  void resetFormField() {
    emailController.text = '';
    passwordController.text = '';
    firstName.text = '';
    lastName.text = '';
    otpController.text = '';
    checkboxStatus.value = true;
    AllGlobalKeys.loginFormKey.currentState!.reset();
  }

  void setCurrentSignInProcess(String value) {
    currentSignInProcessName.value = value;
  }

  void toggleShowSignIn() {
    showSignIn.value = !showSignIn.value;
  }

  void setCheckboxStatus(bool value) {
    checkboxStatus.value = value;
    rememberStorage.ready.then((value) {
      rememberStorage.setItem(LocalStorageStrings.remember_me_status.name,
          value ? 'true' : 'false');
    });
    //  now check if it is true
    debugPrint('check box status ${checkboxStatus.value}');
    if (value) {
      // this encryption should be static and come from env
      debugPrint('data need to be stored');

      var encryptedUserPhone = Encryptor.encrypt(
          dotenv.env['ENCRYPT_KEY'].toString(), phoneNumber.text);
      var encryptedUserPassword = Encryptor.encrypt(
          dotenv.env['ENCRYPT_KEY'].toString(),
          currentlyGivenOTP.value.toString());
      debugPrint('encrypted data $encryptedUserPhone, $encryptedUserPassword');

      passwordStorage.ready.then((value) {
        passwordStorage.setItem(
            LocalStorageStrings.password.name, encryptedUserPassword);
      });
      phoneStorage.ready.then((value) {
        phoneStorage.setItem(
            LocalStorageStrings.phone.name, encryptedUserPhone);
      });
    } else {
      passwordStorage.ready.then((value) {
        passwordStorage.deleteItem(LocalStorageStrings.password.name);
      });
      phoneStorage.ready.then((value) {
        phoneStorage.deleteItem(LocalStorageStrings.phone.name);
      });
    }
  }

  void onUserLogout(BuildContext context) async {
    loading.value = true;
    graphqlService = GraphqlService();

    final res = await graphqlService.client.value
        .mutate$LogoutUser(Options$Mutation$LogoutUser());
    if (res.hasException) {
      debugPrint('${res.exception.toString()}');
      loading.value = false;
    }
    if (res.data != null) {
      debugPrint('${res.parsedData!.logout.toJson()}');
      loading.value = false;
      authTokenStorage.ready.then((value) => authTokenStorage.clear());
      phoneStorage.ready.then((value) => phoneStorage.clear());
      passwordStorage.ready.then((value) => passwordStorage.clear());
      orderController.resetData();
      // resetFormField();
      AllGlobalKeys.drawerComponentKey.currentState?.closeDrawer();
      // Navigator.pop(context);
      Get.offAll(() => LoginPage());
      // Get.snackbar('', 'You are logged out', backgroundColor: Colors.green);
      // AllGlobalKeys.drawerComponentKey.currentState?.closeDrawer();
      // MoveToBackground.moveTaskToBack();
      SystemNavigator.pop();
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
                      // orderController.removeAllItemFromOrder();
                      // orderController.resetShippingMethodForm();
                      // orderController.getActiveOrders();
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

  void onUserSignIn() async {
    // need to check the check box status
    setCheckboxStatus(checkboxStatus.value);
    // final navigator = Navigator.of(context);
    utilityController.setLoadingState(true);
    final signInResponse = await graphqlService.client.value.mutate$SignIn(
        Options$Mutation$SignIn(
            variables: Variables$Mutation$SignIn(
                emailAddress:
                    '${phoneNumber.text}@${dotenv.env['USER_EMAIL'].toString()}',
                password: currentlyGivenOTP.value.toString(),
                rememberMe: checkboxStatus.value)));
    if (signInResponse.hasException) {
      debugPrint('${signInResponse.exception.toString()}');
      utilityController.setLoadingState(false);
      Get.snackbar('Error', 'Please Login again',
          colorText: Colors.white, backgroundColor: Colors.red);
      Get.to(() => LoginPage());
    }
    if (signInResponse.data != null) {
      debugPrint('onUserSignIn ${signInResponse.data}');

      final loginData = signInResponse.parsedData?.login.toJson();

      if (loginData?['message'] != null) {
        if (loginData?['errorCode'] == 'INVALID_CREDENTIALS_ERROR') {
          utilityController.setAlertMessage(
              true, 'Incorrect username or password');
          utilityController.setLoadingState(false);
        } else {
          utilityController.setAlertMessage(true, loginData?['message']);
          utilityController.setLoadingState(false);
        }
        return;
      }
      if (loginData?['errorCode'] == 'NOT_VERIFIED_ERROR') {
        Get.snackbar('Error', 'This Phone is not verified',
            colorText: Colors.white, backgroundColor: Colors.red);
        // navigator.pushReplacementNamed('/${PageRouteNames.verify_token.name}');
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

  void beforeSignInProcess(String phone) async {
    try {
      debugPrint('phone $phone');
      graphqlService = GraphqlService();
      final res = await graphqlService.client.value.query$CheckUniquePhone(
          Options$Query$CheckUniquePhone(
              variables: Variables$Query$CheckUniquePhone(phone: phone)));
      if (res.hasException) {
        debugPrint(res.exception.toString());
      }
      if (res.data != null) {
        // true means it is unique and false means it is not unique
        debugPrint("${res.parsedData?.checkUniquePhone}");
        if (res.parsedData!.checkUniquePhone) {
          Get.snackbar('Error', 'This Phone is not present, Please register',
              colorText: Colors.white, backgroundColor: Colors.red);
        } else {
          requestPasswordReset();
        }
      }
    } on Exception catch (e) {
      debugPrint(e.toString());
    }
  }

  void checkUniquePhone(String phone) async {
    try {
      debugPrint('phone $phone');
      graphqlService = GraphqlService();
      final res = await graphqlService.client.value.query$CheckUniquePhone(
          Options$Query$CheckUniquePhone(
              variables: Variables$Query$CheckUniquePhone(phone: phone)));
      if (res.hasException) {
        debugPrint(res.exception.toString());
      }
      if (res.data != null) {
        // true means it is unique and false means it is not unique
        debugPrint("${res.parsedData?.checkUniquePhone}");
        if (res.parsedData!.checkUniquePhone) {
          sendOtpToUser();
        } else {
          Get.snackbar('Error', 'This Phone is already used',
              colorText: Colors.white, backgroundColor: Colors.red);
        }
      }
    } on Exception catch (e) {
      debugPrint(e.toString());
    }
  }

  void sendOtpToUser() async {
    try {
      generateRandomDigit();
      debugPrint('current otp is ${currentlyGivenOTP.value}');
      // registration sms
      smsData['mobiles'] = '+91${phoneNumber.text}';
      smsData['OTP'] = '${currentlyGivenOTP.value}';
      smsData['template_id'] = '64638d10d6fc0577471d20a2';

      final url = Uri.https(dotenv.env['SMS_URL'].toString(), '/api/v5/flow/');
      final res =
          await http.post(url, headers: headerData, body: jsonEncode(smsData));
      debugPrint('${res.body}');
      Get.offAll(() => VerifyOTPPage());
      resetFormField();
      AllGlobalKeys.verifyOTPForm.currentState?.reset();
    } on Exception catch (e) {
      debugPrint(e.toString());
    }
  }

  void sendRegistrationSuccessSms() async {
    try {
      // registration sms
      smsData['mobiles'] = '+91${phoneNumber.text}';
      smsData['OTP'] = '${currentlyGivenOTP.value}';
      smsData['template_id'] = '64638d10d6fc0577471d20a2';

      final url = Uri.https(dotenv.env['SMS_URL'].toString(), '/api/v5/flow/');
      final res =
          await http.post(url, headers: headerData, body: jsonEncode(smsData));
      debugPrint('${res.body}');
    } on Exception catch (e) {
      debugPrint(e.toString());
    }
  }

  void onUserRegister() async {
    utilityController.setLoadingState(true);
    final registerResponse = await graphqlService.client.value
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

  void requestPasswordReset() async {
    try {
      final response = await this
          .graphqlService
          .client
          .value
          .mutate$RequestPasswordReset(Options$Mutation$RequestPasswordReset(
              variables: Variables$Mutation$RequestPasswordReset(
                  email:
                      '${phoneNumber.text}@${dotenv.env['USER_EMAIL'].toString()}')));
      if (response.hasException) {
        debugPrint(response.exception.toString());
      }
      if (response.data != null) {
        debugPrint(
            'requestPasswordReset ${response.parsedData!.requestPasswordReset!.toJson()}');
      }
      generateRandomDigit();
      debugPrint('current otp is ${currentlyGivenOTP.value}');
      // Reset password

      smsData['mobiles'] = '+91${phoneNumber.text}';
      smsData['number'] = '${currentlyGivenOTP.value}';
      smsData['template_id'] = '646b079bd6fc050f4533f312';

      final url = Uri.https(dotenv.env['SMS_URL'].toString(), '/api/v5/flow/');
      final res =
          await http.post(url, headers: headerData, body: jsonEncode(smsData));
      debugPrint('${res.body}');
      Get.offAll(() => VerifyOTPPage());
      resetFormField();
    } on Exception catch (e) {
      debugPrint(e.toString());
    }
  }

  void resetUserPassword() async {
    loading.value = true;
    final res =
        await this.graphqlService.client.value.query$GetPasswordResetToken();
    if (res.hasException) {
      debugPrint(res.exception.toString());
      loading.value = false;
    }
    if (res.data != null) {
      var token = res.parsedData!.getPasswordResetToken.toString();
      debugPrint('password token $token');
      final response = await this
          .graphqlService
          .client
          .value
          .mutate$ResetPassword(Options$Mutation$ResetPassword(
              variables: Variables$Mutation$ResetPassword(
                  token: token, password: passwordController.text)));
      if (response.hasException) {
        debugPrint(response.exception.toString());
        loading.value = false;
      }
      if (response.data != null) {
        debugPrint(
            'resetUserPassword ${response.parsedData!.resetPassword.toJson()}');
        loading.value = false;

        // need to save user password
        var encryptedUserPassword = Encryptor.encrypt(
            dotenv.env['ENCRYPT_KEY'].toString(),
            currentlyGivenOTP.value.toString());
        debugPrint('encryptedUserPassword $encryptedUserPassword');
        passwordStorage.ready.then((isReady) {
          if (isReady) {
            passwordStorage.setItem(
                LocalStorageStrings.password.name, encryptedUserPassword);
          }
        });
        onUserSignIn();
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
