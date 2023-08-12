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

    var currentUser = userController.currentAuthenticatedUser.value!;
    var activeOrder = orderController.activeOrderResponse.value;

    var currencySymbol =
        UtilService.getCurrencySymble(currentUser.orders.items.first.code);

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
          child: currentUser.orders == null
              ? Center(
                  child: Column(
                    children: [
                      Text(
                        'No Orders is present',
                        style: CustomTheme.headerStyle,
                      ),
                      TextButton(
                          onPressed: () {
                            Get.offAll(() => StorePage());
                          },
                          child: Text(
                            'Go to Home',
                            style: CustomTheme.headerStyle2,
                          ))
                    ],
                  ),
                )
              : currentUser.orders.items.length > 0
                  ? Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListView(
                          children: currentUser.orders.items
                              .map((singleOrderItem) => Card(
                            elevation: 8.0,
                                child: ExpansionTile(

                            title: Text(
                                'Code: ${singleOrderItem.code}',
                                style: CustomTheme.headerStyle,
                            ),
                            subtitle: singleOrderItem.customFields!.clientRequestToCancel == 1 ? Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('This Order is being requested to cancel by you',style: CustomTheme.headerStyle,),
                                  Text('Admin will take care of it',style: CustomTheme.headerStyle,),
                                ],
                            ) : Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Total Price: $currencySymbol ${UtilService.formatPriceValue(singleOrderItem.totalWithTax)}',
                                    style: CustomTheme.headerStyle,
                                  ),
                                  Text(
                                    'Total Items: ${singleOrderItem.lines.length}',
                                    style: CustomTheme.headerStyle,
                                  ),
                                  Text(
                                    'State: ${checkStatus(singleOrderItem.state)}',
                                    style: CustomTheme.headerStyle,
                                  ),
                                  ElevatedButton(onPressed: (){
                                    orderController.requestToCancelOrder(singleOrderItem.id, 1);
                                  }, child: Text('Cancel Order'))
                                ],
                            ),
                            children: singleOrderItem.lines
                                  .map((singleLineItem) => ListTile(
                                title: Text(singleLineItem
                                    .productVariant.name,style: CustomTheme.headerStyle,),
                                subtitle: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Price: $currencySymbol ${UtilService.formatPriceValue(singleLineItem.productVariant.priceWithTax)}',style: CustomTheme.paragraphStyle,),

                                  ],
                                ),
                                leading: FadeInImage.assetNetwork(
                                  width: 50,
                                  height: 50,
                                  placeholder: CommonVariableData
                                      .placeholder,
                                  image:
                                  '${singleLineItem.featuredAsset?.preview}',
                                  imageErrorBuilder: (context,
                                      error, stackTrace) =>
                                      Image.asset(
                                        CommonVariableData
                                            .placeholder,
                                        width: 50,
                                        height: 50,
                                      ),
                                ),
                            ))
                                  .toList(),
                          ),
                              ))
                              .toList(),
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
