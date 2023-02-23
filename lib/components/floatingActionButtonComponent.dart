import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recipe.app/controllers/orderController.dart';

import '../pages/checkout_page.dart';
import '../themes.dart';

class FloatingActionButtonComponent extends StatefulWidget {
  const FloatingActionButtonComponent({Key? key}) : super(key: key);

  @override
  State<FloatingActionButtonComponent> createState() =>
      _FloatingActionButtonComponentState();
}

class _FloatingActionButtonComponentState
    extends State<FloatingActionButtonComponent> {
  final OrderController orderController = Get.find<OrderController>();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      orderController.getActiveOrders();
    });
  }

  @override
  Widget build(BuildContext context) {
    var activeOrder = orderController.activeOrderResponse.value;
    return activeOrder?.lines.length == 0
        ? SizedBox()
        : FloatingActionButton.extended(
      onPressed: () {
        Get.to(() => CheckoutPage());
      },
      label: Text(
        'Checkout',
        style: CustomTheme.headerStyle,
      ),
      icon: Icon(Icons.card_travel),
    );
  }
}
