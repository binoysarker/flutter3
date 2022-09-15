import 'package:recipe.app/controllers/tokenPageController.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';

import '../components/bottomNavigationComponent.dart';

class TokenVerifyPage extends StatelessWidget {
  const TokenVerifyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TokenPageController tokenPageController =
        Get.find<TokenPageController>();
    return Scaffold(
      appBar: AppBar(
        title: Text('Stores'),
      ),
      body: Center(
        child: Card(
          borderOnForeground: false,
          child: ListView(
            children: [
              Container(
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      'Please verify your email address by adding the token',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  autovalidateMode: AutovalidateMode.values.last,
                  controller: tokenPageController.tokenController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Token',
                  ),
                  validator: RequiredValidator(errorText: 'Token is required'),
                ),
              ),
              Container(
                child: ElevatedButton(
                    onPressed: () {
                      // print('${tokenPageController.tokenController.text.length}');
                      tokenPageController.onTokenSubmit(context);
                    },
                    child: Text('Verify Token')),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar:
          BottomNavigationComponent(), // This trailing comma makes auto-formatting nicer for build methods.
    );
    ;
  }
}
