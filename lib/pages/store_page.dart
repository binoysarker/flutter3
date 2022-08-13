import 'package:ecommerce_app/components/bottomNavigationComponent.dart';
import 'package:ecommerce_app/components/drawerComponent.dart';
import 'package:ecommerce_app/components/loadingSpinnerComponent.dart';
import 'package:ecommerce_app/controllers/collectionsController.dart';
import 'package:ecommerce_app/controllers/homePageController.dart';
import 'package:ecommerce_app/controllers/userController.dart';
import 'package:ecommerce_app/controllers/utilityController.dart';
import 'package:ecommerce_app/services/util_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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
  final CollectionsController collectionsController =
      Get.find<CollectionsController>();

  @override
  void initState() {
    super.initState();
    // UserController userController = Get.find<UserController>();
    userController.getActiveCustomer();
    collectionsController.getAllCollections();
    // userController.getCurrentUser(context);
    print('testing');
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return utilityController.showLoader.isTrue
          ? const LoadingSpinnerComponent()
          : Scaffold(
              appBar: AppBar(
                title: Text('Welcome To ${_utilService.appName}'),
              ),
              drawer: const DrawerComponent(),
              body: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
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
                  Expanded(
                      child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //  all collections
                          Text(
                            'Shop by Category',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          Container(
                            height: 200,
                            child: collectionsController.isLoading.isTrue
                                ? CircularProgressIndicator(
                              color: Colors.lightGreen,
                            )
                                : ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index) => Card(
                                      elevation: 0,
                                      child: Container(
                                        child: Column(
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
                                    itemCount: collectionsController
                                        .collectionItems.length,
                                  ),
                          )
                        ],
                      ),
                    ),
                  ))
                ],
              ),
              bottomNavigationBar:
                  BottomNavigationComponent(), // This trailing comma makes auto-formatting nicer for build methods.
            );
    });
  }
}
