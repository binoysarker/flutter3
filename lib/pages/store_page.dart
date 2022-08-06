import 'package:ecommerce_app/components/bottomNavigationComponent.dart';
import 'package:ecommerce_app/components/drawerComponent.dart';
import 'package:ecommerce_app/components/loadingSpinnerComponent.dart';
import 'package:ecommerce_app/controllers/homePageController.dart';
import 'package:ecommerce_app/controllers/userController.dart';
import 'package:ecommerce_app/controllers/utilityController.dart';
import 'package:ecommerce_app/services/util_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

import '../services/commonVariables.dart';

class StorePage extends StatefulWidget {
  StorePage({Key? key}) : super(key: key);

  @override
  State<StorePage> createState() => _StorePageState();
}

class _StorePageState extends State<StorePage> {
  UtilService _utilService = UtilService();

  @override
  void initState() {
    super.initState();
    // UserController userController = Get.find<UserController>();
    // userController.getActiveCustomer(context);
    // userController.getCurrentUser(context);
  }

  @override
  Widget build(BuildContext context) {
    final HomePageController homePageController =
        Get.find<HomePageController>();
    final UserController userController = Get.find<UserController>();
    final UtilityController utilityController = Get.find<UtilityController>();

    return utilityController.showLoader.isTrue
        ? const LoadingSpinnerComponent()
        : Scaffold(
            appBar: AppBar(
              title: Text('Welcome To ${_utilService.appName}'),
              actions: [
                DropdownButton(
                    icon: Icon(Icons.verified_user),
                    items: homePageController.dropDownItems
                        .map((item) => DropdownMenuItem<String>(
                              child: Text('$item'),
                              value: homePageController
                                  .currentlySelectedDropdownItem.value,
                            ))
                        .toList(),
                    onChanged: (String? newValue) {
                      homePageController.onDropdownItemSelected(newValue!);
                    })
              ],
            ),
            drawer: const DrawerComponent(),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('${userController.currentAuthToken}'),
                  ElevatedButton(
                      onPressed: () {
                        userController.getCurrentUser(context);
                      },
                      child: Text('get Data')),
                  Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                              onPressed: () async {
                                Navigator.pushNamed(
                                    context, '/${PageRouteNames.login.name}');
                              },
                              child: const Text(
                                'login',
                                style: TextStyle(fontSize: 15),
                              )),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            bottomNavigationBar:
                BottomNavigationComponent(), // This trailing comma makes auto-formatting nicer for build methods.
          );
  }
}
