import 'package:adaptive_action_sheet/adaptive_action_sheet.dart';
import 'package:ecommerce_app/components/bottomNavigationComponent.dart';
import 'package:ecommerce_app/controllers/orderController.dart';
import 'package:ecommerce_app/controllers/userController.dart';
import 'package:ecommerce_app/graphqlSection/orders.graphql.dart';
import 'package:ecommerce_app/services/commonVariables.dart';
import 'package:ecommerce_app/services/util_service.dart';
import 'package:ecommerce_app/themes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartDetailPage extends StatefulWidget {
  const CartDetailPage({Key? key}) : super(key: key);

  @override
  State<CartDetailPage> createState() => _CartDetailPageState();
}

class _CartDetailPageState extends State<CartDetailPage> {
  OrderController orderController = Get.find<OrderController>();
  UserController userController = Get.find<UserController>();
  List<String> list = ['Increase Quantity', 'Decrease Quantity', 'Delete Item'];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      orderController.getActiveOrders();
    });
  }

  void onItemSelected(Fragment$Cart$lines item) {
    showAdaptiveActionSheet(
      context: context,
      title: const Text('Title'),
      androidBorderRadius: 30,
      actions: <BottomSheetAction>[
        BottomSheetAction(
            title: const Text('Increase Quantity'), onPressed: (_) {}),
        BottomSheetAction(
            title: const Text('Decrease Quantity'), onPressed: (_) {}),
        BottomSheetAction(title: const Text('Delete Item'), onPressed: (_) {}),
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
          IconButton(onPressed: (){
            Get.defaultDialog(
              title: 'Warning',
              content: Column(
                children: [
                  Text('Are you sure to delete all items')
                ],
              ),

            );
          }, icon: Icon(Icons.remove_shopping_cart_outlined))
        ],
      ),
      body: Obx(() => orderController.activeOrderItemList.isEmpty
          ? Container(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            )
          : Card(
              child: orderController.activeOrderItemList.isEmpty
                  ? Container(
                      child: CircularProgressIndicator(),
                    )
                  : ListView.builder(
                      itemBuilder: (context, index) => Card(
                            child: ListTile(
                              isThreeLine: true,
                              leading: FadeInImage.assetNetwork(
                                width: 50,
                                height: 50,
                                placeholder:
                                    '${CommonVariableData.placeholder}',
                                image:
                                    '${orderController.activeOrderItemList[index].featuredAsset?.preview}',
                                imageErrorBuilder:
                                    (context, error, stackTrace) => Image.asset(
                                        '${CommonVariableData.placeholder}'),
                              ),
                              title: Text(
                                  '${orderController.activeOrderItemList[index].productVariant.name}'),
                              subtitle: Text(
                                'Price with Tax: ${UtilService.getCurrencySymble(userController.currentAuthenticatedUser['orders']['items'][0]['currencyCode'])}${orderController.activeOrderItemList[index].unitPriceWithTax} Quantity: ${orderController.activeOrderItemList[index].quantity}',
                                style: CustomTheme.headerStyle,
                              ),
                              onTap: () {
                                onItemSelected(
                                    orderController.activeOrderItemList[index]);
                              },
                              trailing: Icon(Icons.more_vert),
                            ),
                          ),
                      itemCount: orderController.activeOrderItemList.length),
            )),
      bottomNavigationBar: BottomNavigationComponent(),
    ));
  }
}
