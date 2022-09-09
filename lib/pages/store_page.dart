import 'package:ecommerce_app/components/bottomNavigationComponent.dart';
import 'package:ecommerce_app/components/drawerComponent.dart';
import 'package:ecommerce_app/components/productListComponent.dart';
import 'package:ecommerce_app/controllers/cartController.dart';
import 'package:ecommerce_app/controllers/collectionsController.dart';
import 'package:ecommerce_app/controllers/homePageController.dart';
import 'package:ecommerce_app/controllers/orderController.dart';
import 'package:ecommerce_app/controllers/productsController.dart';
import 'package:ecommerce_app/controllers/userController.dart';
import 'package:ecommerce_app/controllers/utilityController.dart';
import 'package:ecommerce_app/services/commonVariables.dart';
import 'package:ecommerce_app/services/util_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../components/cartButtonComponent.dart';
import '../components/horizontalListComponent.dart';
import '../components/searchComponent.dart';

class StorePage extends StatefulWidget {
  StorePage({Key? key}) : super(key: key);

  @override
  State<StorePage> createState() => _StorePageState();
}

class _StorePageState extends State<StorePage> {
  UtilService _utilService = UtilService();
  final HomePageController homePageController = Get.find<HomePageController>();
  final UserController userController = Get.find<UserController>();
  final UtilityController utilityController = Get.find<UtilityController>();
  final ProductsController productsController = Get.find<ProductsController>();
  final CartController cartController = Get.find<CartController>();
  final OrderController orderController = Get.find<OrderController>();
  final CollectionsController collectionsController =
      Get.find<CollectionsController>();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      userController.getActiveCustomer();
      userController.getTopSellers();
      productsController.getProductsList();
      collectionsController.getAllCollections();
      print('testing');
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Obx(() => collectionsController.isLoading.isTrue
            ? SizedBox()
            : Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
                'Welcome To ${_utilService.appName}'),
            orderController.activeOrderResponse['totalQuantity'] != null
                ? CartButtonComponent(
              isLoading: orderController.isLoading.isTrue,
              totalQuantity: orderController
                  .activeOrderResponse['totalQuantity'],
            )
                : SizedBox()
          ],
        )),
      ),
      drawer: const DrawerComponent(),
      body: ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: [
          Center(
            child: CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage('assets/images/splash.png'),
            ),
          ),
          Center(
            child: Text('Absurdly fresh grocery, delivered',
                style: TextStyle(fontSize: 15)),
          ),
          SearchComponent(
              homePageController: homePageController,
              productsController: productsController),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 0,
                    ),
                    Obx(() => HorizontalListComponent(
                          headerTitle: 'Shop by Category',
                          controllerType:
                              '${ControllerTypeNames.collection.name}',
                          givenList:
                              collectionsController.collectionItems.toList(),
                          loadingState: collectionsController.isLoading.isTrue,
                        )),
                    // all products
                    Obx(() => ProductListComponent(
                      isLoading: productsController.isLoading.isTrue,
                      productList: productsController.productList,
                    )),
                    SizedBox(
                      height: 20,
                    ),
                    // all top sellers
                    Obx(() => HorizontalListComponent(
                          headerTitle: 'Top Sellers',
                          controllerType: '${ControllerTypeNames.user.name}',
                          givenList: userController.topSellers.toList(),
                          loadingState: userController.isLoading.isTrue,
                        )),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationComponent(),
    ));
  }
}
