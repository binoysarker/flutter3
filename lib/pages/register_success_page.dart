import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recipe.app/pages/login_page.dart';
import 'package:recipe.app/themes.dart';

class RegisterSuccessPage extends StatefulWidget {
  const RegisterSuccessPage({Key? key}) : super(key: key);

  @override
  State<RegisterSuccessPage> createState() => _RegisterSuccessPageState();
}

class _RegisterSuccessPageState extends State<RegisterSuccessPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.greenAccent,
      ),
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Registered Successfully', style: CustomTheme.headerStyle4,),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: () {
                Get.offAll(() => LoginPage());
              }, child: Text('Please Login'))
            ],
          ),
        ),
      ),
    );
  }
}
