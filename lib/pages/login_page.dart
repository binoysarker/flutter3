import 'package:ecommerce_app/components/errorMessageComponent.dart';
import 'package:ecommerce_app/components/loadingSpinnerComponent.dart';
import 'package:ecommerce_app/controllers/loginPageController.dart';
import 'package:ecommerce_app/controllers/utilityController.dart';
import 'package:ecommerce_app/services/commonVariables.dart';
import 'package:ecommerce_app/services/util_service.dart';
import 'package:ecommerce_app/validators/validatorDefinations.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final loginController = Get.find<LoginPageController>();
  final utilityController = Get.find<UtilityController>();

  @override
  void initState() {
    super.initState();
    loginController.resetFormField();
  }

  @override
  Widget build(BuildContext context) {
    String setText() {
      String text = '';
      if (loginController.showSignIn.value) {
        text = loginController.currentSignInProcessName ==
                SignInProcessNames.firebase.name
            ? 'Google Login'
            : 'Login';
      } else {
        text = loginController.currentSignInProcessName ==
                SignInProcessNames.firebase.name
            ? 'Google Sign up'
            : 'Sign up';
      }
      return text;
    }

    String setSignupText() {
      String text = '';
      if (loginController.showSignIn.value) {
        text = loginController.currentSignInProcessName ==
                SignInProcessNames.firebase.name
            ? 'Google Sign up'
            : 'Sign up';
      } else {
        text = loginController.currentSignInProcessName ==
                SignInProcessNames.firebase.name
            ? 'Google Login'
            : 'Login';
      }
      return text;
    }

    return Obx(() => utilityController.showLoader.isTrue
        ? const LoadingSpinnerComponent()
        : Scaffold(
            appBar: AppBar(
              title: Text(setText()),
            ),
            body: Padding(
                padding: const EdgeInsets.all(10),
                child: Card(
                  borderOnForeground: false,
                  child: Form(
                    child: ListView(
                      children: <Widget>[
                        Container(
                            alignment: Alignment.center,
                            padding: const EdgeInsets.all(10),
                            child: const Text(
                              'Ecommerce',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 30),
                            )),
                        Visibility(
                          visible: loginController.showSignIn.isFalse &&
                              loginController.currentSignInProcessName.value !=
                                  SignInProcessNames.firebase.name,
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            child: TextFormField(
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              controller: loginController.firstName,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'First Name',
                              ),
                              validator: RequiredValidator(
                                  errorText: 'First Name is required'),
                            ),
                          ),
                        ),
                        Visibility(
                          visible: loginController.showSignIn.isFalse &&
                              loginController.currentSignInProcessName.value !=
                                  SignInProcessNames.firebase.name,
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            child: TextFormField(
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              controller: loginController.lastName,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Last Name',
                              ),
                              validator: RequiredValidator(
                                  errorText: 'Last Name is required'),
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          child: TextFormField(
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            controller: loginController.emailController,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Email Address',
                            ),
                            validator: ValidatorDefinition.emailMultiValidator,
                          ),
                        ),
                        Visibility(
                          visible: loginController.showSignIn.isFalse &&
                              loginController.currentSignInProcessName.value !=
                                  SignInProcessNames.firebase.name,
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            child: TextFormField(
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              controller: loginController.phoneNumber,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Phone Number',
                              ),
                              validator:
                                  ValidatorDefinition.phoneNumberMultiValidator,
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                          child: TextFormField(
                            obscureText: true,
                            enableSuggestions: false,
                            autocorrect: false,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            controller: loginController.passwordController,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Password',
                            ),
                            validator:
                                ValidatorDefinition.passwordMultiValidator,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Remember me'),
                            Checkbox(
                                value: loginController.checkboxStatus.value,
                                onChanged: (value) {
                                  loginController.setCheckboxStatus(value!);
                                  print('checkbox $value');
                                }),
                          ],
                        ),
                        TextButton(
                          onPressed: () {
                            //forgot password screen
                          },
                          child: const Text(
                            'Forgot Password',
                          ),
                        ),
                        Container(
                            height: 50,
                            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                            child: ElevatedButton(
                              child: Text(loginController.showSignIn.isTrue
                                  ? 'Login'
                                  : 'Sign up'),
                              onPressed: () {
                                loginController.setCurrentSignInProcess(
                                    SignInProcessNames.normal.name);
                                if (loginController
                                        .emailController.text.isEmpty ||
                                    loginController
                                        .passwordController.text.isEmpty) {
                                  UtilService.createSnakeBar(
                                      text: 'Fill up the form',
                                      context: context);
                                } else {
                                  if (loginController.showSignIn.isTrue) {
                                    loginController.onUserSignIn(context);
                                  } else {
                                    loginController.onUserRegister(context);
                                  }
                                }
                              },
                            )),
                        SizedBox(
                          height: 10.0,
                        ),
                        // Container(
                        //     height: 50,
                        //     padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                        //     child: ElevatedButton(
                        //       child: Text(loginWatchProvider.showSignIn
                        //           ? 'Google Login'
                        //           : 'Google Sign up'),
                        //       onPressed: () {
                        //         loginWatchProvider.onGoogleSignIn(context);
                        //       },
                        //     )),
                        Visibility(
                            visible: utilityController.showError.isTrue,
                            child: ErrorMessageComponent()),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            const Text('Does not have account?'),
                            TextButton(
                              child: Text(
                                setSignupText(),
                                style: const TextStyle(fontSize: 20),
                              ),
                              onPressed: () {
                                //signup screen
                                loginController.toggleShowSignIn();
                              },
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                )),
          ));
  }
}
