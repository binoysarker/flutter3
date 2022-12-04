import 'package:recipe.app/controllers/loginPageController.dart';
import 'package:recipe.app/controllers/userController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../validators/validatorDefinations.dart';

class ForgetPasswordPage extends StatefulWidget {
  const ForgetPasswordPage({Key? key}) : super(key: key);

  @override
  State<ForgetPasswordPage> createState() => _ForgetPasswordPageState();
}

class _ForgetPasswordPageState extends State<ForgetPasswordPage> {
  final forgetPasswordForm = GlobalKey<FormState>();
  final UserController userController = Get.find<UserController>();
  final LoginPageController loginPageController =
      Get.find<LoginPageController>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text('Forget Password'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(5)),
          child: Form(
              key: forgetPasswordForm,
              child: Column(
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Please give us an email to send reset password link',
                        style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      controller: loginPageController.emailController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Email Address',
                      ),
                      keyboardType: TextInputType.emailAddress,
                      autofillHints: [AutofillHints.email],
                      validator: ValidatorDefinition.emailMultiValidator,
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        if (forgetPasswordForm.currentState!.validate()) {
                          print('validated');
                          loginPageController.requestPasswordReset(loginPageController.emailController.text);
                        } else {
                          print('not validated');
                          Get.snackbar('', 'Please Fill up the form', backgroundColor: Colors.yellow,colorText: Colors.red);
                        }
                      },
                      child: Text('Submit'))
                ],
              )),
        ),
      ),
    ));
  }
}
