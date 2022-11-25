import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recipe.app/components/bottomNavigationComponent.dart';
import 'package:recipe.app/components/drawerComponent.dart';
import 'package:recipe.app/components/productListComponent.dart';
import 'package:recipe.app/controllers/cartController.dart';
import 'package:recipe.app/controllers/collectionsController.dart';
import 'package:recipe.app/controllers/homePageController.dart';
import 'package:recipe.app/controllers/orderController.dart';
import 'package:recipe.app/controllers/productsController.dart';
import 'package:recipe.app/controllers/userController.dart';
import 'package:recipe.app/controllers/utilityController.dart';
import 'package:recipe.app/services/commonVariables.dart';
import 'package:recipe.app/services/util_service.dart';
import 'package:recipe.app/themes.dart';

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
      orderController.getActiveOrders();
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
                  Text('Welcome To ${_utilService.appName}'),
                  CartButtonComponent(
                    isLoading: orderController.isLoading.isTrue,
                    totalQuantity: orderController
                            .activeOrderResponse.value?.totalQuantity ??
                        0,
                  )
                ],
              )),
      ),
      drawer: Obx(() => userController.isLoading2.isTrue
          ? Center(
              child: CircularProgressIndicator(
                color: CustomTheme.progressIndicatorColor,
              ),
            )
          : DrawerComponent()),
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
        ],
      ),
      bottomNavigationBar: BottomNavigationComponent(),
    ));
  }
}
