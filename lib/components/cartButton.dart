import 'package:ecommerce_app/controllers/cartController.dart';
import 'package:ecommerce_app/controllers/orderController.dart';
import 'package:ecommerce_app/pages/cartDetail.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartButtonComponent extends StatefulWidget {
  const CartButtonComponent({Key? key}) : super(key: key);

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
          cartController.isLoading.isTrue
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : IconButton(onPressed: () {
                Get.to(() => CartDetailPage());
          }, icon: Icon(Icons.shopping_cart)),
          Visibility(
            visible: orderController.activeOrderResponse.isNotEmpty,
            child: CircleAvatar(
              radius: 10,
              backgroundColor: Colors.greenAccent,
              child: Text('${orderController.activeOrderResponse['totalQuantity']}'),
            ),
          )
        ],
      ),
    );
  }
}
