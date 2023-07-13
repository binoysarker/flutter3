import 'package:encryptor/encryptor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:get/get.dart';
import 'package:recipe.app/components/bottomNavigationComponent.dart';
import 'package:recipe.app/components/drawerComponent.dart';
import 'package:recipe.app/components/loadingSpinnerComponent.dart';
import 'package:recipe.app/components/productListComponent.dart';
import 'package:recipe.app/components/verticalListComponent.dart';
import 'package:recipe.app/controllers/cartController.dart';
import 'package:recipe.app/controllers/collectionsController.dart';
import 'package:recipe.app/controllers/homePageController.dart';
import 'package:recipe.app/controllers/loginPageController.dart';
import 'package:recipe.app/controllers/orderController.dart';
import 'package:recipe.app/controllers/productsController.dart';
import 'package:recipe.app/controllers/userController.dart';
import 'package:recipe.app/controllers/utilityController.dart';
import 'package:recipe.app/services/commonVariables.dart';
import 'package:recipe.app/services/util_service.dart';
import 'package:recipe.app/themes.dart';

import '../components/cartButtonComponent.dart';
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
  final LoginPageController loginPageController =
      Get.find<LoginPageController>();
  final OrderController orderController = Get.find<OrderController>();
  final CollectionsController collectionsController =
      Get.find<CollectionsController>();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      // i have token now but need to check remember me

      // then doing other things
      userController.getActiveCustomer();
      productsController.getProductsList();
      collectionsController.getAllCollections();
      orderController.getActiveOrders();

    });
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() => productsController.isLoading.isTrue
        ? LoadingSpinnerComponent()
        : SafeArea(
            child: WillPopScope(
            onWillPop: () {
              loginPageController.exitDialog(context);
              return Future.value(false);
            },
            child: Scaffold(
              appBar: AppBar(
                title: Obx(() => collectionsController.isLoading.isTrue
                    ? SizedBox()
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Welcome To ${_utilService.appName}',
                            style: CustomTheme.headerStyle2,
                          ),
                          IconButton(
                              onPressed: () {
                                FlutterPhoneDirectCaller.callNumber(
                                    dotenv.env['HELP_CALL'].toString());
                              },
                              icon: Icon(Icons.local_phone)),
                          CartButtonComponent(
                            isLoading: orderController.isLoading.isTrue,
                            totalQuantity: orderController
                                    .activeOrderResponse.value?.totalQuantity ??
                                0,
                          )
                        ],
                      )),
              ),
              drawer: Obx(() => loginPageController.loading.isTrue
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
                    child: Text('Veedu Varai', style: CustomTheme.headerStyle),
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

                          Obx(() => VerticalListComponent(
                                isLoading:
                                    collectionsController.isLoading.isTrue,
                                showSecondLine: false,
                                givenList:
                                    collectionsController.collectionItems,
                                givenTitle: 'Shop By Category',
                                controllerType:
                                    ControllerTypeNames.collection.name,
                                givenHeight: 300,
                              )),
                          // all products
                          Obx(() => ProductListComponent(
                                isLoading: productsController.isLoading.isTrue,
                                productList: productsController.productList,
                              )),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              bottomNavigationBar: BottomNavigationComponent(),
            ),
          )));
  }
}
