import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';
import 'package:recipe.app/components/errorMessageComponent.dart';
import 'package:recipe.app/components/loadingSpinnerComponent.dart';
import 'package:recipe.app/controllers/loginPageController.dart';
import 'package:recipe.app/controllers/userController.dart';
import 'package:recipe.app/controllers/utilityController.dart';
import 'package:recipe.app/pages/forgetPasswordPage.dart';
import 'package:recipe.app/services/commonVariables.dart';
import 'package:recipe.app/services/util_service.dart';
import 'package:recipe.app/themes.dart';
import 'package:recipe.app/validators/validatorDefinations.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  final loginFormKey = GlobalKey<FormState>();
  final loginPageController = Get.find<LoginPageController>();
  final utilityController = Get.find<UtilityController>();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      loginPageController.resetFormField();
    });

  }

  @override
  Widget build(BuildContext context) {
    String setText() {
      String text = '';
      if (loginPageController.showSignIn.value) {
        text = loginPageController.currentSignInProcessName ==
                SignInProcessNames.firebase.name
            ? 'Google Login'
            : 'Login';
      } else {
        text = loginPageController.currentSignInProcessName ==
                SignInProcessNames.firebase.name
            ? 'Google Sign up'
            : 'Sign up';
      }
      return text;
    }

    String setSignupText() {
      String text = '';
      if (loginPageController.showSignIn.value) {
        text = loginPageController.currentSignInProcessName ==
                SignInProcessNames.firebase.name
            ? 'Google Sign up'
            : 'Sign up';
      } else {
        text = loginPageController.currentSignInProcessName ==
                SignInProcessNames.firebase.name
            ? 'Google Login'
            : 'Login';
      }
      return text;
    }

    return Obx(() => utilityController.showLoader.isTrue
        ? const LoadingSpinnerComponent()
        : WillPopScope(
      onWillPop: (){
        loginPageController.exitDialog(context);
        return Future.value(false);
      },
          child: Scaffold(
              appBar: AppBar(
                automaticallyImplyLeading: false,
                title: Text(
                  setText(),
                  style: CustomTheme.headerStyle3,
                ),
              ),
              body: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Card(
                    borderOnForeground: false,
                    child: Form(
                      key: loginFormKey,
                      child: ListView(
                        children: <Widget>[
                          Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.all(10),
                              child: Center(
                                child: CircleAvatar(
                                  radius: 50,
                                  backgroundImage:
                                      AssetImage('assets/images/splash.png'),
                                ),
                              )),
                          AutofillGroup(
                              child: Column(
                            children: [
                              Visibility(
                                visible: loginPageController.showSignIn.isFalse &&
                                    loginPageController
                                            .currentSignInProcessName.value !=
                                        SignInProcessNames.firebase.name,
                                child: Container(
                                  padding: const EdgeInsets.all(10),
                                  child: TextFormField(
                                    autovalidateMode:
                                        AutovalidateMode.onUserInteraction,
                                    controller: loginPageController.firstName,
                                    decoration: const InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: 'First Name',
                                    ),
                                    autofillHints: [AutofillHints.givenName],
                                    keyboardType: TextInputType.name,
                                    validator: RequiredValidator(
                                        errorText: 'First Name is required'),
                                  ),
                                ),
                              ),
                              Visibility(
                                visible: loginPageController.showSignIn.isFalse &&
                                    loginPageController
                                            .currentSignInProcessName.value !=
                                        SignInProcessNames.firebase.name,
                                child: Container(
                                  padding: const EdgeInsets.all(10),
                                  child: TextFormField(
                                    autovalidateMode:
                                        AutovalidateMode.onUserInteraction,
                                    controller: loginPageController.lastName,
                                    decoration: const InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: 'Last Name',
                                    ),
                                    keyboardType: TextInputType.name,
                                    autofillHints: [AutofillHints.familyName],
                                    validator: RequiredValidator(
                                        errorText: 'Last Name is required'),
                                  ),
                                ),
                              ),
                            ],
                          )),

                          Visibility(
                            visible:
                                loginPageController.currentSignInProcessName.value !=
                                    SignInProcessNames.firebase.name,
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              child: TextFormField(
                                style: CustomTheme.paragraphStyle,
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                controller: loginPageController.phoneNumber,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Phone Number',
                                ),
                                keyboardType: TextInputType.phone,
                                autofillHints: [AutofillHints.telephoneNumber],
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
                              controller: loginPageController.passwordController,
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
                              Text('Remember me',
                                  style: CustomTheme.paragraphStyle),
                              Checkbox(
                                  value: loginPageController.checkboxStatus.value,
                                  onChanged: (value) {
                                    loginPageController.setCheckboxStatus(value!);
                                    print('checkbox $value');
                                  }),
                            ],
                          ),
                          TextButton(
                            onPressed: () {
                              Get.to(() => ForgetPasswordPage());
                            },
                            child: Text(
                              'Forgot Password',
                              style: CustomTheme.paragraphStyle,
                            ),
                          ),
                          Container(
                              height: 50,
                              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                              child: ElevatedButton(
                                child: Text(
                                  loginPageController.showSignIn.isTrue
                                      ? 'Login'
                                      : 'Sign up',
                                  style: CustomTheme.headerStyle,
                                ),
                                onPressed: () {
                                  loginPageController.setCurrentSignInProcess(
                                      SignInProcessNames.normal.name);
                                  if (
                                      loginPageController
                                          .passwordController.text.isEmpty) {
                                    UtilService.createSnakeBar(
                                        text: 'Fill up the form',
                                        context: context);
                                  } else {
                                    if (loginPageController.showSignIn.isTrue) {
                                      loginPageController.onUserSignIn(context);
                                    } else {
                                      loginPageController.checkUniquePhone(loginPageController.phoneNumber.text);
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
                              Obx(() => Text(
                                    '${loginPageController.showSignIn.isFalse ? "Already have account?" : "Does not have account?"}',
                                    style: CustomTheme.paragraphStyle,
                                  )),
                              TextButton(
                                child: Text(
                                  setSignupText(),
                                  style: CustomTheme.headerStyle3,
                                ),
                                onPressed: () {
                                  //signup screen
                                  loginPageController.toggleShowSignIn();
                                },
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  )),
            ),
        ));
  }
}
