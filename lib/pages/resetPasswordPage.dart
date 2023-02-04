import 'package:recipe.app/components/loadingSpinnerComponent.dart';
import 'package:recipe.app/controllers/loginPageController.dart';
import 'package:recipe.app/controllers/userController.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';
import 'package:recipe.app/themes.dart';

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({Key? key}) : super(key: key);

  @override
  State<ResetPasswordPage> createState() => ResetPasswordPageState();
}

class ResetPasswordPageState extends State<ResetPasswordPage> {
  final resetPasswordForm = GlobalKey<FormState>();
  final UserController userController = Get.find<UserController>();
  final LoginPageController loginPageController =
      Get.find<LoginPageController>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text('Reset Password', style: CustomTheme.headerStyle3,),
      ),
      body: Obx(() => loginPageController.loading.isTrue ? LoadingSpinnerComponent() : Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(5)),
          child: Form(
              key: resetPasswordForm,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      controller: loginPageController.tokenController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Code',
                      ),
                      validator: RequiredValidator(
                          errorText: 'Code field is required'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      controller: loginPageController.passwordController,
                      obscureText: true,
                      enableSuggestions: false,
                      autocorrect: false,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                      ),
                      validator: RequiredValidator(
                          errorText: 'Password field is required'),
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        if (resetPasswordForm.currentState!.validate()) {
                          print('validated');
                          loginPageController.resetUserPassword();
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
