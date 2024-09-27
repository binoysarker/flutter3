import 'package:encryptor/encryptor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';
import 'package:recipe.app/components/errorMessageComponent.dart';
import 'package:recipe.app/components/loadingSpinnerComponent.dart';
import 'package:recipe.app/controllers/loginPageController.dart';
import 'package:recipe.app/controllers/utilityController.dart';
import 'package:recipe.app/services/commonVariables.dart';
import 'package:recipe.app/services/graphql_service.dart';
import 'package:recipe.app/themes.dart';
import 'package:recipe.app/validators/validatorDefinations.dart';

import '../allGlobalKeys.dart';
import '../controllers/collectionsController.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  final loginPageController = Get.find<LoginPageController>();
  final utilityController = Get.find<UtilityController>();
  final CollectionsController collectionsController =
      Get.find<CollectionsController>();

  @override
  initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      loginPageController.resetFormField();
      collectionsController.getChannelList();
      // i have token now but need to check remember me

      rememberStorage.ready.then((isReady) {
        var password, phone;
        var rememberMe = rememberStorage
            .getItem(LocalStorageStrings.remember_me_status.name);
        debugPrint('remember me status $rememberMe');
        phoneStorage.ready.then((isReady) {
          if (isReady &&
              phoneStorage.getItem(LocalStorageStrings.phone.name) != null) {
            phone = Encryptor.decrypt(dotenv.env['ENCRYPT_KEY'].toString(),
                phoneStorage.getItem(LocalStorageStrings.phone.name));
            debugPrint('phone $phone');
            if (rememberMe == 'true' && phone != null) {
              selectedChannelTokenStorage.ready.then((value) {
                if(value){
                  var channelToken = selectedChannelTokenStorage
                      .getItem(LocalStorageStrings.selected_channel_token.name);
                  if (channelToken != null) {
                    GraphqlService.setChannelToken(channelToken);
                  }

                }

                passwordStorage.ready.then((value) {
                  password = Encryptor.decrypt(
                      dotenv.env['ENCRYPT_KEY'].toString(),
                      passwordStorage
                          .getItem(LocalStorageStrings.password.name));
                  debugPrint('password data $password');
                  //  now let the user login using this phone and password
                  loginPageController.phoneNumber.text = phone;
                  loginPageController.passwordController.text = password;
                  loginPageController.currentlyGivenOTP.value = password;
                  loginPageController.checkboxStatus.value =
                  rememberMe == 'true' ? true : false;
                  loginPageController.onUserSignIn();
                });

              });

            }
          }
        });

      });
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
            onWillPop: () {
              loginPageController.resetFormField();
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
                      key: AllGlobalKeys.loginFormKey,
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
                                visible:
                                    loginPageController.showSignIn.isFalse &&
                                        loginPageController
                                                .currentSignInProcessName
                                                .value !=
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
                                visible:
                                    loginPageController.showSignIn.isFalse &&
                                        loginPageController
                                                .currentSignInProcessName
                                                .value !=
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
                            visible: loginPageController
                                    .currentSignInProcessName.value !=
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
                                validator: ValidatorDefinition
                                    .phoneNumberMultiValidator,
                              ),
                            ),
                          ),
                          Obx(() => collectionsController.isLoading.isTrue
                              ? Center(
                                  child: CircularProgressIndicator(
                                  color: CustomTheme.progressIndicatorColor,
                                ))
                              : Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: DropdownButtonFormField(
                                    items: collectionsController
                                        .channelDropdownListOptions
                                        .map((element) =>
                                            DropdownMenuItem<String>(
                                                value: '$element',
                                                child: Text('$element')))
                                        .toList(),
                                    onChanged: (data) {
                                      debugPrint('selected city $data');
                                      collectionsController
                                          .onCitySelected(data.toString());
                                    },
                                    decoration: InputDecoration(
                                      label: Text(
                                        'Please select a city',
                                        style: CustomTheme.headerStyle,
                                      ),
                                      border: OutlineInputBorder(),
                                    ),
                                  ),
                                )),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Remember me',
                                  style: CustomTheme.paragraphStyle),
                              Checkbox(
                                  value:
                                      loginPageController.checkboxStatus.value,
                                  onChanged: (bool? value) {
                                    debugPrint('checkbox $value');
                                    loginPageController
                                        .setCheckboxStatus(value!);
                                  }),
                            ],
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
                                  if (collectionsController
                                      .selectedChannel.value.isNotEmpty) {
                                    loginPageController.setCurrentSignInProcess(
                                        SignInProcessNames.normal.name);
                                    if (loginPageController.showSignIn.isTrue) {
                                      loginPageController.beforeSignInProcess(
                                          loginPageController.phoneNumber.text);
                                    } else {
                                      loginPageController.checkUniquePhone(
                                          loginPageController.phoneNumber.text);
                                    }
                                  } else {
                                    Get.snackbar(
                                        'Error', 'Please select a city',
                                        colorText: Colors.white,
                                        backgroundColor: Colors.red);
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
                                    loginPageController.showSignIn.isFalse
                                        ? "Already have account?"
                                        : "New User Please Register",
                                    style: CustomTheme.paragraphStyle,
                                  )),
                              TextButton(
                                child: Text(
                                  setSignupText(),
                                  style: CustomTheme.headerStyle3,
                                ),
                                onPressed: () {
                                  //signup screen
                                  // loginPageController.phoneNumber.text = '';
                                  loginPageController.resetFormField();
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
