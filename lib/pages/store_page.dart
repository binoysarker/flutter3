import 'package:ecommerce_app/components/bottomNavigationComponent.dart';
import 'package:ecommerce_app/components/drawerComponent.dart';
import 'package:ecommerce_app/controllers/collectionsController.dart';
import 'package:ecommerce_app/controllers/homePageController.dart';
import 'package:ecommerce_app/controllers/productsController.dart';
import 'package:ecommerce_app/controllers/userController.dart';
import 'package:ecommerce_app/controllers/utilityController.dart';
import 'package:ecommerce_app/services/commonVariables.dart';
import 'package:ecommerce_app/services/util_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../components/horizontalListComponent.dart';

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
  final CollectionsController collectionsController =
      Get.find<CollectionsController>();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      userController.getActiveCustomer();
      userController.getTopSellers();
      collectionsController.getAllCollections();
      productsController.getProductsList();
      print('testing');
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text('Welcome To ${_utilService.appName}'),
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
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Form(
                child: Container(
              color: Colors.white,
              child: TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                controller: homePageController.productSearchController,
                onChanged: (String value) {
                  print('$value');
                  productsController.searchForProducts(value);
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Search for products',
                  suffixIcon: IconButton(
                      onPressed: () {
                        homePageController.productSearchController.text = '';
                        FocusScope.of(context).unfocus();
                        productsController.searchResultList.value = [];
                      },
                      icon: Icon(Icons.close)),
                ),
              ),
            )),
          ),
          Obx(() => Visibility(
                visible: productsController.searchResultList.length > 0,
                child: productsController.searchInProgress.isTrue
                    ? Center(
                        child: CircularProgressIndicator(
                          color: Colors.lightGreen,
                        ),
                      )
                    : Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 150,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5.00)),
                          child: ListView.builder(
                            itemBuilder: (context, index) => ListTile(
                                leading: Image(
                                  height: 50,
                                  width: 50,
                                  image: NetworkImage(
                                      '${productsController.searchResultList[index].productAsset!.preview}'),
                                ),
                                title: Text(
                                    '${productsController.searchResultList[index].productName}')),
                            itemCount:
                                productsController.searchResultList.length,
                          ),
                        ),
                      ),
              )),
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
                    // all top sellers
                    Obx(() => HorizontalListComponent(
                          headerTitle: 'Top Sellers',
                          controllerType: '${ControllerTypeNames.user.name}',
                          givenList: userController.topSellers.toList(),
                          loadingState: userController.isLoading.isTrue,
                        )),

                    // all products
                    Obx(() => HorizontalListComponent(
                          headerTitle: 'Products',
                          controllerType: '${ControllerTypeNames.product.name}',
                          givenList: productsController.productList.toList(),
                          loadingState: productsController.isLoading.isTrue,
                        )),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationComponent(),
    ));
  }
}
