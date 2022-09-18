import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recipe.app/controllers/cartController.dart';
import 'package:recipe.app/controllers/orderController.dart';
import 'package:recipe.app/pages/cartDetailPage.dart';

class CartButtonComponent extends StatefulWidget {
  bool isLoading = false;
  int totalQuantity = 0;

  CartButtonComponent(
      {Key? key, required this.isLoading, required this.totalQuantity})
      : super(key: key);

  @override
  State<CartButtonComponent> createState() => _CartButtonComponentState();
}

class _CartButtonComponentState extends State<CartButtonComponent> {
  CartController cartController = Get.find<CartController>();
  OrderController orderController = Get.find<OrderController>();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      orderController.getActiveOrders();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        alignment: AlignmentDirectional.topEnd,
        children: [
          IconButton(
              onPressed: () {
                Get.to(() => CartDetailPage());
              },
              icon: Icon(Icons.shopping_cart)),
          CircleAvatar(
            radius: 10,
            backgroundColor: Colors.greenAccent,
            child: Obx(() => orderController.activeOrderResponse.value == null
                ? Text('0')
                : Text(
                    '${orderController.activeOrderResponse.value!.totalQuantity}')),
          )
        ],
      ),
    );
  }
}
