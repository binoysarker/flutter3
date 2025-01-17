import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';
import 'package:recipe.app/components/loadingSpinnerComponent.dart';
import 'package:recipe.app/controllers/loginPageController.dart';
import 'package:recipe.app/controllers/userController.dart';
import 'package:recipe.app/themes.dart';

import '../allGlobalKeys.dart';

class VerifyOTPPage extends StatefulWidget {
  const VerifyOTPPage({Key? key}) : super(key: key);

  @override
  State<VerifyOTPPage> createState() => VerifyOTPPageState();
}

class VerifyOTPPageState extends State<VerifyOTPPage> {
  final UserController userController = Get.find<UserController>();
  final LoginPageController loginPageController =
      Get.find<LoginPageController>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() => loginPageController.loading.isTrue
        ? LoadingSpinnerComponent()
        : SafeArea(
            child: Scaffold(
            appBar: AppBar(
              title: Text(
                'Verify OTP',
                style: CustomTheme.headerStyle,
              ),
              automaticallyImplyLeading: false,
            ),
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5)),
                child: Form(
                    key: AllGlobalKeys.verifyOTPForm,
                    child: Column(
                      children: [
                        Text(
                          'Please put the OTP here',
                          style: CustomTheme.headerStyle2,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            keyboardType: TextInputType.number,
                            controller: loginPageController.otpController,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'OTP',
                            ),
                            validator:
                                RequiredValidator(errorText: 'OTP is required'),
                          ),
                        ),
                        TextButton(
                            onPressed: () {
                              loginPageController.sendOtpToUser();
                            },
                            child: Text(
                              'Resend OTP',
                              style: CustomTheme.headerStyle,
                            )),
                        ElevatedButton(
                            onPressed: () {
                              if (AllGlobalKeys.verifyOTPForm.currentState!
                                  .validate()) {
                                debugPrint('validated');
                                debugPrint(
                                    'controller code is ${loginPageController.otpController.text} and current code is ${loginPageController.currentlyGivenOTP.value}');
                                if (loginPageController.currentlyGivenOTP.value
                                        .toString() ==
                                    loginPageController.otpController.text
                                        .toString()) {
                                  debugPrint('verified');
                                  debugPrint(
                                      '${loginPageController.phoneNumber.text}, ${loginPageController.firstName.text},${loginPageController.lastName.text}');
                                  loginPageController.passwordController.text =
                                      loginPageController
                                          .currentlyGivenOTP.value
                                          .toString();
                                  if (loginPageController.showSignIn.isTrue) {
                                    // do the sign in process
                                    loginPageController.resetUserPassword();
                                  } else {
                                    //   do the registration process

                                    loginPageController.onUserRegister();
                                  }
                                } else {
                                  Get.snackbar('Error', 'OTP Does not match',
                                      colorText: Colors.white,
                                      backgroundColor: Colors.red);
                                }
                              } else {
                                debugPrint('not validated');
                                Get.snackbar('', 'Please Fill up the form',
                                    backgroundColor: Colors.yellow,
                                    colorText: Colors.red);
                              }
                            },
                            child: Text(
                              'Submit',
                              style: CustomTheme.headerStyle,
                            ))
                      ],
                    )),
              ),
            ),
          )));
  }
}
