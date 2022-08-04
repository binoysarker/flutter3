import 'package:ecommerce_app/components/errorMessageComponent.dart';
import 'package:ecommerce_app/components/loadingSpinnerComponent.dart';
import 'package:ecommerce_app/providers/loginPageProvider.dart';
import 'package:ecommerce_app/providers/utilityProvider.dart';
import 'package:ecommerce_app/services/commonVariables.dart';
import 'package:ecommerce_app/services/util_service.dart';
import 'package:ecommerce_app/validators/validatorDefinations.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);
  UtilityProvider utilityProvider = UtilityProvider();

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    super.initState();

  }


  @override
  Widget build(BuildContext context) {
    final loginWatchProvider = context.watch<LoginPageProvider>();
    String setText(){
      String text = '';
      if(loginWatchProvider.showSignIn){
        text = loginWatchProvider.currentSignInProcessName == SignInProcessNames.firebase.name ? 'Google Login' :  'Login';
      }else {
        text = loginWatchProvider.currentSignInProcessName == SignInProcessNames.firebase.name ? 'Google Sign up' :  'Sign up';
      }
      return text;
    }
    String setSignupText(){
      String text = '';
      if(loginWatchProvider.showSignIn){
        text = loginWatchProvider.currentSignInProcessName == SignInProcessNames.firebase.name ? 'Google Sign up' :  'Sign up';
      }else {
        text = loginWatchProvider.currentSignInProcessName == SignInProcessNames.firebase.name ? 'Google Login' :  'Login';
      }
      return text;
    }
    return context.watch<UtilityProvider>().showLoader
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
                          visible: !loginWatchProvider.showSignIn &&
                              loginWatchProvider.currentSignInProcessName !=
                                  SignInProcessNames.firebase.name,
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            child: TextFormField(
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              controller: loginWatchProvider.firstName,
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
                          visible: !loginWatchProvider.showSignIn &&
                              loginWatchProvider.currentSignInProcessName !=
                                  SignInProcessNames.firebase.name,
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            child: TextFormField(
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              controller: loginWatchProvider.lastName,
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
                            controller: loginWatchProvider.emailController,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Email Address',
                            ),
                            validator: ValidatorDefinition.emailMultiValidator,
                          ),
                        ),
                        Visibility(
                          visible: !loginWatchProvider.showSignIn &&
                              loginWatchProvider.currentSignInProcessName !=
                                  SignInProcessNames.firebase.name,
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            child: TextFormField(
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              controller: loginWatchProvider.phoneNumber,
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
                            controller: loginWatchProvider.passwordController,
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
                                value: loginWatchProvider.checkboxStatus,
                                onChanged: (value) {
                                  loginWatchProvider.setCheckboxStatus(value!);
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
                              child: Text(loginWatchProvider.showSignIn
                                  ? 'Login'
                                  : 'Sign up'),
                              onPressed: () {
                                loginWatchProvider.setCurrentSignInProcess(
                                    SignInProcessNames.normal.name);
                                if (loginWatchProvider
                                        .emailController.text.isEmpty ||
                                    loginWatchProvider
                                        .passwordController.text.isEmpty) {
                                  UtilService.createSnakeBar(
                                      text: 'Fill up the form',
                                      context: context);
                                } else {
                                  if (loginWatchProvider.showSignIn) {
                                    loginWatchProvider.onUserSignIn(context);
                                  } else {
                                    loginWatchProvider.onUserRegister(context);
                                  }
                                }
                              },
                            )),
                        SizedBox(
                          height: 10.0,
                        ),
                        Container(
                            height: 50,
                            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                            child: ElevatedButton(
                              child: Text(loginWatchProvider.showSignIn
                                  ? 'Google Login'
                                  : 'Google Sign up'),
                              onPressed: () {
                                loginWatchProvider.onGoogleSignIn(context);
                              },
                            )),
                        Visibility(
                            visible: context.watch<UtilityProvider>().showError,
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
                                loginWatchProvider.toggleShowSignIn();
                              },
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                )),
          );
  }
}
