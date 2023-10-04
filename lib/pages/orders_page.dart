// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:recipe.app/components/bottomNavigationComponent.dart';
import 'package:recipe.app/components/loadingSpinnerComponent.dart';
import 'package:recipe.app/controllers/userController.dart';
import 'package:recipe.app/services/util_service.dart';
import 'package:recipe.app/themes.dart';

import '../components/cartButtonComponent.dart';
import '../controllers/loginPageController.dart';
import '../controllers/orderController.dart';
import '../graphqlSection/authentication.graphql.dart';
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
    initializeDateFormatting('en-IN', '');
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      userController.getActiveCustomer();
      orderController.getActiveOrders();
    });
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
    // bool showOrder(Query$GetActiveCustomer$activeCustomer$orders$items singleOrderItem){
    //   return singleOrderItem.customFields?.clientRequestToCancel != 1;
    // }

    var currentUser = userController.currentAuthenticatedUser.value!;
    // var activeOrder = orderController.activeOrderResponse.value;

    var currencySymbol = currentUser.orders.items.length > 0
        ? UtilService.getCurrencySymble(currentUser.orders.items.first.code)
        : r'₹';

    DateTime parseDate(String? dateString) {
      var data = DateTime.now();

      if (dateString != null) {
        data = DateFormat('yyyy-MM-dd', 'en-IN').parse(dateString);
      }
      return data;
    }

    List<Query$GetActiveCustomer$activeCustomer$orders$items> getSortedList(
        List<Query$GetActiveCustomer$activeCustomer$orders$items> list) {
      list.sort((a, b) =>
          parseDate(b.orderPlacedAt).compareTo(parseDate(a.orderPlacedAt)));
      return list;
    }

    bool shouldShowButton(
        Query$GetActiveCustomer$activeCustomer$orders$items singleItem) {
      var status = true;
      if (singleItem.state == OrderStateEnums.Cancelled.name ||
          singleItem.state == OrderStateEnums.Delivered.name ||
          singleItem.state == OrderStateEnums.Shipped.name) {
        status = false;
      }
      return status;
    }

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
      body: Obx(() => orderController.isLoading.isTrue
          ? LoadingSpinnerComponent()
          : Container(
              height: double.infinity,
              width: double.infinity,
              child: currentUser.orders.items.isNotEmpty
                  ? Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListView(
                          children: getSortedList(currentUser.orders.items)
                              .map((singleOrderItem) => Card(
                                    elevation: 8.0,
                                    child: ExpansionTile(
                                      title: Text(
                                        'Code: ${singleOrderItem.code}',
                                        style: CustomTheme.headerStyle,
                                      ),
                                      subtitle:
                                          singleOrderItem.customFields!
                                                      .clientRequestToCancel ==
                                                  1
                                              ? Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'This Order is being requested to cancel by you',
                                                      style: CustomTheme
                                                          .headerStyle,
                                                    ),
                                                    Text(
                                                      'Admin will take care of it',
                                                      style: CustomTheme
                                                          .headerStyle,
                                                    ),
                                                  ],
                                                )
                                              : Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Total Price: $currencySymbol ${UtilService.formatPriceValue(singleOrderItem.totalWithTax)}',
                                                      style: CustomTheme
                                                          .headerStyle,
                                                    ),
                                                    Text(
                                                      'Total Items: ${singleOrderItem.lines.length}',
                                                      style: CustomTheme
                                                          .headerStyle,
                                                    ),
                                                    Text(
                                                      'State: ${checkStatus(singleOrderItem.state)}',
                                                      style: CustomTheme
                                                          .headerStyle,
                                                    ),
                                                    Text(
                                                      'Placed At: ${DateFormat('yyy-MM-dd HH:mm a', 'en-IN').format(parseDate(singleOrderItem.orderPlacedAt))}',
                                                      style: CustomTheme
                                                          .headerStyle,
                                                    ),
                                                    shouldShowButton(
                                                            singleOrderItem)
                                                        ? ElevatedButton(
                                                            onPressed:
                                                                () =>
                                                                    showDialog<
                                                                        String>(
                                                                      context:
                                                                          context,
                                                                      builder: (BuildContext
                                                                              context) =>
                                                                          AlertDialog(
                                                                        title:
                                                                            Text(
                                                                          'Are you sure you want cancel this order?',
                                                                          style:
                                                                              CustomTheme.headerStyle,
                                                                        ),
                                                                        actions: <
                                                                            Widget>[
                                                                          TextButton(
                                                                            onPressed: () =>
                                                                                Navigator.pop(context, 'Cancel'),
                                                                            child:
                                                                                Text(
                                                                              'Cancel',
                                                                              style: CustomTheme.headerStyle,
                                                                            ),
                                                                          ),
                                                                          TextButton(
                                                                            onPressed:
                                                                                () {
                                                                              orderController.requestToCancelOrder(singleOrderItem.id, 1);
                                                                              Navigator.pop(context, 'OK');
                                                                            },
                                                                            child:
                                                                                Text(
                                                                              'OK',
                                                                              style: CustomTheme.headerStyle,
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                            child: Text(
                                                                'Cancel Order'))
                                                        : SizedBox()
                                                  ],
                                                ),
                                      children: singleOrderItem.lines
                                          .map((singleLineItem) => ListTile(
                                                title: Text(
                                                  singleLineItem
                                                      .productVariant.name,
                                                  style:
                                                      CustomTheme.headerStyle,
                                                ),
                                                subtitle: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Price: $currencySymbol ${UtilService.formatPriceValue(singleLineItem.productVariant.priceWithTax)}',
                                                      style: CustomTheme
                                                          .paragraphStyle,
                                                    ),
                                                  ],
                                                ),
                                                leading:
                                                    FadeInImage.assetNetwork(
                                                  width: 50,
                                                  height: 50,
                                                  placeholder:
                                                      CommonVariableData
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
                    ))),
      bottomNavigationBar: BottomNavigationComponent(),
    );
  }
}
