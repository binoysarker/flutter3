// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recipe.app/components/bottomNavigationComponent.dart';
import 'package:recipe.app/controllers/userController.dart';
import 'package:recipe.app/pages/store_page.dart';
import 'package:recipe.app/services/util_service.dart';
import 'package:recipe.app/themes.dart';

import '../components/cartButtonComponent.dart';
import '../controllers/loginPageController.dart';
import '../controllers/orderController.dart';
import '../services/commonVariables.dart';

class OrdersPage extends StatefulWidget {
  const OrdersPage({Key? key}) : super(key: key);

  @override
  State<OrdersPage> createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {
  final loginPageController = Get.find<LoginPageController>();
  final UserController userController = Get.find<UserController>();
  final OrderController orderController = Get.find<OrderController>();
  var tabIsOpen = false.obs;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    String checkStatus(String status) {
      var currentStat = status;
      if (status == OrderStateEnums.AddingItems.name) {
        currentStat = 'In Cart';
      }
      return currentStat;
    }

    var activeOrder = orderController.activeOrderResponse.value;

    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Orders',
              style: CustomTheme.headerStyle2,
            ),
            CartButtonComponent(
              isLoading: orderController.isLoading.isTrue,
              totalQuantity:
                  orderController.activeOrderResponse.value?.totalQuantity ?? 0,
            )
          ],
        ),
      ),
      body: Container(
          height: double.infinity,
          width: double.infinity,
          child: activeOrder == null ? Center(
            child: Column(
              children: [
                Text('No Orders is present', style: CustomTheme.headerStyle,),
                TextButton(onPressed: (){
                  Get.offAll(() => StorePage());
                }, child: Text('Go to Home', style: CustomTheme.headerStyle2,))
              ],
            ),
          )
              : activeOrder.lines.length > 0
                  ? Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Status: ${checkStatus(activeOrder.state)}',
                              style: CustomTheme.headerStyle,
                            ),
                            Text(
                              'Total Quantity ${activeOrder.totalQuantity}',
                              style: CustomTheme.headerStyle,
                            ),
                            Text(
                              'Total Item Ordered: ${activeOrder.lines.length}',
                              style: CustomTheme.headerStyle,
                            ),
                            Text(
                              'Tax ${UtilService.getCurrencySymble(activeOrder.currencyCode.toString())}${UtilService.formatPriceValue(activeOrder.shippingWithTax)}',
                              style: CustomTheme.headerStyle,
                            ),
                            Text(
                              'Total Price: ${UtilService.getCurrencySymble(activeOrder.currencyCode.toString())}${UtilService.formatPriceValue(activeOrder.totalWithTax)}',
                              style: CustomTheme.headerStyle,
                            ),
                            activeOrder.customFields!.clientRequestToCancel == 1
                                ? Card(
                              color: Colors.red,
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'These orders are being requested by the client to cancel. Admin will process this order now',
                                    style: CustomTheme.headerStyle2,
                                  ),
                                ),
                              ),
                            ) :
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ElevatedButton(
                                  onPressed: () {
                                    orderController
                                        .requestToCancelOrder(activeOrder.id, 1);
                                    orderController.getActiveOrders();
                                  },
                                  child: Text(
                                    'Cancel Order',
                                    style: CustomTheme.headerStyle,
                                  )),
                            ),
                            Expanded(child: ListView(children: activeOrder.lines
                                .map((subItem) => ListTile(
                              isThreeLine: true,
                              title: Text(
                                '${subItem.productVariant.name}',
                                style: CustomTheme.headerStyle,
                              ),
                              leading: FadeInImage.assetNetwork(
                                width: 50,
                                height: 50,
                                placeholder:
                                '${CommonVariableData.placeholder}',
                                image:
                                '${subItem.featuredAsset!.preview}',
                                imageErrorBuilder: (context, error,
                                    stackTrace) =>
                                    Image.asset(
                                        '${CommonVariableData.placeholder}'),
                              ),
                              subtitle: Text(
                                'Price: ${UtilService.getCurrencySymble(activeOrder.currencyCode.toString())}${UtilService.formatPriceValue(subItem.linePriceWithTax)} \n'
                                    'Quantity: ${subItem.quantity}',
                                style: CustomTheme.paragraphStyle,
                              ),
                            ))
                                .toList(),))
                          ],
                        ),
                      ),
                    )
                  : Card(
                      child: Center(
                        child: Text(
                          'There is no order for you',
                          style: CustomTheme.headerStyle,
                        ),
                      ),
                    )),
      bottomNavigationBar: BottomNavigationComponent(),
    );
  }
}
