import 'package:recipe.app/components/loadingSpinnerComponent.dart';
import 'package:recipe.app/controllers/loginPageController.dart';
import 'package:recipe.app/controllers/userController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recipe.app/themes.dart';

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
        title: Text('Forget Password',style: CustomTheme.headerStyle2,),
      ),
      body: Obx(() => loginPageController.loading.isTrue ? LoadingSpinnerComponent(): Padding(
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
                        'Please give your phone number to send reset password message',
                        style: CustomTheme.headerStyle,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
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
                  TextButton(onPressed: (){
                    loginPageController.requestPasswordReset();
                  }, child: Text('Resend OTP', style: CustomTheme.headerStyle,)),
                  ElevatedButton(
                      onPressed: () {
                        if (forgetPasswordForm.currentState!.validate()) {
                          print('validated');
                          loginPageController.requestPasswordReset();
                        } else {
                          print('not validated');
                          Get.snackbar('', 'Please Fill up the form', backgroundColor: Colors.yellow,colorText: Colors.red);
                        }
                      },
                      child: Text('Submit', style: CustomTheme.headerStyle,))
                ],
              )),
        ),
      )),
    ));
  }
}
