import 'package:ecommerce_app/components/bottomNavigationComponent.dart';
import 'package:ecommerce_app/components/drawerComponent.dart';
import 'package:ecommerce_app/controllers/collectionsController.dart';
import 'package:ecommerce_app/controllers/homePageController.dart';
import 'package:ecommerce_app/controllers/productsController.dart';
import 'package:ecommerce_app/controllers/userController.dart';
import 'package:ecommerce_app/controllers/utilityController.dart';
import 'package:ecommerce_app/pages/singleCategoryDetailPage.dart';
import 'package:ecommerce_app/services/util_service.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';

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
            padding: const EdgeInsets.all(8.0),
            child: Form(
                child: Container(
              color: Colors.white,
              child: TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                controller: homePageController.productSearchController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'What are you looking for?',
                ),
                validator: RequiredValidator(
                    errorText: 'Please Enter some name to search'),
              ),
            )),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Shop by Category',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    // all categories
                    Obx(
                      () => collectionsController.isLoading.isTrue
                          ? Center(child: CircularProgressIndicator())
                          : SizedBox(
                              height: 250,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) =>
                                    GestureDetector(
                                  onTap: () {
                                    // print('${collectionsController.collectionItems[index].toJson()}');
                                    collectionsController
                                            .collectionItemSelected.value =
                                        collectionsController
                                            .collectionItems[index]
                                            .toJson();
                                    Get.to(() => SingleCategoryDetailPage());
                                  },
                                  child: Card(
                                    elevation: 0,
                                    child: Container(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Image(
                                            image: NetworkImage(
                                                '${collectionsController.collectionItems[index].featuredAsset?.preview}'),
                                            width: 150,
                                            height: 100,
                                            alignment: Alignment.center,
                                            fit: BoxFit.cover,
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Center(
                                              child: Text(
                                            '${collectionsController.collectionItems[index].name}',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold),
                                          ))
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                itemCount: collectionsController
                                    .collectionItems.length,
                              ),
                            ),
                    ),
                    // all top sellers
                    Text(
                      'Top Sellers',
                      style:
                      TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Obx(
                          () => userController.isLoading.isTrue
                          ? Center(child: CircularProgressIndicator())
                          : SizedBox(
                        height: 250,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) =>
                              GestureDetector(
                                onTap: () {
                                  // print('${collectionsController.collectionItems[index].toJson()}');
                                },
                                child: Card(
                                  elevation: 0,
                                  child: Container(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Image(
                                          image: NetworkImage(
                                              '${userController.topSellers[index].productAsset!.preview}'),
                                          width: 150,
                                          height: 100,
                                          alignment: Alignment.center,
                                          fit: BoxFit.cover,
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Center(
                                            child: Text(
                                              '${userController.topSellers[index].productName}',
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold),
                                            ))
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                          itemCount:
                          userController.topSellers.length,
                        ),
                      ),
                    ),
                    // all products
                    Text(
                      'Products',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Obx(
                      () => productsController.isLoading.isTrue
                          ? Center(child: CircularProgressIndicator())
                          : SizedBox(
                              height: 250,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) =>
                                    GestureDetector(
                                  onTap: () {
                                    // print('${collectionsController.collectionItems[index].toJson()}');
                                  },
                                  child: Card(
                                    elevation: 0,
                                    child: Container(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Image(
                                            image: NetworkImage(
                                                '${productsController.productList[index].featuredAsset?.preview}'),
                                            width: 150,
                                            height: 100,
                                            alignment: Alignment.center,
                                            fit: BoxFit.cover,
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Center(
                                              child: Text(
                                            '${productsController.productList[index].name}',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold),
                                          ))
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                itemCount:
                                    productsController.productList.length,
                              ),
                            ),
                    ),
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
