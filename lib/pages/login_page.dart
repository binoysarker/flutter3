import 'package:ecommerce_app/components/loadingSpinnerComponent.dart';
import 'package:ecommerce_app/providers/utilityProvider.dart';
import 'package:ecommerce_app/services/util_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _showSignIn = true;

  Future onSubmit(
      {String email = '',
      String password = '',
      required BuildContext context}) async {
    late UserCredential res;
    try {
      if (_showSignIn) {
        res = await FirebaseAuth.instance
            .signInWithEmailAndPassword(email: email, password: password);
      } else {
        res = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: email, password: password);
      }
      print('response $res');
      context.read<UtilityProvider>().setLoadingState(false);
    }on FirebaseAuthException catch (error) {
      context.read<UtilityProvider>().setLoadingState(false);
      UtilService.showMyDialog(
          context: context, message: '${error.message}');
    }
  }

  @override
  void initState() {
    super.initState();
    print('current user ${FirebaseAuth.instance.currentUser}');
  }

  @override
  Widget build(BuildContext context) {
    return context.watch<UtilityProvider>().showLoader
        ? const LoadingSpinnerComponent()
        : Scaffold(
            appBar: AppBar(
              title: Text('${_showSignIn ? 'Login' : 'Sign up'}'),
            ),
            body: Padding(
                padding: const EdgeInsets.all(10),
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
                      child: TextField(
                        controller: emailController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Email Address',
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                      child: TextField(
                        obscureText: true,
                        controller: passwordController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Password',
                        ),
                      ),
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
                          child: Text(_showSignIn ? 'Login' : 'Sign up'),
                          onPressed: () {
                            if (emailController.text.isEmpty ||
                                passwordController.text.isEmpty) {
                              UtilService.createSnakeBar(
                                  text: 'Fill up the form', context: context);
                            } else {
                              print('name: ${emailController.text}');
                              print('password: ${passwordController.text}');
                              context.read<UtilityProvider>().setLoadingState(true);
                              onSubmit(
                                  context: context,
                                  email: emailController.text,
                                  password: passwordController.text);
                            }
                          },
                        )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text('Does not have account?'),
                        TextButton(
                          child: Text(
                            _showSignIn ? 'Sign up' : 'Login',
                            style: const TextStyle(fontSize: 20),
                          ),
                          onPressed: () {
                            //signup screen
                            setState(() {
                              _showSignIn = !_showSignIn;
                            });
                          },
                        )
                      ],
                    ),
                  ],
                )),
          );
  }
}
