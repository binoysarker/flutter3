import 'package:recipe.app/controllers/loginPageController.dart';
import 'package:recipe.app/controllers/userController.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';
import 'package:recipe.app/themes.dart';

class VerifyOTPPage extends StatefulWidget {
  const VerifyOTPPage({Key? key}) : super(key: key);

  @override
  State<VerifyOTPPage> createState() => VerifyOTPPageState();
}

class VerifyOTPPageState extends State<VerifyOTPPage> {
  final verifyOTPForm = GlobalKey<FormState>();
  final UserController userController = Get.find<UserController>();
  final LoginPageController loginPageController =
      Get.find<LoginPageController>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text('Verify OTP',style: CustomTheme.headerStyle,),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(5)),
          child: Form(
              key: verifyOTPForm,
              child: Column(
                children: [
                  Text('Please put the OTP here',style: CustomTheme.headerStyle2,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      controller: loginPageController.otpController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Code',
                      ),
                      validator: RequiredValidator(
                          errorText: 'Code is required'),
                    ),
                  ),
                  TextButton(onPressed: (){
                    loginPageController.sendOtpToUser();
                  }, child: Text('Resen OTP', style: CustomTheme.headerStyle,)),
                  ElevatedButton(
                      onPressed: () {
                        if (verifyOTPForm.currentState!.validate()) {
                          print('validated');
                          print('controller code is ${loginPageController.otpController.text} and current code is ${loginPageController.currentlyGivenOTP.value}');
                          if(loginPageController.currentlyGivenOTP.value.toString() == loginPageController.otpController.text.toString()){
                            print('verified');
                            print('${loginPageController.phoneNumber.text}, ${loginPageController.firstName.text},${loginPageController.lastName.text}');
                            loginPageController.onUserRegister();
                          }else{
                            Get.snackbar('Error', 'Code Does not match',colorText: Colors.white,backgroundColor: Colors.red);
                          }
                        } else {
                          print('not validated');
                          Get.snackbar('', 'Please Fill up the form', backgroundColor: Colors.yellow,colorText: Colors.red);
                        }
                      },
                      child: Text('Submit',style: CustomTheme.headerStyle,))
                ],
              )),
        ),
      ),
    ));
  }
}
