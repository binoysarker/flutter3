import 'dart:io';

import 'package:adaptive_action_sheet/adaptive_action_sheet.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recipe.app/components/bottomNavigationComponent.dart';
import 'package:recipe.app/controllers/cartController.dart';
import 'package:recipe.app/controllers/orderController.dart';
import 'package:recipe.app/controllers/userController.dart';
import 'package:recipe.app/graphqlSection/orders.graphql.dart';
import 'package:recipe.app/pages/checkout_page.dart';
import 'package:recipe.app/services/commonVariables.dart';
import 'package:recipe.app/services/util_service.dart';
import 'package:recipe.app/themes.dart';

class CartDetailPage extends StatefulWidget {
  const CartDetailPage({Key? key}) : super(key: key);

  @override
  State<CartDetailPage> createState() => _CartDetailPageState();
}

class _CartDetailPageState extends State<CartDetailPage> {
  OrderController orderController = Get.find<OrderController>();
  UserController userController = Get.find<UserController>();
  CartController cartController = Get.find<CartController>();
  List<String> list = ['Increase Quantity', 'Decrease Quantity', 'Delete Item'];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      orderController.getActiveOrders();
      userController.getActiveCustomer();
      if (orderController.activeOrderResponse.value!.state ==
          OrderStateEnums.ArrangingPayment.name) {
        orderController.transitionToAddingItems();
      }
    });
  }

  void showActionSheet(BuildContext context, Fragment$Cart$lines item) {
    showAdaptiveActionSheet(
      context: context,
      title: const Text('Action'),
      androidBorderRadius: 30,
      actions: <BottomSheetAction>[
        BottomSheetAction(
            title: Obx(() => cartController.isLoading.isTrue
                ? Center(
                    child: CircularProgressIndicator(
                      color: CustomTheme.progressIndicatorColor,
                    ),
                  )
                : Text('Increase Quantity')),
            onPressed: (_) {
              cartController.addItemToCart(item.productVariant.id, 1);
              Navigator.pop(context);
            }),
        BottomSheetAction(
            title: Obx(() => orderController.isLoading.isTrue
                ? Center(
                    child: CircularProgressIndicator(
                      color: CustomTheme.progressIndicatorColor,
                    ),
                  )
                : Text('Delete Item')),
            onPressed: (_) {
              orderController.removeItemFromOrder(item.id);
              Navigator.pop(context);
            }),
      ],
      cancelAction: CancelAction(
          title: const Text(
              'Cancel')), // onPressed parameter is optional by default will dismiss the ActionSheet
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text('Cart Detail'),
        actions: [
          IconButton(
              onPressed: () {
                Get.defaultDialog(
                    title: 'Warning',
                    content: Column(
                      children: [Text('Are you sure to delete all items')],
                    ),
                    actions: [
                      TextButton(
                          onPressed: () {
                            orderController.removeAllItemFromOrder();
                            sleep(Duration(seconds: 1));
                            Navigator.pop(context);
                          },
                          child: Text('OK')),
                    ]);
              },
              icon: Icon(Icons.remove_shopping_cart_outlined))
        ],
      ),
      body: Obx(() => orderController.activeOrderResponse.value!.lines.isEmpty
          ? Card(
              child: Container(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'No Items are in Cart',
                        style: CustomTheme.headerStyle,
                      ),
                      Text('Please add an Item'),
                      TextButton(
                          onPressed: () {
                            Get.offNamedUntil('home', (route) => route.isFirst);
                          },
                          child: Text('Go To Home'))
                    ],
                  ),
                ),
              ),
            )
          : Card(
              child: ListView.builder(
                  itemBuilder: (context, index) => Card(
                        child: ListTile(
                          isThreeLine: true,
                          leading: FadeInImage.assetNetwork(
                            width: 50,
                            height: 50,
                            placeholder: '${CommonVariableData.placeholder}',
                            image:
                                '${orderController.activeOrderResponse.value!.lines[index].featuredAsset?.preview}',
                            imageErrorBuilder: (context, error, stackTrace) =>
                                Image.asset(
                                    '${CommonVariableData.placeholder}'),
                          ),
                          title: Text(
                              '${orderController.activeOrderResponse.value!.lines[index].productVariant.name}'),
                          subtitle: userController.currentAuthenticatedUser.value!.orders.items.isNotEmpty ? Text(
                            'Price with Tax: ${UtilService.getCurrencySymble(userController.currentAuthenticatedUser.value!.orders.items.first.currencyCode.name)}${orderController.activeOrderResponse.value!.lines[index].linePriceWithTax}\nQuantity: ${orderController.activeOrderResponse.value!.lines[index].quantity}',
                            style: CustomTheme.headerStyle,
                          ) : Text(''),
                          onTap: () {
                            showActionSheet(
                                context,
                                orderController
                                    .activeOrderResponse.value!.lines[index]);
                          },
                          trailing: Icon(Icons.more_vert),
                        ),
                      ),
                  itemCount:
                      orderController.activeOrderResponse.value!.lines.length),
            )),
      bottomNavigationBar: BottomNavigationComponent(),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Get.to(() => CheckoutPage());
        },
        label: Text('Checkout'),
        icon: Icon(Icons.card_travel),
      ),
    ));
  }
}
