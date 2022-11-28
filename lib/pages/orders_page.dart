// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recipe.app/components/bottomNavigationComponent.dart';
import 'package:recipe.app/components/loadingSpinnerComponent.dart';
import 'package:recipe.app/controllers/userController.dart';
import 'package:recipe.app/services/util_service.dart';
import 'package:recipe.app/themes.dart';

import '../components/cartButtonComponent.dart';
import '../controllers/orderController.dart';
import '../services/commonVariables.dart';

class OrdersPage extends StatefulWidget {
  const OrdersPage({Key? key}) : super(key: key);

  @override
  State<OrdersPage> createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {
  final UserController userController = Get.find<UserController>();
  final OrderController orderController = Get.find<OrderController>();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      userController.getActiveCustomer();
    });
  }

  @override
  Widget build(BuildContext context) {
    String checkStatus(String status){
      var currentStat = status;
      if(status == OrderStateEnums.AddingItems.name){
        currentStat = 'In Cart';
      }
      return currentStat;
    }
    return Obx(() => userController.isLoading2.isTrue ? LoadingSpinnerComponent(): Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
                'Orders'),
            CartButtonComponent(
              isLoading: orderController.isLoading.isTrue,
              totalQuantity: orderController
                  .activeOrderResponse.value?.totalQuantity ?? 0,
            )
          ],
        ),
      ),
      body: Card(
        child: Container(
          child: ListView(
            children: userController
                .currentAuthenticatedUser.value!.orders.items
                .map((e) => Card(
                  child: ExpansionTile(
              title: Text('Code: ${e.code}',style: CustomTheme.headerStyle,),
              textColor: Colors.black,
              subtitle: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Status: ${checkStatus(e.state)}',style: CustomTheme.headerStyle,),
                  Text('Total Quantity ${e.totalQuantity}',style: CustomTheme.headerStyle,),
                  Text('Total Price: ${UtilService.getCurrencySymble(e.currencyCode.toString())}${e.totalWithTax}',style: CustomTheme.headerStyle,),
                ],
              ),
              children: e.lines
                    .map((subItem) => ListTile(
                  title:
                  Text('${subItem.productVariant.name}',style: CustomTheme.headerStyle,),
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
                  ),subtitle: Text('Price: ${UtilService.getCurrencySymble(e.currencyCode.toString())}${subItem.productVariant.priceWithTax}'),))
                    .toList(),
            ),
                ))
                .toList(),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationComponent(),
    ));
  }
}
