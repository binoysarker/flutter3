import 'package:ecommerce_app/components/bottomNavigationComponent.dart';
import 'package:ecommerce_app/components/drawerComponent.dart';
import 'package:ecommerce_app/components/loadingSpinnerComponent.dart';
import 'package:ecommerce_app/providers/homePageProvider.dart';
import 'package:ecommerce_app/providers/userProvider.dart';
import 'package:ecommerce_app/providers/utilityProvider.dart';
import 'package:ecommerce_app/services/graphql_service.dart';
import 'package:ecommerce_app/services/util_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';

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
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      UserProvider userProvider = Provider.of(context, listen: false);
      // userProvider.getActiveCustomer(context);
      userProvider.getCurrentUser(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    final HomePageProvider homePageProvider = context.watch<HomePageProvider>();
    final UserProvider userProvider = context.watch<UserProvider>();

    return context.watch<UtilityProvider>().showLoader
        ? const LoadingSpinnerComponent()
        : Scaffold(
            appBar: AppBar(
              title: Text('Welcome To ${_utilService.appName}'),
              actions: [
                DropdownButton(
                    icon: Icon(Icons.verified_user),
                    items: homePageProvider.dropDownItems
                        .map((item) => DropdownMenuItem<String>(
                              child: Text('$item'),
                              value: homePageProvider
                                  .currentlySelectedDropdownItem,
                            ))
                        .toList(),
                    onChanged: (String? newValue) {
                      homePageProvider.onDropdownItemSelected(newValue!);
                    })
              ],
            ),
            drawer: const DrawerComponent(),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('${userProvider.currentAuthToken}'),
                  ElevatedButton(onPressed: () {
                    userProvider.getCurrentUser(context);
                  }, child: Text('get Data')),
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
