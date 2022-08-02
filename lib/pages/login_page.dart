import 'package:ecommerce_app/components/loadingSpinnerComponent.dart';
import 'package:ecommerce_app/providers/loginPageProvider.dart';
import 'package:ecommerce_app/providers/utilityProvider.dart';
import 'package:ecommerce_app/services/util_service.dart';
import 'package:ecommerce_app/validators/validatorDefinations.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final loginWatchProvider = context.watch<LoginPageProvider>();
    return context.watch<UtilityProvider>().showLoader
        ? const LoadingSpinnerComponent()
        : Scaffold(
            appBar: AppBar(
              title: Text(loginWatchProvider.showSignIn ? 'Login' : 'Sign up'),
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
                            validator:
                                EmailValidator(errorText: 'Invalid email'),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                          child: TextFormField(
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
                                if (loginWatchProvider
                                        .emailController.text.isEmpty ||
                                    loginWatchProvider
                                        .passwordController.text.isEmpty) {
                                  UtilService.createSnakeBar(
                                      text: 'Fill up the form',
                                      context: context);
                                } else {

                                  // context
                                  //     .read<UtilityProvider>()
                                  //     .setLoadingState(true);
                                  loginWatchProvider.onUserSignIn();

                                }
                              },
                            )),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            const Text('Does not have account?'),
                            TextButton(
                              child: Text(
                                loginWatchProvider.showSignIn
                                    ? 'Sign up'
                                    : 'Login',
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
