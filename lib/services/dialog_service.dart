import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/orderController.dart';
import '../pages/store_page.dart';

class DialogService{
  final BuildContext context;
  DialogService(this.context);
  OrderController orderController = Get.find<OrderController>();

  Future<void> showMyDialog(
      {required String message,required int methodType}) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Alert'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(message),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                if(methodType == 1){
                  orderController.removeAllItemFromOrder();
                  Get.offAll(() => StorePage());

                }
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

}