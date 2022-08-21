import 'package:ecommerce_app/controllers/cartController.dart';
import 'package:ecommerce_app/controllers/orderController.dart';
import 'package:ecommerce_app/pages/cartDetailPage.dart';
import 'package:ecommerce_app/themes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartButtonComponent extends StatefulWidget {
  bool isLoading = false;
  int totalQuantity = 0;
  CartButtonComponent({Key? key, required this.isLoading, required this.totalQuantity}) : super(key: key);

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
          widget.isLoading
              ? Center(
                  child: CircularProgressIndicator(color: CustomTheme.progressIndicatorColor,),
                )
              : IconButton(onPressed: () {
                Get.to(() => CartDetailPage());
          }, icon: Icon(Icons.shopping_cart)),
          CircleAvatar(
            radius: 10,
            backgroundColor: Colors.greenAccent,
            child: Text('${widget.totalQuantity}'),
          )
        ],
      ),
    );
  }
}
